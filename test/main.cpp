#include <stdio.h>

#include <QtGui/QApplication>
#include <QtCore/qcoreapplication.h>

#include "MainDlg.h"

int main(int argc, char **argv) 
{
  QApplication app(argc, argv);

  auto ft = QApplication::font();
  ft.setFamily("Noto Sans SC");
  ft.setPointSize(12);
  QApplication::setFont(ft);

  MainDlg dlg;
  dlg.show();

  return app.exec();
}