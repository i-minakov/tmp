#include "FileInfo.h"

QLabel *createLabel(QWidget *parent, std::pair<int, int> xy, QString text,
                   int pointSize, bool bold, bool italic) {
    QLabel *res = new QLabel(parent);
    res->setText(text);
    QFont font = res->font();
    font.setPointSize(pointSize);
    font.setBold(bold);
    font.setItalic(italic);
    res->setFont(font);
    res->setGeometry(xy.first, xy.second, 300, 30);
    res->setAlignment(Qt::AlignCenter);
    return res;
}

FileInfo::FileInfo(QString filename, QWidget *parent) : QWidget (parent) {
    m_filename = filename.toStdString();
    m_fileRef = new TagLib::FileRef(filename.toStdString().data());
    std::future<QImage> f1 = std::async(std::launch::async, &FileInfo::getImage, this);
    this->move(350, 25);
    m_runLine = new RunLine(this);
    m_runLine->move(110, 0);
    m_runLine->setString(getArtist() + " - " + getTitle() + "   ");
    m_info.push_back(createLabel(this, std::make_pair(100, 30),
                                 getAlbum(), 14));
    m_info.push_back(createLabel(this, std::make_pair(100, 50),
                getYear(), 14));
    m_info.push_back(new QLabel(this));
    m_save = new QPushButton("Save", this);
    connect(m_save, &QPushButton::clicked, this, &FileInfo::saveTags);
    m_save->setGeometry(130, 380, 150, 50);
    showEditLines();
    m_tags[TagsName::Artist]->setMaxLength(30);
    m_tags[TagsName::Album]->setMaxLength(30);
    m_tags[TagsName::Name]->setMaxLength(30);
    m_tags[TagsName::Comment]->setMaxLength(30);
    m_tags[TagsName::Genre]->setMaxLength(3);
    m_tags[TagsName::Year]->setMaxLength(4);
    m_tags[TagsName::Track]->setMaxLength(10);
    m_image = f1.get();
    m_info.last()->setPixmap(QPixmap::fromImage(m_image));
    m_info.last()->move(0, 0);
    m_butImg = new QPushButton("Change image", this);
    m_butImg->setGeometry(-5, 100, 110, 30);
    connect(m_butImg, &QPushButton::clicked, this, &FileInfo::setImage);
}

FileInfo::~FileInfo() {
    for (auto &i : m_info)
        delete i;
    for (auto &i : m_tags)
        delete i.second;
    for (auto &i : m_labs)
        delete i;
    delete m_save;
    delete m_fileRef;
    delete m_runLine;
    delete m_butImg;
}

void FileInfo::saveTags() {
    TagLib::Tag *tag = m_fileRef->tag();
    QString art = m_tags[TagsName::Artist]->text();
    QString alb = m_tags[TagsName::Album]->text();
    QString title = m_tags[TagsName::Name]->text();
    QString year = m_tags[TagsName::Year]->text();
    if (m_tags[TagsName::Year]->text().toInt() < 0) {
        QMessageBox::critical(this->parentWidget(), "",
                         "Not valid Year!\nCan not be negative");
        return;
    }
    if (m_tags[TagsName::Track]->text().toInt() < 0) {
        QMessageBox::critical(this->parentWidget(), "",
                         "Not valid Track!\nCan not be negative");
        return;
    }
    tag->setArtist(art.toStdString());
    tag->setAlbum(alb.toStdString());
    tag->setTitle(title.toStdString());
    tag->setComment(m_tags[TagsName::Comment]->text().toStdString());
    tag->setGenre(m_tags[TagsName::Genre]->text().toStdString());
    tag->setYear(year.toInt());
    tag->setTrack(m_tags[TagsName::Track]->text().toInt());
    m_runLine->setString(art + " - " + title);
    m_info[0]->setText(alb);
    m_info[1]->setText(year);
    m_fileRef->save();
    QMessageBox::about(this->parentWidget(), "", "Changes was recently saved");
}

