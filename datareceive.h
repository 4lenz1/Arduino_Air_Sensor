#ifndef DATARECEIVE_H
#define DATARECEIVE_H

#include <QObject>
#include <QSerialPort>
class datareceive : public QObject
{
    Q_OBJECT
public:
    explicit datareceive(QObject *parent = 0);

signals:

public slots:
     void getData();
};

#endif // DATARECEIVE_H
