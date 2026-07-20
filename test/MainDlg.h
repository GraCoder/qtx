#pragma once

#include <QWidget>
#include <QtGui/qframeless.h>

typedef QFrameless Base;
//typedef QWidget Base;

class MainDlg : public Base {
  Q_OBJECT
public:
  MainDlg();

protected:
  void paintEvent(QPaintEvent *event) override;

signals:
  void sigTest1();

public slots:
  void sltOpenFile();

  void sltTest();
  void sltTest1(int value2);
};