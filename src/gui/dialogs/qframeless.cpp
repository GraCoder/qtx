/****************************************************************************
**
** Copyright (C) 2015 The Qt Company Ltd.
** Contact: http://www.qt.io/licensing/
**
** This file is part of the QtGui module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:LGPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see http://www.qt.io/terms-conditions. For further
** information use the contact form at http://www.qt.io/contact-us.
**
** GNU Lesser General Public License Usage
** Alternatively, this file may be used under the terms of the GNU Lesser
** General Public License version 2.1 or version 3 as published by the Free
** Software Foundation and appearing in the file LICENSE.LGPLv21 and
** LICENSE.LGPLv3 included in the packaging of this file. Please review the
** following information to ensure the GNU Lesser General Public License
** requirements will be met: https://www.gnu.org/licenses/lgpl.html and
** http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
**
** As a special exception, The Qt Company gives you certain additional
** rights. These rights are described in The Qt Company LGPL Exception
** version 1.1, included in the file LGPL_EXCEPTION.txt in this package.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3.0 as published by the Free Software
** Foundation and appearing in the file LICENSE.GPL included in the
** packaging of this file.  Please review the following information to
** ensure the GNU General Public License version 3.0 requirements will be
** met: http://www.gnu.org/copyleft/gpl.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

#include "qframeless.h"

#include "qabstractspinbox.h"
#include "qalgorithms.h"
#include "qapplication.h"
#include "qboxlayout.h"
#include "qlayoutitem.h"
#include "qdesktopwidget.h"
#include "qevent.h"
#include "qframe.h"
#include "qlabel.h"
#include "qlineedit.h"
#include "qpainter.h"
#include "qpushbutton.h"
#include "qset.h"
#include "qstyle.h"
#include "qvarlengtharray.h"
#if defined(Q_WS_MAC)
#include "private/qt_mac_p.h"
#include "qlibrary.h"
#elif !defined(QT_NO_STYLE_WINDOWSVISTA)
#include "qframeless_win_p.h"
#include "qtimer.h"
#endif

#include "private/qdialog_p.h"
#include <qdebug.h>

#include <string.h>     // for memset()

#ifdef QT_SOFTKEYS_ENABLED
#include "qaction.h"
#endif

QT_BEGIN_NAMESPACE

int QFramelessBar::titlePart(const QPoint &pt)
{
  return HTCAPTION;
}

QFrameless::QFrameless(QWidget *parent, Qt::WindowFlags flags)
  : QDialog(*new QFramelessPrivate, parent, flags)
{
  Q_D(QFrameless);
}

QFrameless::~QFrameless()
{
  Q_D(QFrameless);
}

void QFrameless::setVisible(bool visible)
{
  Q_D(QFrameless);
  if (visible) {
  }
  QDialog::setVisible(visible);
}

void QFrameless::setTitleBar(QFramelessBar *titlebar) 
{
  Q_D(QFrameless);
  
  titlebar->init();
  d->setTitleBar(titlebar);
}

bool QFrameless::event(QEvent *event)
{
  Q_D(QFrameless);
  switch (event->type()) {
  case QEvent::UpdateRequest:
    //d->drawBorder();
    break;
  case QEvent::StyleChange:
    break;
  case QEvent::WinIdChange:
    d->initFrame();
    break;
  case QEvent::WindowStateChange:
    break;
  }
  return QDialog::event(event);
}

void QFrameless::resizeEvent(QResizeEvent *event)
{
  Q_D(QFrameless);
  //d->winAgent->resizeEvent(event);
  QDialog::resizeEvent(event);
}

void QFrameless::paintEvent(QPaintEvent *event)
{
  QDialog::paintEvent(event);

  Q_D(QFrameless);

  d->paintEvent(event);
}

bool QFrameless::winEvent(MSG *message, long *result)
{
  Q_D(QFrameless);

  if (d->handleWinEvent(message, result))
    return true;

  return QDialog::winEvent(message, result);
}

void QFrameless::done(int result)
{
  //Q_D(QFrameless);
  //if (result == Rejected) {
  //} else {
  //  return;
  //}
  QDialog::done(result);
}

QT_END_NAMESPACE

#include "moc_qframeless.cpp"
