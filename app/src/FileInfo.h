#ifndef FILEINFO_H
#define FILEINFO_H

#include <QDesktopWidget>
#include <QLabel>
#include <QLineEdit>
#include <QPushButton>
#include <QLabel>
#include <QDebug>
#include <QImage>
#include <QIntValidator>
#include <QMessageBox>
#include <QFileDialog>

#include <tag.h>
#include <fileref.h>
#include <id3v2tag.h>
#include <mpegfile.h>
#include <attachedpictureframe.h>

#include <string>
#include <iostream>
#include <future>
#include <thread>

#include "RunLine.h"

#define Tags_H 30
#define Tags_W 175
#define Tags_X 20
#define Tags_Y 150

enum TagsName {
    Artist,
    Name,
    Album,
    Year,
    Comment,
    Track,
    Genre
};

QLabel *createLabel(QWidget *parent, std::pair<int, int> xy, QString text,
                   int pointSize = 11, bool bold = false, bool italic = false);

class FileInfo : public QWidget {
public:
    explicit FileInfo(QString filename, QWidget *parent = nullptr);
    ~FileInfo();

    QString getArtist();
    QString getTitle();
    QString getAlbum();
    QString getYear();
    QString getTrack();
    QString getGenre();
    QString getComment();
    QImage getImage();
    void setImage();
private:
    void showEditLines();
    void saveTags();

    QImage m_image;
    QPushButton *m_butImg;
    std::string m_filename;
    QVector<QLabel*> m_info;
    std::map<int, QLineEdit*> m_tags;
    QVector<QLabel *> m_labs;
    QPushButton *m_save;
    TagLib::FileRef *m_fileRef;
    RunLine *m_runLine;
};

#endif // FILEINFO_H
