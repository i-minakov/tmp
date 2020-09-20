#include <iostream>
#include <stdio.h>
#include <tag.h>
#include <fileref.h>
#include <QApllication>

using namespace TagLib;

int main() {
    FileRef f("../test2.wav");
    std::cout << f.tag()->artist() << std::endl;
    f.tag()->setArtist("Olya Barabolya");
    f.save();
    std::cout << f.tag()->artist() << std::endl;
    
    return 0;
}
