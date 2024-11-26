#include "WindowBtn.h"

#include <QPainter>
#include <algorithm>
#include <cmath>

WindowBtn::WindowBtn(BtnType btnType)
  : _type(btnType)
{
  setMinimumWidth(45);
  setSizePolicy(QSizePolicy::Preferred, QSizePolicy::Preferred);
}

void WindowBtn::paintEvent(QPaintEvent *ev)
{
  QPainter painter(this);
  auto pt = mapFromGlobal(QCursor::pos());
  if (underMouse()) {
    if (_type == BT_Close) {
      if (_pressing)
        painter.fillRect(rect(), QColor(0xf1707a));
      else
        painter.fillRect(rect(), QColor(0xe81123));
    } else {
      if (_pressing)
        painter.fillRect(rect(), QColor(0, 0, 0, 60));
      else
        painter.fillRect(rect(), QColor(0, 0, 0, 25));
    }
  }

  QPen pen = painter.pen();
  pen.setColor(Qt::black);

  if (_type == BT_Close) {
    if (underMouse()) {
      pen.setColor(Qt::white);
    }
    pen.setWidthF(1.25);
    painter.setPen(pen);
    painter.setRenderHint(QPainter::Antialiasing);
    float sz = std::min(width(), height()) * 0.33;
    float xoft = (width() - sz) / 2.0;
    float yoft = (height() - sz) / 2.0;
    painter.drawLine(QPoint(qRound(xoft), qRound(yoft)), QPoint(qRound(xoft + sz), qRound(yoft + sz)));
    painter.drawLine(QPoint(qRound(xoft), qRound(yoft + sz)), QPointF(qRound(xoft + sz), qRound(yoft)));
    return;
  } else if (_type == BT_Max) {
    pen.setWidthF(1);
    painter.setPen(pen);
    float sz = std::min(width(), height()) * 0.34;
    int xoft = round((width() - sz) / 2.0);
    int yoft = round((height() - sz) / 2.0);
    if (topLevelWidget()->isMaximized()) {
      constexpr float f1 = 0.2083333;
      constexpr float f2 = 0.75;
      painter.drawRect(xoft, yoft + sz * f1, f2 * sz, f2 * sz);
      const float f3 = xoft + f1 * sz;
      painter.drawLine(f3, yoft + sz * f1, f3, yoft);
      painter.drawLine(f3, yoft - 1, xoft + sz, yoft - 1);
      painter.drawLine(xoft + sz, yoft, xoft + sz, yoft + sz * f2);
      painter.drawLine(xoft + sz, yoft + sz * f2, xoft + f2 * sz, yoft + sz * f2);
    } else {
      painter.drawRect(xoft, yoft, sz, sz);
    }
    return;
  } else if (_type == BT_Min) {
    pen.setWidthF(1);
    painter.setPen(pen);
    int y = height() / 2.0;
    float sz = std::min(width(), height()) * 0.33;
    int xoft = round((width() - sz) / 2.0);
    painter.drawLine(xoft, y, xoft + sz, y);
    return;
  }

  QPushButton::paintEvent(ev);
}

void WindowBtn::enterEvent(QEvent *ev)
{
  Base::enterEvent(ev);
  update();
}

void WindowBtn::leaveEvent(QEvent *ev)
{
  Base::leaveEvent(ev);
  update();
}

void WindowBtn::mousePressEvent(QMouseEvent *ev)
{
  Base::mousePressEvent(ev);
  _pressing = true;
  update();
}

void WindowBtn::mouseReleaseEvent(QMouseEvent *ev)
{
  Base::mouseReleaseEvent(ev);
  _pressing = false;
  update();
}
