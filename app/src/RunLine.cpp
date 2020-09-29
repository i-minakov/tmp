#include "RunLine.h"
#include <iostream>
RunLine::RunLine(QWidget *parent) : QLabel(parent) {
    QFont font = this->font();
    font.setPointSize(16);
    font.setBold(true);
    font.setItalic(true);
    this->setFont(font);
    this->setAlignment(Qt::AlignCenter);
}

void RunLine::timerEvent(QTimerEvent *) {
    int length = m_string.size();
    m_shift += 1;
    if (m_shift >= length)
        m_shift = 0;
    setText(m_string.right(length - m_shift) + m_string.left(m_shift));
}

void RunLine::setSpeed(const int speed) {
    if (m_timerId)
        killTimer(m_timerId);   
    m_timerId = 0;
    if (speed < 0)
        return;
    if (speed)
        m_timerId = startTimer(1000/speed);
}

void RunLine::setString(const QString string) {
    m_string = string;
    if (m_string.size() > 23)
        setSpeed(3);
    m_shift = 0;
    setText(m_string);
}
