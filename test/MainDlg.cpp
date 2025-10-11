#include "MainDlg.h"

#include <QLabel>
#include <QVBoxLayout>
#include <QTableWidget>
#include <QTimer>
#include <QListWidget>
#include <QMenuBar>
#include <QMenu>
#include <QFileDialog>

#include <Windows.h>
#include <tchar.h>

#include "WindowBar.h"

MainDlg::MainDlg()
  : Base(0)
{
  setWindowFlags(Qt::Dialog | Qt::WindowMinimizeButtonHint | Qt::WindowMaximizeButtonHint);
  setMinimumSize(800, 640);

  auto layout = new QVBoxLayout(this);
  layout->setContentsMargins(0, 0, 0, 0);

#if (1)
  auto bar = new WindowBar;
  {
    auto mbar = new QMenuBar;
    bar->setMenuBar(mbar);
    {
      {
        auto m = mbar->addMenu("file");
        m->addAction("open", this, SLOT(sltOpenFile()));
        m->addAction("save", this, SLOT(sltSaveFile()));
      }
      {
        auto m = mbar->addMenu("edit");
        m->addAction("test1", this, SLOT(sltTest1()));
        m->addAction("test2", this, SLOT(sltTest2()));
      }
    }

    layout->addWidget(bar);
    layout->addStretch();
    setTitleBar(bar);

    {
      auto label = new QLabel("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz");
      auto ft = label->font();
      ft.setPointSizeF(32);
      label->setFont(ft);
      layout->addWidget(label);
    }
    {
      auto label = new QLabel(QString::fromUtf8("前途光明我看不见，道路曲折我走不完。时代的眼泪，必要的牺牲。"));
      auto ft = label->font();
      ft.setPointSizeF(16);
      label->setFont(ft);
      layout->addWidget(label);
    }
    {
      auto label = new QLabel(QString::fromUtf8("历史文件不具有现实意义。八纮一宇，七生报国\n"));
      auto ft = label->font();
      ft.setPointSizeF(14);
      label->setFont(ft);
      layout->addWidget(label);
    }
    // auto ple = palette();
    // ple.setColor(QPalette::Window, Qt::green);
    // setPalette(ple);

    //{
    //  auto list = new QListWidget;
    //  QStringList xx; xx << "abac" << "hcrgh" << QString::fromUtf8("真的吗");
    //  list->addItems(xx);
    //  layout->addWidget(list);
    //}

#endif

    // auto timer = new QTimer();
    // timer->setInterval(1);
    // connect(timer, SIGNAL(timeout()), this, SLOT(update()));
    // timer->start();
  }

  auto btn = new QPushButton;
  layout->addWidget(btn);

  connect(btn, SIGNAL(clicked()), this, SLOT(sltTest1()));
}

void MainDlg::sltTest1() 
{
  auto f = QFileDialog::getSaveFileName(this, "save as", ".", "*.*");
}
