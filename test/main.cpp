#include <stdio.h>
#include <QObject>

#include <QtGui/QApplication>
#include <QtCore/qcoreapplication.h>

#include <qplugin.h>

#include "MainDlg.h"

int main(int argc, char **argv) 
{
  auto obj = new QObject;
  
  //Q_IMPORT_PLUGIN(QSvgIconPlugin);
  //Q_IMPORT_PLUGIN(QSvgPlugin);
  //Q_IMPORT_PLUGIN(QJpegPlugin);

  QApplication app(argc, argv);

  auto ft = QApplication::font();
  ft.setFamily("Noto Sans SC");
  ft.setPointSize(12);
  QApplication::setFont(ft);

  MainDlg dlg;
  dlg.show();

  return app.exec();
  return 0;
}