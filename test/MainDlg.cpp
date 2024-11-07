#include "MainDlg.h"

#include <QLabel>
#include <QVBoxLayout>

#include <Windows.h>
#include <tchar.h>

MainDlg::MainDlg()
  : Base(0)
{
  setMinimumSize(800, 640);

  auto layout = new QVBoxLayout(this);
  auto label = new QLabel("zhehutehue");
  layout->addWidget(label);
  layout->addStretch();

  auto ple = palette();
  ple.setColor(QPalette::Window, Qt::green);
  label->setPalette(ple);
}
