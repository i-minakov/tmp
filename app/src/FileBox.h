#ifndef FILEBOX_H
#define FILEBOX_H
#include <QVBoxLayout>
#include <QGridLayout>
#include <QDesktopWidget>
#include <QLabel>
#include <QScrollArea>
#include <QDirIterator>
#include <QPushButton>
#include <QTableWidget>
#include <QThread>
#include <QComboBox>

#include <iostream>

#include "FileInfo.h"

enum Sort {
    None,
    Asc,
    Desc,
    Art,
    Years,
    Gnr
};

class FileBox : public QWidget {
public:
    explicit FileBox(QString filename, QWidget *parent = nullptr);
    explicit FileBox(QDirIterator *dir, QWidget *parent = nullptr);
    ~FileBox();

public slots:
    void songClick();

private:
    void setSort();
    void showTable();
    void setDefaultWid();
    QTableWidget *m_table;
    QComboBox *m_combo;
    std::map<QTableWidgetItem*, QString> m_files;
    FileInfo *m_info{nullptr};
    QList<QString> m_list;
};

#endif // FILEBOX_H
