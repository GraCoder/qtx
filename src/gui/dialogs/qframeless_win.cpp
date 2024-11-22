/****************************************************************************
**
** Copyright (C) 2015 The Qt Company Ltd.
** Contact: http://www.qt.io/licensing/
**
** This file is part of the QtGui module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see http://www.qt.io/terms-conditions. For further
** information use the contact form at http://www.qt.io/contact-us.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 2.1 or version 3 as published by the Free
** Software Foundation and appearing in the file LICENSE.LGPLv21 and
** LICENSE.LGPLv3 included in the packaging of this file. Please review the
** following information to ensure the GNU Lesser General Public License
** requirements will be met: https://www.gnu.org/licenses/lgpl.html and
** http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
**
** As a special exception, The Qt Company gives you certain additional
** rights. These rights are described in The Qt Company LGPL Exception
** version 1.1, included in the file LGPL_EXCEPTION.txt in this package.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3.0 as published by the Free Software
** Foundation and appearing in the file LICENSE.GPL included in the
** packaging of this file.  Please review the following information to
** ensure the GNU General Public License version 3.0 requirements will be
** met: http://www.gnu.org/copyleft/gpl.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

#include "qapplication.h"
#include "qframeless.h"
#include "qframeless_win_p.h"
#include "qpaintengine.h"
#include <QtGui/QDesktopWidget>
#include <QtGui/QMouseEvent>
#include <private/qsystemlibrary_p.h>

// Note, these tests are duplicates in qwindowsxpstyle_p.h.
#ifdef Q_CC_GNU
#include <w32api.h>
#if (__W32API_MAJOR_VERSION >= 3 || (__W32API_MAJOR_VERSION == 2 && __W32API_MINOR_VERSION >= 5))
#ifdef _WIN32_WINNT
#undef _WIN32_WINNT
#endif
#define _WIN32_WINNT 0x0501
#include <commctrl.h>
#endif
#endif

#include <uxtheme.h>

QT_BEGIN_NAMESPACE

// DWM related
typedef struct {      // MARGINS
  int cxLeftWidth;    // width of left border that retains its size
  int cxRightWidth;   // width of right border that retains its size
  int cyTopHeight;    // height of top border that retains its size
  int cyBottomHeight; // height of bottom border that retains its size
} FRM_MARGINS;

#define FRM_WM_DWMCOMPOSITIONCHANGED 0x031E

enum FRM_WINDOWTHEMEATTRIBUTETYPE { FRM_WTA_NONCLIENT = 1 };

#define FRM_WTNCA_NODRAWCAPTION 0x00000001
#define FRM_WTNCA_NODRAWICON 0x00000002

#define FRM_DT_CENTER 0x00000001 // DT_CENTER
#define FRM_DT_VCENTER 0x00000004
#define FRM_DT_SINGLELINE 0x00000020
#define FRM_DT_NOPREFIX 0x00000800

#define FRM_TMT_CAPTIONFONT (801)      // TMT_CAPTIONFONT
#define FRM_DTT_COMPOSITED (1UL << 13) // DTT_COMPOSITED
#define FRM_DTT_GLOWSIZE (1UL << 11)   // DTT_GLOWSIZE

#define FRM_WM_NCMOUSELEAVE 674 // WM_NCMOUSELEAVE

#define FRM_WP_CAPTION 1             // WP_CAPTION
#define FRM_CS_ACTIVE 1              // CS_ACTIVE
#define FRM_TMT_FILLCOLORHINT 3821   // TMT_FILLCOLORHINT
#define FRM_TMT_BORDERCOLORHINT 3822 // TMT_BORDERCOLORHINT

#define GET_X_LPARAM(lp) (static_cast<int>(static_cast<short>(LOWORD(lp))))
#define GET_Y_LPARAM(lp) (static_cast<int>(static_cast<short>(HIWORD(lp))))
#define LPARAM_WRAP(x, y) (static_cast<LPARAM>(y) << 16 | static_cast<WORD>(x))
#define RECT_WIDTH(rect) ((rect).right - (rect).left)
#define RECT_HEIGHT(rect) ((rect).bottom - (rect).top)

enum _DWMWINDOWATTRIBUTE {
  // [set] BOOL, Allows the use of host backdrop brushes for the window.
  _DWMWA_USE_HOSTBACKDROPBRUSH = 17,

  // Undocumented, the same with DWMWA_USE_IMMERSIVE_DARK_MODE, but available on systems
  // before Win10 20H1.
  _DWMWA_USE_IMMERSIVE_DARK_MODE_BEFORE_20H1 = 19,

  // [set] BOOL, Allows a window to either use the accent color, or dark, according to the
  // user Color Mode preferences.
  _DWMWA_USE_IMMERSIVE_DARK_MODE = 20,

  // [set] WINDOW_CORNER_PREFERENCE, Controls the policy that rounds top-level window corners
  _DWMWA_WINDOW_CORNER_PREFERENCE = 33,

  // [get] UINT, width of the visible border around a thick frame window
  _DWMWA_VISIBLE_FRAME_BORDER_THICKNESS = 37,

  // [get, set] SYSTEMBACKDROP_TYPE, Controls the system-drawn backdrop material of a window,
  // including behind the non-client area.
  _DWMWA_SYSTEMBACKDROP_TYPE = 38,

  // Undocumented, use this value to enable Mica material on Win11 21H2. You should use
  // DWMWA_SYSTEMBACKDROP_TYPE instead on Win11 22H2 and newer.
  _DWMWA_MICA_EFFECT = 1029
};


typedef BOOL(WINAPI* PtrDwmDefWindowProc)(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam, LRESULT* plResult);
typedef HRESULT(WINAPI* PtrDwmIsCompositionEnabled)(BOOL* pfEnabled);
typedef HRESULT(WINAPI* PtrDwmExtendFrameIntoClientArea)(HWND hwnd, const FRM_MARGINS* pMarInset);
typedef HRESULT(WINAPI* PtrDwmGetWindowAttribute)(HWND hwnd, DWORD dwAttribute, LPCVOID pvAttribute, DWORD cbAttribute);
typedef HRESULT(WINAPI* PtrDwmSetWindowAttribute)(HWND hwnd, DWORD dwAttribute, LPCVOID pvAttribute, DWORD cbAttribute);
typedef HRESULT(WINAPI* PtrSetWindowThemeAttribute)(HWND hwnd, enum FRM_WINDOWTHEMEATTRIBUTETYPE eAttribute, PVOID pvAttribute, DWORD cbAttribute);

static PtrDwmDefWindowProc pDwmDefWindowProc = 0;
static PtrDwmIsCompositionEnabled pDwmIsCompositionEnabled = 0;
static PtrDwmExtendFrameIntoClientArea pDwmExtendFrameIntoClientArea = 0;
static PtrDwmGetWindowAttribute pDwmGetWindowAttribute = 0;
static PtrDwmSetWindowAttribute pDwmSetWindowAttribute = 0;
static PtrSetWindowThemeAttribute pSetWindowThemeAttribute = 0;

// Theme related
typedef bool(WINAPI* PtrIsAppThemed)();
typedef bool(WINAPI* PtrIsThemeActive)();
typedef HANDLE(WINAPI* PtrOpenThemeData)(HWND hwnd, LPCWSTR pszClassList);
typedef HRESULT(WINAPI* PtrCloseThemeData)(HANDLE hTheme);
typedef HRESULT(WINAPI* PtrGetThemeSysFont)(HANDLE hTheme, int iFontId, LOGFONTW* plf);
typedef HRESULT(WINAPI* PtrDrawThemeBackground)(HANDLE hTheme, HDC hdc, int iPartId, int iStateId, const RECT* pRect, OPTIONAL const RECT* pClipRect);
typedef HRESULT(WINAPI* PtrGetThemePartSize)(HANDLE hTheme, HDC hdc, int iPartId, int iStateId, OPTIONAL RECT* prc, enum THEMESIZE eSize, OUT SIZE* psz);
typedef HRESULT(WINAPI* PtrGetThemeColor)(HANDLE hTheme, int iPartId, int iStateId, int iPropId, OUT COLORREF* pColor);

static PtrIsAppThemed pIsAppThemed = 0;
static PtrIsThemeActive pIsThemeActive = 0;
static PtrOpenThemeData pOpenThemeData = 0;
static PtrCloseThemeData pCloseThemeData = 0;
static PtrGetThemeSysFont pGetThemeSysFont = 0;
static PtrDrawThemeBackground pDrawThemeBackground = 0;
static PtrGetThemePartSize pGetThemePartSize = 0;
static PtrGetThemeColor pGetThemeColor = 0;

static constexpr const quint8 autoHideTaskBarThickness = 2;

const QColor activeLight(110, 110, 110, 255);
const QColor activeDark(51, 51, 51, 255);
const QColor inactiveLight(167, 167, 167, 255);
const QColor inactiveDark(81, 81, 81, 255);

static inline constexpr bool isNonClientMessage(const UINT message) 
{
  if (((message >= WM_NCCREATE) && (message <= WM_NCACTIVATE)) ||
    ((message >= WM_NCMOUSEMOVE) && (message <= WM_NCMBUTTONDBLCLK)) ||
    ((message >= WM_NCXBUTTONDOWN) && (message <= WM_NCXBUTTONDBLCLK))
#if (WINVER >= _WIN32_WINNT_WIN8)
    || ((message >= WM_NCPOINTERUPDATE) && (message <= WM_NCPOINTERUP))
#endif
    || ((message == WM_NCMOUSEHOVER) || (message == WM_NCMOUSELEAVE))) {
    return true;
  }
  else {
    return false;
  }
}

static inline quint32 getWindowFrameBorderThickness(HWND hwnd)
{
  UINT result = 0;
  if (SUCCEEDED(pDwmGetWindowAttribute(hwnd, _DWMWA_VISIBLE_FRAME_BORDER_THICKNESS, &result, sizeof(result))))
    return result;

  return GetSystemMetricsForDpi(SM_CXBORDER, GetDpiForWindow(hwnd));
}

static inline quint32 getResizeBorderThickness(HWND hwnd)
{
  const quint32 dpi = GetDpiForWindow(hwnd);
  //return GetSystemMetricsForDpi(SM_CXSIZEFRAME, dpi) + GetSystemMetricsForDpi(SM_CXPADDEDBORDER, dpi);
  return GetSystemMetricsForDpi(SM_CXSIZEFRAME, dpi);
}

static inline quint32 getTitleBarHeight(HWND hwnd)
{
  const quint32 dpi = GetDpiForWindow(hwnd);
  return GetSystemMetricsForDpi(SM_CYCAPTION, dpi) + GetSystemMetricsForDpi(SM_CXSIZEFRAME, dpi) +
    GetSystemMetricsForDpi(SM_CXPADDEDBORDER, dpi);
}

#if 0

static WNDPROC WindowProc = nullptr;
static QHash<HWND, QFramelessPrivate*> WinProcHash;

extern "C" LRESULT QT_WIN_CALLBACK HookedWndProc(HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam)
{
  Q_ASSERT(hwnd);
  if (!hwnd) {
    return FALSE;
  }

  auto agent = WinProcHash.value(hwnd);
  if (!agent) {
    return ::DefWindowProcW(hwnd, message, wParam, lParam);
  }

  // Since Qt does the necessary processing of the WM_NCCALCSIZE message, we need to
  // forward it right away and process it in our native event filter.
  if (message == WM_NCCALCSIZE) {
    return ::CallWindowProcW(WindowProc, hwnd, message, wParam, lParam);
  }

  // LRESULT result;
  // if (agent->windowProc(hwnd, message, wParam, lParam, &result)) {
  //   std::ignore = forwardFilteredEvent(agent->window(), hwnd, message, wParam, lParam, &result);
  //   return result;
  // }

  // Continue dispatching.
  return ::CallWindowProcW(WindowProc, hwnd, message, wParam, lParam);
}

#endif

static inline void requestMouseLeaveMessage(HWND hWnd, bool nonClient)
{
  TRACKMOUSEEVENT tme{};
  tme.cbSize = sizeof(tme);
  tme.dwFlags = TME_LEAVE;
  if (nonClient) {
    tme.dwFlags |= TME_NONCLIENT;
  }
  tme.hwndTrack = hWnd;
  tme.dwHoverTime = HOVER_DEFAULT;
  ::TrackMouseEvent(&tme);
}

static constexpr const struct {
  const WPARAM wParam = MAKEWPARAM(44500, 61897);
  const LPARAM lParam = MAKELPARAM(62662, 44982); // Not used. Reserve for future use.
} MessageTag;

static inline quint64 getKeyState()
{
  quint64 result = 0;
  const auto& get = [](const int virtualKey) -> bool {
    return (::GetAsyncKeyState(virtualKey) < 0);
    };
  const bool buttonSwapped = ::GetSystemMetrics(SM_SWAPBUTTON);
  if (get(VK_LBUTTON)) {
    result |= (buttonSwapped ? MK_RBUTTON : MK_LBUTTON);
  }
  if (get(VK_RBUTTON)) {
    result |= (buttonSwapped ? MK_LBUTTON : MK_RBUTTON);
  }
  if (get(VK_SHIFT)) {
    result |= MK_SHIFT;
  }
  if (get(VK_CONTROL)) {
    result |= MK_CONTROL;
  }
  if (get(VK_MBUTTON)) {
    result |= MK_MBUTTON;
  }
  if (get(VK_XBUTTON1)) {
    result |= MK_XBUTTON1;
  }
  if (get(VK_XBUTTON2)) {
    result |= MK_XBUTTON2;
  }
  return result;
}

static void emulateClientAreaMessage(HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam, UINT overrideMsg = -1)
{
  UINT msg = overrideMsg == -1 ? message : overrideMsg;
  const auto wParamNew = [msg, wParam]()->WPARAM {
    if (msg == WM_NCMOUSELEAVE)
      return MessageTag.wParam;

    const quint64 keyState = getKeyState();
    if ((msg >= WM_NCXBUTTONDOWN) && (msg <= WM_NCXBUTTONDBLCLK)) {
      const auto xButtonMask = GET_XBUTTON_WPARAM(wParam);
      return MAKEWPARAM(keyState, xButtonMask);
    }
    return keyState;
    }();
  const auto lParamNew = [hwnd, lParam, msg]() -> LPARAM {
    if (msg == WM_NCMOUSELEAVE) {
      // lParam is always ignored in mouse leave messages.
      return 0;
    }
    const auto screenPos = POINT{ GET_X_LPARAM(lParam), GET_Y_LPARAM(lParam) };
    POINT clientPos = screenPos;
    ::ScreenToClient(hwnd, &clientPos);
    return MAKELPARAM(clientPos.x, clientPos.y);
    }();
#if 0
#  define SEND_MESSAGE ::SendMessageW
#else
#  define SEND_MESSAGE ::PostMessageW
#endif
  switch (msg) {
  case WM_NCHITTEST: // Treat hit test messages as mouse move events.
  case WM_NCMOUSEMOVE:
    SEND_MESSAGE(hwnd, WM_MOUSEMOVE, wParamNew, lParamNew);
    break;
  case WM_NCLBUTTONDOWN:
    SEND_MESSAGE(hwnd, WM_LBUTTONDOWN, wParamNew, lParamNew);
    break;
  case WM_NCLBUTTONUP:
    SEND_MESSAGE(hwnd, WM_LBUTTONUP, wParamNew, lParamNew);
    break;
  case WM_NCLBUTTONDBLCLK:
    SEND_MESSAGE(hwnd, WM_LBUTTONDBLCLK, wParamNew, lParamNew);
    break;
  case WM_NCRBUTTONDOWN:
    SEND_MESSAGE(hwnd, WM_RBUTTONDOWN, wParamNew, lParamNew);
    break;
  case WM_NCRBUTTONUP:
    SEND_MESSAGE(hwnd, WM_RBUTTONUP, wParamNew, lParamNew);
    break;
  case WM_NCRBUTTONDBLCLK:
    SEND_MESSAGE(hwnd, WM_RBUTTONDBLCLK, wParamNew, lParamNew);
    break;
  case WM_NCMBUTTONDOWN:
    SEND_MESSAGE(hwnd, WM_MBUTTONDOWN, wParamNew, lParamNew);
    break;
  case WM_NCMBUTTONUP:
    SEND_MESSAGE(hwnd, WM_MBUTTONUP, wParamNew, lParamNew);
    break;
  case WM_NCMBUTTONDBLCLK:
    SEND_MESSAGE(hwnd, WM_MBUTTONDBLCLK, wParamNew, lParamNew);
    break;
  case WM_NCXBUTTONDOWN:
    SEND_MESSAGE(hwnd, WM_XBUTTONDOWN, wParamNew, lParamNew);
    break;
  case WM_NCXBUTTONUP:
    SEND_MESSAGE(hwnd, WM_XBUTTONUP, wParamNew, lParamNew);
    break;
  case WM_NCXBUTTONDBLCLK:
    SEND_MESSAGE(hwnd, WM_XBUTTONDBLCLK, wParamNew, lParamNew);
    break;
#if 0 // ### TODO: How to handle touch events?
  case WM_NCPOINTERUPDATE:
  case WM_NCPOINTERDOWN:
  case WM_NCPOINTERUP:
    break;
#endif
  case WM_NCMOUSEHOVER:
    SEND_MESSAGE(hwnd, WM_MOUSEHOVER, wParamNew, lParamNew);
    break;
  case WM_NCMOUSELEAVE:
    SEND_MESSAGE(hwnd, WM_MOUSELEAVE, wParamNew, lParamNew);
    break;
  default:
    // unreachable
    break;
  }

#undef SEND_MESSAGE
}

static inline QFramelessPrivate::WindowPart hitWindowPart(int hitTestResult)
{
  switch (hitTestResult) {
  case HTCLIENT:
    return QFramelessPrivate::ClientArea;
  case HTCAPTION:
    return QFramelessPrivate::TitleBar;
  case HTSYSMENU:
  case HTHELP:
  case HTREDUCE:
  case HTZOOM:
  case HTCLOSE:
    return QFramelessPrivate::ChromeButton;
  case HTLEFT:
  case HTRIGHT:
  case HTTOP:
  case HTTOPLEFT:
  case HTTOPRIGHT:
  case HTBOTTOM:
  case HTBOTTOMLEFT:
  case HTBOTTOMRIGHT:
    return QFramelessPrivate::ResizeBorder;
  case HTBORDER:
    return QFramelessPrivate::FixedBorder;
  default:
    break;
  }
  return QFramelessPrivate::Outside;
}

static inline bool isMaximized(HWND hwnd) 
{
  return ::IsZoomed(hwnd);
}

static inline bool isMinimized(HWND hwnd) 
{
  return ::IsIconic(hwnd);
}

static inline MONITORINFOEXW getMonitorForWindow(HWND hwnd)
{
  // Use "MONITOR_DEFAULTTONEAREST" here so that we can still get the correct
  // monitor even if the window is minimized.
  HMONITOR monitor = ::MonitorFromWindow(hwnd, MONITOR_DEFAULTTONEAREST);
  MONITORINFOEXW monitorInfo{};
  monitorInfo.cbSize = sizeof(monitorInfo);
  ::GetMonitorInfoW(monitor, &monitorInfo);
  return monitorInfo;
}

static inline bool isFullScreen(HWND hwnd) 
{
  RECT winrt{};
  ::GetWindowRect(hwnd, &winrt);
  // Compare to the full area of the screen, not the work area.
  RECT &mrt = getMonitorForWindow(hwnd).rcMonitor;
  return winrt.left == mrt.left && winrt.right == mrt.right && winrt.bottom == mrt.bottom && winrt.top == mrt.top;
}

QFramelessPrivate::QFramelessPrivate()
{
  resolveSymbols();

  // Handle diff between Windows 7 and Vista
  //iconSpacing = QStyleHelper::dpiScaled(7);
  //textSpacing = QSysInfo::WindowsVersion >= QSysInfo::WV_WINDOWS7 ? iconSpacing : QStyleHelper::dpiScaled(20);

  //HWND hwnd = (HWND)frameless->winId();
  //if (!WindowProc)
  //  WindowProc = reinterpret_cast<WNDPROC>(::GetWindowLongPtrW(hwnd, GWLP_WNDPROC));
  //SetWindowLongPtr(hwnd, GWLP_WNDPROC, reinterpret_cast<LONG_PTR>(HookedWndProc));
}

QFramelessPrivate::~QFramelessPrivate()
{
}

bool QFramelessPrivate::initFrame()
{
  Q_Q(QFrameless);

  WId hid = data.winid;

  FRM_MARGINS mar = { 0, 0, 1, 0 };
  HRESULT hr = pDwmExtendFrameIntoClientArea(hid, &mar);

  if (pDwmSetWindowAttribute)
  {
    BOOL enable = true;
    pDwmSetWindowAttribute(hid, _DWMWA_USE_IMMERSIVE_DARK_MODE, &enable, sizeof(enable));
    pDwmSetWindowAttribute(hid, _DWMWA_USE_IMMERSIVE_DARK_MODE_BEFORE_20H1, &enable, sizeof(enable));
  }

  int h = getTitleBarHeight(hid);
  topData()->ncheight = h;
  if (_titleBar)
    _titleBar->setFixedHeight(h);

  return SUCCEEDED(hr);
}

bool QFramelessPrivate::handleWinEvent(MSG* msg, long* result)
{
  switch (msg->message) {
  case WM_MOUSELEAVE:
  {
    if (msg->wParam != MessageTag.wParam)
    {
      DWORD dwScreenPos = ::GetMessagePos();
      POINT screenPoint{ GET_X_LPARAM(dwScreenPos), GET_Y_LPARAM(dwScreenPos) };
      ::ScreenToClient(msg->hwnd, &screenPoint);
      if (_titleBar && _titleBar->inButtons(QPoint(screenPoint.x, screenPoint.y))) {
        // We must record whether the last WM_MOUSELEAVE was filtered, because if
        // Qt does not receive this message it will not call TrackMouseEvent()
        // again, resulting in the client area not responding to any mouse event.
        *result = FALSE;
        _mouse_leave_block = true;
        return true;
      }
    }
    _mouse_leave_block = false;
    break;
  }
  case WM_MOUSEMOVE: {
    if (_mouse_leave_block && _hit_result != ChromeButton)
    {
      _mouse_leave_block = false;
      requestMouseLeaveMessage(msg->hwnd, false);
    }
    break;
  }
  case WM_NCHITTEST: {
    auto ret = nchitest(msg, result);
    _hit_result = hitWindowPart(*result);
    return ret;
  }
  case WM_NCCALCSIZE: {
    return nccalcsize(msg, result);
  }
  case WM_NCPAINT: {
    Q_Q(QFrameless);
    q->update();
    break;
  }
  case WM_NCMOUSEMOVE:
  case WM_NCLBUTTONDOWN:
  case WM_NCLBUTTONUP:
  case WM_NCLBUTTONDBLCLK:
  case WM_NCRBUTTONDOWN:
  case WM_NCRBUTTONUP:
  case WM_NCRBUTTONDBLCLK:
  case WM_NCMBUTTONDOWN:
  case WM_NCMBUTTONUP:
  case WM_NCMBUTTONDBLCLK:
  case WM_NCXBUTTONDOWN:
  case WM_NCXBUTTONUP:
  case WM_NCXBUTTONDBLCLK:
#if 0 // ### TODO: How to handle touch events?
  case WM_NCPOINTERUPDATE:
  case WM_NCPOINTERDOWN:
  case WM_NCPOINTERUP:
#endif
  case WM_NCMOUSEHOVER: {
    return ncmouse(msg, result);
  }
  case WM_NCMOUSELEAVE: {
    return ncmouse_leave(msg, result);
  }
  case WM_SIZE:{
    break;
  }
  default: {
    break;
  }
  }
  return false;
}

//WPARAM &w = msg->wParam;
//if (w == SIZE_RESTORED || w == SIZE_MAXIMIZED) {
//  POINT pt; if (::GetCursorPos(&pt)) {
//    LPARAM lParam = LPARAM_WRAP(pt.x, pt.y);
//    ::ScreenToClient(msg->hwnd, &pt);
//    RECT winrt{}; ::GetClientRect(msg->hwnd, &winrt);
//    if (pt.x > winrt.left && pt.x < winrt.right && pt.y > winrt.top && pt.y < winrt.bottom) {
//      PostMessage(msg->hwnd, WM_MOUSEMOVE, 0, lParam); break;
//    }
//    ::GetWindowRect(msg->hwnd, &winrt);
//    if (pt.x > winrt.left && pt.x < winrt.right && pt.y > winrt.top && pt.y < winrt.bottom) {
//      PostMessage(msg->hwnd, WM_NCMOUSEMOVE, 0, LPARAM_WRAP(pt.x, pt.y)); break;
//    }
//    PostMessage(msg->hwnd, WM_MOUSELEAVE, 0, 0);
//  }
//}
//break;

void QFramelessPrivate::paintEvent(QPaintEvent* event)
{
  Q_Q(QFrameless);

  Q_UNUSED(event);

  HWND hwnd = (HWND)q->winId();

  QPainter painter(q);

  int thick = getWindowFrameBorderThickness(hwnd);
  QPen pen; pen.setWidth(thick * 2);
  pen.setColor(Qt::black);

  const bool dark = true;
  if (q->isActiveWindow()) {
    pen.setColor(dark ? activeDark : activeLight);
  }
  else {
    pen.setColor(inactiveLight);
    //pen.setColor(dark ? inactiveDark : inactiveLight);
  }

  painter.setRenderHint(QPainter::Antialiasing);

  painter.setPen(pen);
  painter.drawLine(QLine{ QPoint{0, 0}, QPoint{q->width(), 0} });
}

void QFramelessPrivate::setTitleBar(QFramelessBar* titleBar)
{
  Q_Q(QFrameless);

  _titleBar = titleBar;
}

bool QFramelessPrivate::eventFilter(QObject* obj, QEvent* event)
{
  Q_Q(QFrameless);

  if (obj == q) {
  }
  else if (obj == _titleBar) {
    if (event->type() == QEvent::Enter)
      return false;
  }
  return false;
}

bool QFramelessPrivate::isCompositionEnabled()
{
  HRESULT hr;
  BOOL bEnabled;

  hr = pDwmIsCompositionEnabled(&bEnabled);
  return (SUCCEEDED(hr) && bEnabled);
}

bool QFramelessPrivate::isThemeActive()
{
  return pIsThemeActive();
}

QPoint QFramelessPrivate::localPoint(MSG* msg)
{
  POINT nativeGlobalPos{ GET_X_LPARAM(msg->lParam), GET_Y_LPARAM(msg->lParam) };
  POINT nativeLocalPos = nativeGlobalPos;
  ::ScreenToClient(msg->hwnd, &nativeLocalPos);
  QPoint qtScenePos = QPoint(int(nativeLocalPos.x), int(nativeLocalPos.y));
  return qtScenePos;
}

#if !defined(_MSC_VER) || _MSC_VER < 1700
static inline int getWindowBottomMargin()
{
  return GetSystemMetrics(SM_CYSIZEFRAME);
}
#else  // !_MSC_VER || _MSC_VER < 1700
// QTBUG-36192, GetSystemMetrics(SM_CYSIZEFRAME) returns bogus values
// for MSVC2012 which leads to the custom margin having no effect since
// that only works when removing the entire margin.
static inline int getWindowBottomMargin()
{
  RECT rect = { 0, 0, 0, 0 };
  AdjustWindowRectEx(&rect, WS_POPUP | WS_CLIPSIBLINGS | WS_CLIPCHILDREN | WS_THICKFRAME | WS_DLGFRAME, FALSE, 0);
  return qAbs(rect.bottom);
}
#endif // _MSC_VER >= 1700

int QFramelessPrivate::frameSize()
{
  int sz = getWindowBottomMargin();
  return sz;
}

int QFramelessPrivate::captionSize()
{
  int sz = GetSystemMetrics(SM_CYCAPTION);
  return sz;
}

bool QFramelessPrivate::resolveSymbols()
{
  static bool tried = false;
  if (!tried) {
    QSystemLibrary dwmLib(L"dwmapi");
    pDwmIsCompositionEnabled = (PtrDwmIsCompositionEnabled)dwmLib.resolve("DwmIsCompositionEnabled");
    if (pDwmIsCompositionEnabled) {
      pDwmDefWindowProc = (PtrDwmDefWindowProc)dwmLib.resolve("DwmDefWindowProc");
      pDwmExtendFrameIntoClientArea = (PtrDwmExtendFrameIntoClientArea)dwmLib.resolve("DwmExtendFrameIntoClientArea");
      pDwmSetWindowAttribute = (PtrDwmSetWindowAttribute)dwmLib.resolve("DwmSetWindowAttribute");
      pDwmGetWindowAttribute = (PtrDwmGetWindowAttribute)dwmLib.resolve("DwmGetWindowAttribute");
    }
    QSystemLibrary themeLib(L"uxtheme");
    pIsAppThemed = (PtrIsAppThemed)themeLib.resolve("IsAppThemed");
    if (pIsAppThemed) {
      pDrawThemeBackground = (PtrDrawThemeBackground)themeLib.resolve("DrawThemeBackground");
      pGetThemePartSize = (PtrGetThemePartSize)themeLib.resolve("GetThemePartSize");
      pGetThemeColor = (PtrGetThemeColor)themeLib.resolve("GetThemeColor");
      pIsThemeActive = (PtrIsThemeActive)themeLib.resolve("IsThemeActive");
      pOpenThemeData = (PtrOpenThemeData)themeLib.resolve("OpenThemeData");
      pCloseThemeData = (PtrCloseThemeData)themeLib.resolve("CloseThemeData");
      pGetThemeSysFont = (PtrGetThemeSysFont)themeLib.resolve("GetThemeSysFont");
      pSetWindowThemeAttribute = (PtrSetWindowThemeAttribute)themeLib.resolve("SetWindowThemeAttribute");
    }
    tried = true;
  }

  return (pDwmIsCompositionEnabled != 0 && pDwmDefWindowProc != 0 && pDwmExtendFrameIntoClientArea != 0 && pIsAppThemed != 0 &&
    pDrawThemeBackground != 0 && pGetThemePartSize != 0 && pGetThemeColor != 0 && pIsThemeActive != 0 &&
    pOpenThemeData != 0 && pCloseThemeData != 0 && pGetThemeSysFont != 0 && pSetWindowThemeAttribute != 0);
}

bool QFramelessPrivate::inTitleBar(HWND hwnd, const QPoint& pt)
{
  RECT clientRect{ 0, 0, 0, 0 };
  ::GetClientRect(hwnd, &clientRect);
  auto clientWidth = RECT_WIDTH(clientRect);
  //auto clientHeight = RECT_HEIGHT(clientRect);

  QRect rt(0, 0, clientWidth, _titleBar->height());
  if (!rt.contains(pt))
    return false;

  return true;
}

bool QFramelessPrivate::nccalcsize(MSG* msg, long* result)
{
  const auto clientRect = msg->wParam ? &(reinterpret_cast<LPNCCALCSIZE_PARAMS>(msg->lParam))->rgrc[0] : reinterpret_cast<LPRECT>(msg->lParam);
  const LONG originalTop = clientRect->top;
  const LRESULT originalResult = ::DefWindowProc(msg->hwnd, WM_NCCALCSIZE, msg->wParam, msg->lParam);
  if (originalResult != 0) {
    *result = originalResult;
    return true;
  }

  //updateFrameStrut();
  //auto& fs = topData()->frameStrut;
  //fs.setY(fs.y() + originalTop - clientRect->top);

  clientRect->top = originalTop;
  *result = FALSE;

  const bool max = isMaximized(msg->hwnd);
  const bool full = isFullScreen(msg->hwnd);
  if (max) {
    const quint32 frameSize = getResizeBorderThickness(msg->hwnd);
    clientRect->top += frameSize;
  }

  if (max /*|| full*/) {
    APPBARDATA abd{};
    abd.cbSize = sizeof(abd);
    const UINT taskbarState = ::SHAppBarMessage(ABM_GETSTATE, &abd);
    // First, check if we have an auto-hide taskbar at all:
    if (taskbarState & ABS_AUTOHIDE) {
      bool top = false, bottom = false, left = false, right = false;
      if (true) {
        const RECT monitorRect = getMonitorForWindow(msg->hwnd).rcMonitor;
        // This helper can be used to determine if there's an
        // auto-hide taskbar on the given edge of the monitor
        // we're currently on.
        const auto hasAutohideTaskbar = [monitorRect](const UINT edge) -> bool {
          APPBARDATA abd2{};
          abd2.cbSize = sizeof(abd2);
          abd2.uEdge = edge;
          abd2.rc = monitorRect;
          const auto hTaskbar =
            reinterpret_cast<HWND>(::SHAppBarMessage(ABM_GETAUTOHIDEBAREX, &abd2));
          return (hTaskbar != nullptr);
          };
        top = hasAutohideTaskbar(ABE_TOP);
        bottom = hasAutohideTaskbar(ABE_BOTTOM);
        left = hasAutohideTaskbar(ABE_LEFT);
        right = hasAutohideTaskbar(ABE_RIGHT);
      }
      // If there's a taskbar on any side of the monitor, reduce
      // our size a little bit on that edge.
      // Note to future code archeologists:
      // This doesn't seem to work for fullscreen on the primary
      // display. However, testing a bunch of other apps with
      // fullscreen modes and an auto-hiding taskbar has
      // shown that _none_ of them reveal the taskbar from
      // fullscreen mode. This includes Edge, Firefox, Chrome,
      // Sublime Text, PowerPoint - none seemed to support this.
      // This does however work fine for maximized.
      if (top) {
        // Peculiarly, when we're fullscreen,
        clientRect->top += autoHideTaskBarThickness;
      }
      else if (bottom) {
        clientRect->bottom -= autoHideTaskBarThickness;
      }
      else if (left) {
        clientRect->left += autoHideTaskBarThickness;
      }
      else if (right) {
        clientRect->right -= autoHideTaskBarThickness;
      }
    }
  }
  return true;
}