void FileInfo::showEditLines() {
    m_labs.push_back(new QLabel("Artist", this));
    m_labs.last()->setGeometry(Tags_X, Tags_Y - 25, Tags_W, Tags_H);
    m_labs.last()->setAlignment(Qt::AlignCenter);
    m_tags[TagsName::Artist] = new QLineEdit(getArtist(), this);
    m_tags[TagsName::Artist]->setGeometry(Tags_X, Tags_Y, Tags_W, Tags_H);
    m_labs.push_back(new QLabel("Name", this));
    m_labs.last()->setGeometry(Tags_X, Tags_Y + 35, Tags_W, Tags_H);
    m_labs.last()->setAlignment(Qt::AlignCenter);
    m_tags[TagsName::Name] = new QLineEdit(getTitle(), this);
    m_tags[TagsName::Name]->setGeometry(Tags_X, Tags_Y + 60, Tags_W, Tags_H);
    m_labs.push_back(new QLabel("Album", this));
    m_labs.last()->setGeometry(Tags_X, Tags_Y + 95, Tags_W, Tags_H);
    m_labs.last()->setAlignment(Qt::AlignCenter);
    m_tags[TagsName::Album] = new QLineEdit(getAlbum(), this);
    m_tags[TagsName::Album]->setGeometry(Tags_X, Tags_Y + 120, Tags_W, Tags_H);
    m_labs.push_back(new QLabel("Year", this));
    m_labs.last()->setGeometry(Tags_X + 200, Tags_Y - 25, Tags_W, Tags_H);
    m_labs.last()->setAlignment(Qt::AlignCenter);
    m_tags[TagsName::Year] = new QLineEdit(getYear(), this);
    m_tags[TagsName::Year]->setGeometry(Tags_X + 200, Tags_Y, Tags_W, Tags_H);
    m_labs.push_back(new QLabel("Track", this));
    m_labs.last()->setGeometry(Tags_X + 200, Tags_Y + 35, Tags_W, Tags_H);
    m_labs.last()->setAlignment(Qt::AlignCenter);
    m_tags[TagsName::Track] = new QLineEdit(getTrack(), this);
    m_tags[TagsName::Track]->setGeometry(Tags_X + 200, Tags_Y + 60,
                                         Tags_W, Tags_H);
    m_labs.push_back(new QLabel("Genre", this));
    m_labs.last()->setGeometry(Tags_X + 200, Tags_Y + 95, Tags_W, Tags_H);
    m_labs.last()->setAlignment(Qt::AlignCenter);
    m_tags[TagsName::Genre] = new QLineEdit(getGenre(), this);
    m_tags[TagsName::Genre]->setGeometry(Tags_X + 200, Tags_Y + 120,
                                         Tags_W, Tags_H);
    m_labs.push_back(new QLabel("Comment", this));
    m_labs.last()->setGeometry(Tags_X + 80, Tags_Y + 155, Tags_W, Tags_H);
    m_labs.last()->setAlignment(Qt::AlignCenter);
    m_tags[TagsName::Comment] = new QLineEdit(getComment(), this);
    m_tags[TagsName::Comment]->setGeometry(Tags_X + 80, Tags_Y + 180,
                                            Tags_W + 50, Tags_H);   
}

QString FileInfo::getArtist() {
    TagLib::Tag *tag = m_fileRef->tag();
    std::string t(tag->artist().toCString());
    return QString(t.c_str());
}

QString FileInfo::getTitle() {
    TagLib::Tag *tag = m_fileRef->tag();
    std::string t(tag->title().toCString());
    return QString(t.c_str());
}

QString FileInfo::getAlbum() {
    TagLib::Tag *tag = m_fileRef->tag();
    std::string t(tag->album().toCString());
    return QString(t.c_str());
}

QString FileInfo::getYear() {
    TagLib::Tag *tag = m_fileRef->tag();
    std::string t = std::to_string(tag->year());
    if (t == "0")
        t = "";
    return QString(t.c_str());
}

QString FileInfo::getTrack() {
    TagLib::Tag *tag = m_fileRef->tag();
    std::string t = std::to_string(tag->track());
    if (t == "0")
        t = "";
    return QString(t.c_str());
}

QString FileInfo::getGenre() {
    TagLib::Tag *tag = m_fileRef->tag();
    std::string t(tag->genre().toCString());
    return QString(t.c_str());
}

QString FileInfo::getComment() {
    TagLib::Tag *tag = m_fileRef->tag();
    std::string t(tag->comment().toCString());
    return QString(t.c_str());
}

QImage FileInfo::getImage() {
    TagLib::MPEG::File file(m_filename.c_str());
    TagLib::ID3v2::Tag *m_tag = file.ID3v2Tag(true);
    TagLib::ID3v2::FrameList frameList = m_tag->frameList("APIC");
    if(frameList.isEmpty()) 
        return QImage("../../app/resource/note.jpeg").scaled(100, 100, Qt::KeepAspectRatio);
    TagLib::ID3v2::AttachedPictureFrame *coverImg = 
        static_cast<TagLib::ID3v2::AttachedPictureFrame *>(frameList.front());
    QImage coverQImg;
    coverQImg.loadFromData((const uchar *)coverImg->picture().data(),
                            coverImg->picture().size());
    return coverQImg.scaled(100, 100, Qt::KeepAspectRatio);
}

class ImageFile : public TagLib::File {
public:
    ImageFile(const char *file) : TagLib::File(file) { }

    TagLib::ByteVector data() {
        return readBlock(length());
    }
private:
    virtual TagLib::Tag *tag() const { return 0; }
    virtual TagLib::AudioProperties *audioProperties() const { return 0; }
    virtual bool save() { return false; }
};

void FileInfo::setImage() {
    QString path = QFileDialog::getOpenFileName(this, tr("Open file"), "~",
                                                tr("*.jpeg"));
    if (!path.size())
        return;
    TagLib::MPEG::File audioFile(m_filename.data());
    TagLib::ID3v2::Tag *tag = audioFile.ID3v2Tag(true);
    ImageFile img(path.toStdString().data());
    TagLib::ID3v2::AttachedPictureFrame *m_frame = 
                        new TagLib::ID3v2::AttachedPictureFrame;
    m_frame->setMimeType("image/jpeg");
    m_frame->setPicture(img.data());
    tag->addFrame(m_frame);
    audioFile.save();
    m_image.load(path);
    m_image = m_image.scaled(100, 100, Qt::KeepAspectRatio);
    m_info.last()->setPixmap(QPixmap::fromImage(m_image));
    QMessageBox::about(this->parentWidget(), "", "Change image was recently saved");
}
