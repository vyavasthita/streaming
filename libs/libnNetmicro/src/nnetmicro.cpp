#include "nnetmicro.h"

using namespace nova;

NNetMicro::NNetMicro(QObject *parent) : QObject(parent), messageCount(0)
{
    socket = new QUdpSocket(this);

    connect(socket, SIGNAL(connected()), this, SLOT(connected()));
    connect(socket, SIGNAL(disconnected()), this, SLOT(disconnected()));
    connect(socket, SIGNAL(readyRead()), this, SLOT(readyRead()));

    if(!socket->bind(QHostAddress::Any, 50001))
    {
        qDebug() << "Server could not start!";
    }
    else
    {
        qDebug() << "Server started!";
    }
}

NNetMicro::~NNetMicro()
{
    
}

void NNetMicro::my_call_back()
{
    
}

void NNetMicro::connected()
{
    qDebug() << "Connected";
}

void NNetMicro::disconnected()
{
    qDebug() << "Disconnected";
}

void NNetMicro::readyRead()
{
    // when data comes in
    QByteArray buffer;

    buffer.resize(socket->pendingDatagramSize());

    QHostAddress sender;
    quint16 senderPort;

    socket->readDatagram(buffer.data(), buffer.size(), &sender, &senderPort);

    qDebug() << "Message Count: " << ++messageCount;
    qDebug() << "Message From: " << sender.toString();
    qDebug() << "Message Port: " << senderPort;
    qDebug() << "Message Size: " << buffer.size();
    qDebug() << "Message: ";
    qDebug() << buffer;

    qDebug() << "******************************************************************************";

}
