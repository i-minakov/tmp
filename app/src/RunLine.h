#ifndef RUNLINE_H
#define RUNLINE_H

#include <QTimerEvent>
#include <QLabel>
#include <QDesktopWidget>

class RunLine : public QLabel {
public:
    RunLine(QWidget *parent = nullptr);

    void setString(QString string);
    void setSpeed(int speed);

private:
    void timerEvent(QTimerEvent*);
    int m_shift{0};
    int m_timerId{0};
    QString m_string;
};

#endif
