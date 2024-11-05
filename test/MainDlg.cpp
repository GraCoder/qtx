#include "MainDlg.h"

#include <QLabel>
#include <QVBoxLayout>

#include <Windows.h>
#include <tchar.h>

MainDlg::MainDlg()
  :QWidget(0, Qt::Dialog)
{

  setWindowTitle(QString::fromWCharArray(_T("1111")));
  //auto layout = new QVBoxLayout(this);
  //auto label = new QLabel("zhehutehue");
  //layout->addWidget(label);
}
