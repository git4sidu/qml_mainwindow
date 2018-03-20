#include <QApplication>
#include <QQmlApplicationEngine>

#include "mainwindow.h"
#include "backend.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<BackEnd>("MyBackend", 1, 0, "BackEnd");

    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    
    return a.exec();
}
