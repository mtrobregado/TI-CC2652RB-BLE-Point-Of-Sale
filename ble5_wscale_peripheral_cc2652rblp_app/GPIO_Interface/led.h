/******************************************************************************

 @file       led.h

 @brief      this file contains led function prototypes

 Created on: 17 Mar 2019
 Author: Markel Robregado

*****************************************************************************/


#ifndef LED_H
#define LED_H

#ifdef __cplusplus
extern "C"
{
#endif

/*********************************************************************
 * INCLUDES
 */

/*********************************************************************
 * CONSTANTS
 */

/* LEDS turned on if 0 and off if 1 */      
#define LED_ON                  1
#define LED_OFF                 0
      
/*********************************************************************
 * MACROS
 */

/*********************************************************************
 * FUNCTIONS
 */

extern void Led_Init(void);
extern void Led_Reset(void);
extern void Led_On(uint8_t led);
extern void Led_Off(uint8_t led);
extern void Led_Stop(void);

/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif /* LED_H */
