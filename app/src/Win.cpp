#include "Win.h"


Win::Win(QString path, QWidget *parent) : QWidget(parent) {
    m_file = new QPushButton(QIcon(QPixmap("../../app/resource/files.png").
                            scaled(40, 40)), "",this);
    m_file->move(10, 10);
    connect(m_file, &QPushButton::clicked, this,  &Win::choose_fileBut);
    m_file->setToolTip("Choose file");
    m_fold = new QPushButton(QIcon(QPixmap("../../app/resource/folder.png").
                            scaled(40, 40, Qt::KeepAspectRatio)), "", this);
    m_fold->move(65, 10);
    m_fold->setToolTip("Choose folder");
    connect(m_fold, &QPushButton::clicked, this,  &Win::choose_foldBut);
    m_check = new QCheckBox("Add subdirectories", this);
    m_check->move(125, 15);
    if (path != nullptr) {
        if (QDir(path).exists() && QDir(path).isReadable())
            chooseDir(path);
        else if (QFileInfo(path).exists() && QFileInfo(path).isWritable())
            chooseFile(path);
        else
            QMessageBox::critical(this, "", "Cannot open file or directory");
    }
}

Win::~Win() {
    delete m_fold;
    delete m_file;
    if (m_box)
        delete m_box;
}

void Win::chooseDir(QString dir) {
    if (m_box)
        delete m_box;
    QDirIterator *it = new QDirIterator(dir, QStringList() << "*.mp3" <<
                    "*.wav" << "*.flac" << "*.ogg" , QDir::Files,
                    m_check->isChecked() ? QDirIterator::Subdirectories :
                                            QDirIterator::NoIteratorFlags);
    m_box = new FileBox(it, this);
    m_box->show();
    delete it;
}

void Win::chooseFile(QString filename) {
    if (m_box)
            delete m_box;
    m_box = new FileBox(filename, this);
    m_box->show();
}

void Win::choose_foldBut() {
    QString dir = QFileDialog::getExistingDirectory(this,
                                tr("Open Directory"), "~");
    if (dir.size())
        chooseDir(dir);
}
void Win::choose_fileBut() {
    QString file = QFileDialog::getOpenFileName(this, tr("Open file"), "~",
                                                tr("*.mp3 *.wav *.flac *.ogg"));
    if (file.size())
        chooseFile(file);
}
