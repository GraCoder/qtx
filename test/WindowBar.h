#pragma once

#include "QtGui/qframeless.h"

class WindowBtn;

class WindowBar : public QFramelessBar {
  Q_OBJECT
  typedef QFramelessBar Base;
public:
  WindowBar();

  void init();

signals:
  void sigMinWindow();
  void sigMaxWindow();
  void sigCloseWindow();

protected:

  bool inButtons(const QPoint& pt);
  int  titlePart(const QPoint& pt) override;

  void paintEvent(QPaintEvent* ev) override;

  void mouseMoveEvent(QMouseEvent*) override;

private:

  WindowBtn* _close = nullptr;
  WindowBtn* _min = nullptr;
  WindowBtn* _max = nullptr;
};