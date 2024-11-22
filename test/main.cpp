#include <stdio.h>

#include <QtGui/QApplication>
#include <QtCore/qcoreapplication.h>

#include "MainDlg.h"

int main(int argc, char **argv) 
{
  auto ft = QApplication::font();
  ft.setFamily("Noto Sans SC");
  QApplication::setFont(ft);

  QApplication app(argc, argv);

  MainDlg dlg;
  dlg.show();

  return app.exec();
}