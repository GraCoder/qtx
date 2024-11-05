#include <stdio.h>

#include <QtGui/QApplication>
#include <QtCore/qcoreapplication.h>

#include "MainDlg.h"

int main(int argc, char **argv) 
{
  QApplication app(argc, argv);
  QString str = "11111";
  auto yy = str.toAscii().constData();

  MainDlg dlg;
  dlg.show();

  return app.exec();
}