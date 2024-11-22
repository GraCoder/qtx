#include "MainDlg.h"

#include <QLabel>
#include <QVBoxLayout>
#include <QTableWidget>
#include <QTimer>

#include <Windows.h>
#include <tchar.h>

#include "WindowBar.h"

MainDlg::MainDlg()
  : Base(0)
{
  setWindowFlags((windowFlags() & ~Qt::WindowMinimizeButtonHint) | Qt::WindowMinimizeButtonHint | Qt::WindowMaximizeButtonHint);
  setMinimumSize(800, 640);

  auto layout = new QVBoxLayout(this);
  layout->setContentsMargins(0, 1, 0, 0);

#if(1)
  auto bar = new WindowBar;
  setTitleBar(bar);
  layout->addWidget(bar);
  layout->addStretch();

  {
    auto label = new QLabel("ABCDEFGHIJKLMNOPQRST");
    auto ft = label->font(); 
    //ft.setPointSizeF(32);
    label->setFont(ft);
    layout->addWidget(label);
    //layout->addWidget(new QTableWidget);
  }

  connect(bar, SIGNAL(sigMinWindow()), this, SLOT(showMinimized()));
  connect(bar, SIGNAL(sigMaxWindow()), this, SLOT(sltShowMaximum()));
  connect(bar, SIGNAL(sigCloseWindow()), this, SLOT(close()));

  //auto ple = palette();
  //ple.setColor(QPalette::Window, Qt::green);
  //setPalette(ple);
#endif

  //auto timer = new QTimer();
  //timer->setInterval(1);
  //connect(timer, SIGNAL(timeout()), this, SLOT(update()));
  //timer->start();
}

void MainDlg::sltShowMaximum()
{
  if (isMaximized())
    showNormal();
  else
    showMaximized();
}
