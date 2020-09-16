
/**
 * @file nnetmicro.h
 * @author Dilip Kumar Sharma
 * @brief Start file.
 */

#ifndef NNETMICRO_H
#define NNETMICRO_H


#include <QUdpSocket>
#include <QtCore>
#include <QObject>


namespace nova {

/**
 * @brief The NNetMicro class
 */
class NNetMicro : public QObject
{
    Q_OBJECT

public:
    /**
     * @brief NNetMicro constructor
     */
    explicit NNetMicro(QObject *parent = nullptr);

    /**
     * @brief ~NNetMicro destructor
     */
    ~NNetMicro();
    /**
     * @brief callback method
     * @param NA
     * @return true for success otherwise false
     */
    void my_call_back();

signals:

public slots:
    void connected();
    void disconnected();
    void readyRead();

private:
    QUdpSocket *socket;
    int messageCount;
signals:
};

////////////////////////////////////////////////////////////////////////////////

} // namespace nova

#endif // NNETMICRO_H
