#pragma once

#include <QWidget>
#include <QtGui/qframeless.h>

typedef QFrameless Base;

class MainDlg : public Base{
  Q_OBJECT
public:
  MainDlg();
};