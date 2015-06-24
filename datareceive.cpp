#include "datareceive.h"
#include <QDebug>

QSerialPort serial;
datareceive::datareceive(QObject *parent) : QObject(parent)
{
    serial.setPortName("COM5");
    serial.open(QIODevice::ReadWrite);
    serial.setBaudRate(QSerialPort::Baud9600);
    serial.setDataBits(QSerialPort::Data8);
    serial.setParity(QSerialPort::NoParity);
    serial.setStopBits(QSerialPort::OneStop);
    serial.setFlowControl(QSerialPort::HardwareControl);


    connect(&serial, SIGNAL(readyRead()) , this  , SLOT(getData()));
}

void datareceive::getData(){
    QByteArray byteArray;
    byteArray = serial.readAll();
    QString str = byteArray;
    QStringList list ;

//list = str.split(":");

    qDebug() << str  ;
}
