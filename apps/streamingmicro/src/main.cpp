#include <QCoreApplication>
#include <QDebug>


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qDebug() << "Server is running....";
    return a.exec();
}
