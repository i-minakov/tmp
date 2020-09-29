#ifndef WIN_H
#define WIN_H

#include <QDesktopWidget>
#include <QPushButton>
#include <QLineEdit>
#include <QLabel>
#include <QFileDialog>
#include <QMenuBar>
#include <QCheckBox>
#include <QDebug>
#include <QFileInfo>
#include <QMenu>
#include <QMainWindow>

#include <thread>

#include "FileBox.h"

class Win : public QWidget {
public:
    explicit Win(QString path = nullptr, QWidget *parent = nullptr);
    ~Win(); 

public slots:
    void choose_foldBut();
    void choose_fileBut();

private:
    void chooseDir(QString dir);
    void chooseFile(QString filename);
    QPushButton *m_fold;
    QPushButton *m_file;
    QCheckBox *m_check;
    FileBox *m_box{nullptr};
};

#endif // WIN_H
