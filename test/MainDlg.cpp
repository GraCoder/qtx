#include "MainDlg.h"

#include <QLabel>
#include <QVBoxLayout>
#include <QTableWidget>
#include <QTimer>
#include <QListWidget>
#include <QMenuBar>
#include <QMenu>
#include <QFileDialog>
#include <QToolButton>
#include <QPainter>

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
    setTitleBar(bar);

    {
      auto label = new QLabel;
      label->setPixmap(QPixmap(":/qtest/INTC.svg"));
      layout->addWidget(label, 0, Qt::AlignHCenter);
    }

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

  auto hlayout = new QHBoxLayout;
  layout->addLayout(hlayout);

  QIcon icon(":/qtest/map.jpg");
  auto btn = new QPushButton;
  btn->setIcon(icon);
  btn->setIconSize(QSize(128, 128));
  hlayout->addWidget(btn);

  auto btn1 = new QToolButton;
  btn1->setIcon(QIcon(":/qtest/INTC.svg"));
  hlayout->addWidget(btn1);

  connect(btn, SIGNAL(clicked()), this, SLOT(sltTest1()));
}

void MainDlg::paintEvent(QPaintEvent *event) 
{
  Base::paintEvent(event);
}

void MainDlg::sltTest1() 
{
  auto f = QFileDialog::getSaveFileName(this, "save as", ".", "*.*");
}
