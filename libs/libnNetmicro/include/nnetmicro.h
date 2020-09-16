
/**
 * @file nnetmicro.h
 * @author Dilip Kumar Sharma
 * @brief Start file.
 */

#ifndef NNETMICRO_H
#define NNETMICRO_H


#include <QtCore>

namespace nova {

/**
 * @brief The NNetMicro class
 */
class NNetMicro
{
public:
    /**
     * @brief NNetMicro constructor
     */
    NNetMicro();

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
};

////////////////////////////////////////////////////////////////////////////////

} // namespace nova

#endif // NNETMICRO_H
