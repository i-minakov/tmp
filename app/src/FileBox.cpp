#include "FileBox.h"
#include <QDebug>

QString fileName(QString path) {
    QString res;
    for (int i = path.size() - 1; path[i] != '/' && i >=0; i--)
        res.push_front(path[i]);
    return res;
}

FileBox::FileBox(QDirIterator *dir, QWidget *parent) : QWidget(parent) {
    setDefaultWid();
    for (int i = 0; dir->hasNext(); i++) 
        m_list.push_back(dir->next());
    showTable();
}

FileBox::FileBox(QString filename, QWidget *parent) : QWidget(parent) {
    setDefaultWid();
    m_list.push_back(filename);
    showTable();
}

FileBox::~FileBox() {
    for (auto &i : m_files)
        delete i.first;
    delete m_table;
    delete m_info;
    delete m_combo;
}

void FileBox::showTable() {
    for (int i = 0; i < m_list.size(); i++) {
        m_table->insertRow(i);
        QString name(m_list[i]);
        QTableWidgetItem *item = new QTableWidgetItem(fileName(name));
        m_files[item] = name;
        m_table->setItem(i, 0, item);
    }
}

void FileBox::setDefaultWid() {
    m_table = new QTableWidget(this);
    m_table->resize(300, 400);
    m_table->move(0, 40);
    m_table->setColumnCount(1);
    m_table->setColumnWidth(0, 300);
    m_table->setFixedSize(300, 400);
    m_table->setEditTriggers(QAbstractItemView::NoEditTriggers);
    m_table->setHorizontalHeaderLabels(QStringList("Songs"));
    this->move(20, 50);
    connect(m_table, &QTableWidget::cellClicked, this, &FileBox::songClick);
    m_combo = new QComboBox(this);
    m_combo->move(0, 0);
    m_combo->addItem("No sort");
    m_combo->addItem("Ascending");
    m_combo->addItem("Descending");
    m_combo->addItem("Artist");
    m_combo->addItem("Album");
    m_combo->addItem("Year");
    m_combo->addItem("Genre");
    connect(m_combo, &QComboBox::textActivated, this, &FileBox::setSort);
}

void FileBox::setSort() {
    for (auto &i : m_files)
        delete i.first;
    m_files.clear();
    m_table->setRowCount(0);
    int k = m_combo->currentIndex();
    if (k == 1)
        std::sort(m_list.rbegin(), m_list.rend(), [](auto a, auto b) {
            return a > b;
        });
    else if (k == 2)
        std::sort(m_list.rbegin(), m_list.rend(), [](auto a, auto b) {
            return a < b;
        });
    else if (k == 3)
        std::sort(m_list.rbegin(), m_list.rend(), [](auto a, auto b) {
                  TagLib::FileRef lhs(a.toStdString().c_str());
                  TagLib::FileRef rhs(b.toStdString().c_str());
                  return std::string(lhs.tag()->artist().toCString()) >
                         std::string(rhs.tag()->artist().toCString());
        });
    else if (k == 4)
        std::sort(m_list.rbegin(), m_list.rend(), [](auto a, auto b) {
                  TagLib::FileRef lhs(a.toStdString().c_str());
                  TagLib::FileRef rhs(b.toStdString().c_str());
                  return std::string(lhs.tag()->album().toCString()) >
                         std::string(rhs.tag()->album().toCString());
        });
    else if (k == 5)
        std::sort(m_list.rbegin(), m_list.rend(), [](auto a, auto b) {
                  TagLib::FileRef lhs(a.toStdString().c_str());
                  TagLib::FileRef rhs(b.toStdString().c_str());
                  return lhs.tag()->year() > rhs.tag()->year();
        });
    else if (k == 6)
        std::sort(m_list.rbegin(), m_list.rend(), [](auto a, auto b) {
                  TagLib::FileRef lhs(a.toStdString().c_str());
                  TagLib::FileRef rhs(b.toStdString().c_str());
                  return std::string(lhs.tag()->genre().toCString()) >
                         std::string(rhs.tag()->genre().toCString());
        });
    showTable();
}

void FileBox::songClick() {
    if (m_info)
        delete m_info;
    m_info = new FileInfo(m_files[m_table->currentItem()],
                         this->parentWidget());
    m_info->show();
}