bool QFramelessPrivate::nchitest(MSG* msg, long* result)
{
  LRESULT lResult = 0;
  if (pDwmDefWindowProc(msg->hwnd, msg->message, msg->wParam, msg->lParam, &lResult)) {
    *result = lResult;
    return true;
  }

  *result = DefWindowProc(msg->hwnd, WM_NCHITTEST, msg->wParam, msg->lParam);
  if (*result != HTCLIENT) {
    return true;
  }

  QPoint localPt = localPoint(msg);
  if (localPt.y() <= getResizeBorderThickness(msg->hwnd)) {
    *result = HTTOP;
    return true;
  }

  if (_titleBar && inTitleBar(msg->hwnd, localPt)) {
    *result = _titleBar->titlePart(localPt);
    return true;
  }

  return true;
}

bool QFramelessPrivate::ncmouse(MSG* message, long* result)
{
  HWND& hwnd = message->hwnd;
  UINT& msg = message->message;
  WPARAM& wp = message->wParam;
  LPARAM& lp = message->lParam;

  if (msg == WM_NCMOUSEMOVE) {
    if (_hit_result != WindowPart::ChromeButton) {
      if (_mouse_leave_block)
        emulateClientAreaMessage(hwnd, msg, wp, lp, WM_NCMOUSELEAVE);
    }
  }

  if (_hit_result == WindowPart::ChromeButton) {
    if (msg == WM_NCMOUSEMOVE) {
      *result = ::DefWindowProc(hwnd, WM_NCMOUSEMOVE, wp, lp);
      emulateClientAreaMessage(hwnd, msg, wp, lp);
      return true;
    }

    *result = (((msg >= WM_NCXBUTTONDOWN) && (msg <= WM_NCXBUTTONDBLCLK)) ? TRUE : FALSE);
    emulateClientAreaMessage(hwnd, msg, wp, lp);
    return true;
  }

  return false;
}

bool QFramelessPrivate::ncmouse_leave(MSG* message, long* result)
{
  HWND& hwnd = message->hwnd;
  UINT& msg = message->message;
  WPARAM& wp = message->wParam;
  LPARAM& lp = message->lParam;
  if (_hit_result == WindowPart::ChromeButton) {
    if (_mouse_leave_block) {
      _mouse_leave_block = false;
      requestMouseLeaveMessage(hwnd, false);
    }
  }
  else if (_hit_result == WindowPart::ClientArea) {
    // if(_mouse_leave_block)
    emulateClientAreaMessage(hwnd, msg, wp, lp, WM_MOUSELEAVE);
    return true;
  }
  return false;
}

QT_END_NAMESPACE
