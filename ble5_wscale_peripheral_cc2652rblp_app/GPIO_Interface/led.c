/******************************************************************************

 @file       led.c

 @brief      this file contains code library to handle the led operations

 Created on: 17 Mar 2019
 Author: Markel Robregado

*****************************************************************************/

#ifndef EXCLUDE_LED
/*********************************************************************
 * INCLUDES
 */

#include "util.h"
#include "led.h"
#include "simple_peripheral.h"
#include "Board.h"


/*********************************************************************
 * MACROS
 */

/*********************************************************************
 * CONSTANTS
 */

/*********************************************************************
 * TYPEDEFS
 */

/*********************************************************************
 * GLOBAL VARIABLES
 */
 
 uint32_t BlinkCount;
 /*********************************************************************
 * EXTERNAL VARIABLES
 */

/*********************************************************************
 * EXTERNAL FUNCTIONS
 */

/*********************************************************************
 * LOCAL VARIABLES
 */
 

/*********************************************************************
 * LOCAL FUNCTIONS
 */

const PIN_Config LedPinTable[] =
{
    Board_PIN_LED0 | PIN_GPIO_OUTPUT_EN | PIN_GPIO_LOW | PIN_PUSHPULL | PIN_DRVSTR_MIN,
    Board_PIN_LED1 | PIN_GPIO_OUTPUT_EN | PIN_GPIO_LOW | PIN_PUSHPULL | PIN_DRVSTR_MIN,
    PIN_TERMINATE
};

PIN_State LedpinGpioState;
PIN_Handle LedPinHandle;
 

/*********************************************************************
 * @fn      Led_Init
 *
 * @brief   Bluetooth Connected Led Initialization
 *
 * @param   none
 *
 * @return  none
 */
void Led_Init(void)
{
    LedPinHandle = PIN_open(&LedpinGpioState, LedPinTable);
    Led_Stop();
}


/*********************************************************************
 * @fn      Led_Reset
 *
 * @brief   Bluetooth Connected Led Indication
 *
 * @param   none
 *
 * @return  none
 */
void Led_Reset(void)
{
    PIN_setOutputValue(LedPinHandle, Board_PIN_LED0, LED_OFF);
    PIN_setOutputValue(LedPinHandle, Board_PIN_LED1, LED_OFF);
}


/*********************************************************************
 * @fn      Led_On
 *
 * @brief   Bluetooth Connected Led Indication
 *
 * @param   none
 *
 * @return  none
 */
void Led_On(uint8_t led)
{
    PIN_setOutputValue(LedPinHandle, led, LED_ON);
}


/*********************************************************************
 * @fn      Led_Off
 *
 * @brief   Turn off led
 *
 * @param   none
 *
 * @return  none
 */
void Led_Off(uint8_t led)
{
    PIN_setOutputValue(LedPinHandle, led, LED_OFF);
}


/*********************************************************************
 * @fn      Led_Stop
 *
 * @brief   Turn off led. Stop led clocks
 *
 * @param   none
 *
 * @return  none
 */
void Led_Stop(void)
{
    Led_Reset();
}



/*********************************************************************
* Private functions
*/

#endif // EXCLUDE_LED

/*********************************************************************
*********************************************************************/

