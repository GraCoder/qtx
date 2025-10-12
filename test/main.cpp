#include <stdio.h>

#include <QtGui/QApplication>
#include <QtCore/qcoreapplication.h>

#include <qplugin.h>

#include "MainDlg.h"

int main(int argc, char **argv) 
{
  //Q_IMPORT_PLUGIN(QSvgPlugin);
  Q_IMPORT_PLUGIN(QSvgIconPlugin);

  QApplication app(argc, argv);

  auto ft = QApplication::font();
  ft.setFamily("Noto Sans SC");
  ft.setPointSize(12);
  QApplication::setFont(ft);

  MainDlg dlg;
  dlg.show();

  return app.exec();
}