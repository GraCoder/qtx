#include "MainDlg.h"

#include <QLabel>
#include <QVBoxLayout>
#include <QTableWidget>
#include <QTimer>
#include <QListWidget>

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
  connect(bar, SIGNAL(sigMinWindow()), this, SLOT(showMinimized()));
  connect(bar, SIGNAL(sigMaxWindow()), this, SLOT(sltShowMaximum()));
  connect(bar, SIGNAL(sigCloseWindow()), this, SLOT(close()));

  setTitleBar(bar);
  layout->addWidget(bar);
  layout->addStretch();

  {
    auto label = new QLabel("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
    auto ft = label->font(); 
    //ft.setPointSizeF(32);
    label->setFont(ft);
    layout->addWidget(label);
  }
  {
    auto label = new QLabel(QString::fromUtf8("历史文件不具有现实意义\n八纮一宇，七生报国\n"));
    auto ft = label->font(); 
    ft.setPointSizeF(18);
    label->setFont(ft);
    layout->addWidget(label);
  } 
  //auto ple = palette();
  //ple.setColor(QPalette::Window, Qt::green);
  //setPalette(ple);

  //{
  //  auto list = new QListWidget;
  //  QStringList xx; xx << "abac" << "hcrgh" << QString::fromUtf8("真的吗");
  //  list->addItems(xx);
  //  layout->addWidget(list);
  //}


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
