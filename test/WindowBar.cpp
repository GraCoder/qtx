#include "WindowBar.h"
#include "WindowBtn.h"

#include <QtGui/QPainter>
#include <QtGui/QHBoxLayout>

#include "Windows.h"

WindowBar::WindowBar()
{
  setMinimumHeight(80);
  setMinimumWidth(600);

  auto ple = palette();
  ple.setColor(QPalette::Window, QColor(25, 90, 190));
  setPalette(ple);
  setAutoFillBackground(true);

  auto layout = new QHBoxLayout(this);
  layout->setContentsMargins(0, 0, 0, 0);
  layout->setMargin(0);
  layout->addStretch();


  layout->setSpacing(0);
  _min = new WindowBtn(WindowBtn::BT_Min);
  connect(_min, SIGNAL(clicked(bool)), this, SIGNAL(sigMinWindow()));
  layout->addWidget(_min);

  _max = new WindowBtn(WindowBtn::BT_Max);
  connect(_max, SIGNAL(clicked(bool)), this, SIGNAL(sigMaxWindow()));
  layout->addWidget(_max);

  _close = new WindowBtn(WindowBtn::BT_Close);
  connect(_close, SIGNAL(clicked(bool)), this, SIGNAL(sigCloseWindow()));
  layout->addWidget(_close);
}

void WindowBar::init()
{
}

bool WindowBar::inButtons(const QPoint& pt)
{
  bool ret = false;
  auto cpt = mapFromParent(pt);
  if (_close)
    ret |= _close->geometry().contains(cpt);
  if (_min)
    ret |= _min->geometry().contains(cpt);
  if (_max)
    ret |= _max->geometry().contains(cpt);
  return ret;
}

int WindowBar::titlePart(const QPoint &pt)
{
  auto cpt = mapFromParent(pt);
  if (_close && _close->geometry().contains(cpt))
    return HTCLOSE;
  if (_min && _min->geometry().contains(cpt))
    return HTMINBUTTON;
  if (_max && _max->geometry().contains(cpt))
    return HTMAXBUTTON;

  return HTCAPTION;
}

void WindowBar::paintEvent(QPaintEvent* ev)
{
  Base::paintEvent(ev);

  //QPainter painter(this);
  //painter.fillRect(rect(), Qt::red);
}

void WindowBar::mouseMoveEvent(QMouseEvent* ev)
{
  update();
}
