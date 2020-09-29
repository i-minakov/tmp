#include <iostream>
#include <stdio.h>
#include "src/Win.h"
#include <QApplication>
#include <QMenuBar>
#include <QMenu>

using namespace TagLib;

int main(int argc, char *argv[]) {
    QApplication a(argc, argv);
    Win win(argv[1]);
    win.setWindowTitle("Utag");
    win.resize(800, 500);
    win.setFixedSize(800, 500);
    win.show();
    return a.exec();
}
