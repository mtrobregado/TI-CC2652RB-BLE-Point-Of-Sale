
/******************************************************************************

 @file       hx711.h

 @brief      this file contains hx711 function prototypes

 Created on: 17 Mar 2019
 Author: Markel Robregado

*****************************************************************************/

#ifndef HX711_H_
#define HX711_H_

/*********************************************************************
 * CONSTANTS
 */
#define CALIBRATION_FACTOR -322930.0

/*********************************************************************
 * FUNCTIONS
 */
extern void HX711_Init(void);
extern void HX711_SetScale(float scale);
extern void HX711_Tare(uint8_t times);
extern float HX711_GetUnits(uint8_t times);


#endif /* HX711_H_ */
