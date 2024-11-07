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

#include "qframeless.h"

#include "qabstractspinbox.h"
#include "qalgorithms.h"
#include "qapplication.h"
#include "qboxlayout.h"
#include "qlayoutitem.h"
#include "qdesktopwidget.h"
#include "qevent.h"
#include "qframe.h"
#include "qlabel.h"
#include "qlineedit.h"
#include "qpainter.h"
#include "qpushbutton.h"
#include "qset.h"
#include "qstyle.h"
#include "qvarlengtharray.h"
#if defined(Q_WS_MAC)
#include "private/qt_mac_p.h"
#include "qlibrary.h"
#elif !defined(QT_NO_STYLE_WINDOWSVISTA)
#include "qframeless_win_p.h"
#include "qtimer.h"
#endif

#include "private/qdialog_p.h"
#include <qdebug.h>

#include <string.h>     // for memset()

#ifdef QT_SOFTKEYS_ENABLED
#include "qaction.h"
#endif

QT_BEGIN_NAMESPACE

class QFramelessPrivate : public QDialogPrivate
{
  Q_DECLARE_PUBLIC(QFrameless)

public:

  inline QFramelessPrivate()
    : vistaInitPending(false)
    , vistaState(QVistaHelper::Dirty)
    , vistaStateChanged(false)
    , inHandleAeroStyleChange(false)
  {
#if !defined(QT_NO_STYLE_WINDOWSVISTA)
    if (QSysInfo::WindowsVersion >= QSysInfo::WV_VISTA && (QSysInfo::WindowsVersion & QSysInfo::WV_NT_based))
      vistaInitPending = true;
#endif
  }

  void init();
  bool isVistaThemeEnabled(QVistaHelper::VistaState state) const;
  void handleAeroStyleChange();
  bool isVistaThemeEnabled() const;

  QVistaHelper* vistaHelper;
  bool vistaInitPending;
  QVistaHelper::VistaState vistaState;
  bool vistaStateChanged;
  bool inHandleAeroStyleChange;
};

void QFramelessPrivate::init()
{
  Q_Q(QFrameless);

  vistaHelper = new QVistaHelper(q);
}

bool QFramelessPrivate::isVistaThemeEnabled(QVistaHelper::VistaState state) const
{
  return QVistaHelper::vistaState() == state;
}

void QFramelessPrivate::handleAeroStyleChange()
{
  Q_Q(QFrameless);

  if (inHandleAeroStyleChange)
    return; // prevent recursion
  inHandleAeroStyleChange = true;

  q->removeEventFilter(vistaHelper);

  if (isVistaThemeEnabled()) {
    if (isVistaThemeEnabled(QVistaHelper::VistaAero)) {
      vistaHelper->setDWMTitleBar(QVistaHelper::ExtendedTitleBar);
      q->installEventFilter(vistaHelper);
      q->setMouseTracking(true);
    }
    else {
      vistaHelper->setDWMTitleBar(QVistaHelper::NormalTitleBar);
      q->setMouseTracking(true);
    }
    vistaHelper->setTitleBarIconAndCaptionVisible(false);
  }
  else {
    q->setMouseTracking(true); // ### original value possibly different
#ifndef QT_NO_CURSOR
    q->unsetCursor(); // ### ditto
#endif
    vistaHelper->setTitleBarIconAndCaptionVisible(true);
  }

  if (q->isVisible())
    vistaHelper->setWindowPosHack();

  inHandleAeroStyleChange = false;
}

bool QFramelessPrivate::isVistaThemeEnabled() const
{
  return isVistaThemeEnabled(QVistaHelper::VistaAero) || isVistaThemeEnabled(QVistaHelper::VistaBasic);
}

QFrameless::QFrameless(QWidget* parent, Qt::WindowFlags flags)
  : QDialog(*new QFramelessPrivate, parent, flags)
{
  Q_D(QFrameless);
  d->init();
}

QFrameless::~QFrameless()
{
  Q_D(QFrameless);
}

void QFrameless::setVisible(bool visible)
{
  Q_D(QFrameless);
  if (visible) {
  }
  QDialog::setVisible(visible);
}

bool QFrameless::event(QEvent* event)
{
  Q_D(QFrameless);
  if (event->type() == QEvent::StyleChange) { // Propagate style
  }
  else if (event->type() == QEvent::Show && d->vistaInitPending) {
    d->vistaInitPending = false;
    d->handleAeroStyleChange();
  }
  else if (d->isVistaThemeEnabled()) {
    if (event->type() == QEvent::Resize
      || event->type() == QEvent::LayoutDirectionChange) {
    }

    d->vistaHelper->mouseEvent(event);
  }
  return QDialog::event(event);
}

void QFrameless::resizeEvent(QResizeEvent* event)
{
  Q_D(QFrameless);
  if (d->isVistaThemeEnabled())
    d->vistaHelper->resizeEvent(event);
  QDialog::resizeEvent(event);
}

void QFrameless::paintEvent(QPaintEvent* event)
{
  Q_D(QFrameless);

  if (d->isVistaThemeEnabled()) {
    if (d->isVistaThemeEnabled(QVistaHelper::VistaBasic)) {
      QPainter painter(this);
      QColor color = d->vistaHelper->basicWindowFrameColor();
      painter.fillRect(0, 0, width(), QVistaHelper::topOffset(), color);
    }
    d->vistaHelper->paintEvent(event);
  }
}

bool QFrameless::winEvent(MSG* message, long* result)
{
  Q_D(QFrameless);
  if (d->isVistaThemeEnabled()) {
    const bool winEventResult = d->vistaHelper->handleWinEvent(message, result);
    if (QVistaHelper::vistaState() != d->vistaState) {
      d->vistaState = QVistaHelper::vistaState();
      d->vistaStateChanged = true;
    }
    return winEventResult;
  }
  else
  {
    return QDialog::winEvent(message, result);
  }
}

void QFrameless::done(int result)
{
  Q_D(QFrameless);
  if (result == Rejected) {
  }
  else {
    return;
  }
  QDialog::done(result);
}


QT_END_NAMESPACE

#include "moc_qframeless.cpp"
