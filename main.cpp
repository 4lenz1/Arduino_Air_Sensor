#include <QApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QSerialPort>
#include <QObject>
#include <datareceive.h>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
