#pragma once

#include <QtGui/qpushbutton.h>

class WindowBtn : public QPushButton {
  Q_OBJECT
  typedef QPushButton Base;

public:
  enum BtnType { BT_Close, BT_Max, BT_Min };

  WindowBtn(BtnType btnType);

protected:
  void paintEvent(QPaintEvent *ev) override;

  void enterEvent(QEvent *) override;
  void leaveEvent(QEvent *) override;
  void mousePressEvent(QMouseEvent *) override;
  void mouseReleaseEvent(QMouseEvent *) override;

private:
  BtnType _type;
  bool _pressing = false;
};