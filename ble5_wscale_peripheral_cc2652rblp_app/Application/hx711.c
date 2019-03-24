/******************************************************************************

 @file       led.c

 @brief      this file contains code library to handle the led operations

 Created on: 17 Mar 2019
 Author: Markel Robregado

*****************************************************************************/

#include <ti/drivers/PIN.h>
#include <ti/drivers/pin/PINCC26XX.h>

#include "hx711.h"
/* Example/Board Header files */
#include "Board.h"


/*********************************************************************
 * CONSTANTS
 */

#define LOW  0
#define HIGH 1
#define LSBFIRST 0
#define MSBFIRST 1

/*********************************************************************
 * LOCAL VARIABLES
 */

/* Pin driver handles */
static PIN_Handle hx711PinHandle;

/* Global memory storage for a PIN_Config table */
static PIN_State hx711PinState;

/*
 * Initial HX711 pin configuration table
 */
PIN_Config hx711PinTable[] = {
    Board_DIO22_SCK | PIN_GPIO_OUTPUT_EN | PIN_GPIO_LOW | PIN_PUSHPULL | PIN_DRVSTR_MAX,
    Board_DIO24_DOUT | PIN_INPUT_EN | PIN_PULLUP | PIN_HYSTERESIS,
    PIN_TERMINATE
};

float SCALE = 0;
float OFFSET = 0;
uint8_t GAIN = 128;

/*********************************************************************
 * LOCAL FUNCTIONS
 */
static void HX711_SetGain(uint8_t gain);
static int32_t HX711_Read(void);
static void HX711_SetOffset(int32_t offset);

/*********************************************************************
 * @fn      HX711_Init
 *
 * @brief   HX711 Initialization
 *
 * @param   none
 *
 * @return  none
 */
void HX711_Init(void)
{
    /* Open LED pins */
    hx711PinHandle = PIN_open(&hx711PinState, hx711PinTable);

    if(!hx711PinHandle)
    {
        /* Error initializing board LED pins */
        while(1);
    }

    HX711_SetGain(GAIN);
    HX711_SetScale(CALIBRATION_FACTOR);
    HX711_Tare(10);
}

/*********************************************************************
 * @fn      HX711_IsReady
 *
 * @brief   HX711 check if ready
 *
 * @param   none
 *
 * @return
 */
bool HX711_IsReady()
{
   return (PIN_getInputValue(Board_DIO24_DOUT) == LOW);
}

/*********************************************************************
 * @fn      HX711_Init
 *
 * @brief   HX711 Initialization
 *
 * @param   none
 *
 * @return  none
 */
static void HX711_SetGain(uint8_t gain)
{
    switch (gain)
    {
        case 128:       // channel A, gain factor 128
            GAIN = 1;
            break;
        case 64:        // channel A, gain factor 64
            GAIN = 3;
            break;
        case 32:        // channel B, gain factor 32
            GAIN = 2;
            break;
        default:
            break;

    }

    PIN_setOutputValue(hx711PinHandle, Board_DIO22_SCK, LOW);
    HX711_Read();
}

/*********************************************************************
 * @fn      HX711_ShiftIn
 *
 * @brief
 *
 * @param   dataPin, clockPin, bitOrder
 *
 * @return  value
 */
uint8_t HX711_ShiftIn(PIN_Id dataPin, PIN_Id clockPin, uint8_t bitOrder)
{
    uint8_t value = 0;
    uint8_t i;

    for (i = 0; i < 8; ++i)
    {
        PIN_setOutputValue(hx711PinHandle, clockPin, HIGH);

        if (bitOrder == LSBFIRST)
        {

            value |= PIN_getInputValue(dataPin) << i;
        }
        else
        {
            value |= PIN_getInputValue(dataPin) << (7 - i);
        }

        PIN_setOutputValue(hx711PinHandle, clockPin, LOW);
    }

    return value;
}

/*********************************************************************
 * @fn      HX711_Read
 *
 * @brief   HX711 read
 *
 * @param   none
 *
 * @return
 */
static int32_t HX711_Read(void)
{
    uint16_t i = 0;
    uint32_t value = 0;
    uint8_t data[3] = { 0 };
    uint8_t filler = 0x00;

    // wait for the chip to become ready
    while (!HX711_IsReady());

    // pulse the clock pin 24 times to read the data
    data[2] = HX711_ShiftIn(Board_DIO24_DOUT, Board_DIO22_SCK, MSBFIRST);
    data[1] = HX711_ShiftIn(Board_DIO24_DOUT, Board_DIO22_SCK, MSBFIRST);
    data[0] = HX711_ShiftIn(Board_DIO24_DOUT, Board_DIO22_SCK, MSBFIRST);

    // set the channel and the gain factor for the next reading using the clock pin
    for (i = 0; i < GAIN; i++)
    {
        PIN_setOutputValue(hx711PinHandle, Board_DIO22_SCK, HIGH);
        PIN_setOutputValue(hx711PinHandle, Board_DIO22_SCK, LOW);
    }

    // Datasheet indicates the value is returned as a two's complement value
    // Flip all the bits
    data[2] = ~data[2];
    data[1] = ~data[1];
    data[0] = ~data[0];

    // Replicate the most significant bit to pad out a 32-bit signed integer
    if ( data[2] & 0x80 )
    {
        filler = 0xFF;
    }
    else if ((0x7F == data[2]) && (0xFF == data[1]) && (0xFF == data[0]))
    {
        filler = 0xFF;
    }
    else
    {
        filler = 0x00;
    }

    // Construct a 32-bit signed integer
    value = ((uint32_t)(filler) << 24 | (uint32_t)(data[2]) << 16
             | (uint32_t)(data[1]) << 8 | (uint32_t)(data[0]));

    // ... and add 1
    return (int32_t)(++value);
}

/*********************************************************************
 * @fn      HX711_ReadAverage
 *
 * @brief   HX711 Read Average
 *
 * @param   times
 *
 * @return  Average Value
 */
int32_t HX711_ReadAverage(uint8_t times)
{
    int32_t sum = 0;
    uint8_t i = 0;

    for (i = 0; i < times; i++)
    {
        sum += HX711_Read();
    }

    return sum / times;
}

/*********************************************************************
 * @fn      HX711_GetValue
 *
 * @brief   HX711 Initialization
 *
 * @param   times
 *
 * @return
 */
double HX711_GetValue(uint8_t times)
{
    return  HX711_ReadAverage(times) - OFFSET;
}

/*********************************************************************
 * @fn      HX711_GetUnits
 *
 * @brief   HX711 Initialization
 *
 * @param   times
 *
 * @return  Weight in units
 */
float HX711_GetUnits(uint8_t times)
{
    return HX711_GetValue(times) / SCALE;
}

/*********************************************************************
 * @fn      HX711_Tare
 *
 * @brief   HX711 Tare
 *
 * @param   times
 *
 * @return  none
 */
void HX711_Tare(uint8_t times)
{
    double sum = HX711_ReadAverage(times);
    HX711_SetOffset(sum);
}

/*********************************************************************
 * @fn      HX711_SetScale
 *
 * @brief   HX711 Set Scale Value
 *
 * @param   scale
 *
 * @return  none
 */
void HX711_SetScale(float scale)
{
    SCALE = scale;
}

/*********************************************************************
 * @fn      HX711_GetScale
 *
 * @brief   HX711 Get Scale Value
 *
 * @param   none
 *
 * @return  SCALE
 */
float HX711_GetScale(void)
{
    return SCALE;
}

/*********************************************************************
 * @fn      HX711_SetOffset
 *
 * @brief   HX711 Set Offset Value
 *
 * @param   none
 *
 * @return  offset
 */
static void HX711_SetOffset(int32_t offset)
{
    OFFSET = offset;
}

/*********************************************************************
 * @fn      HX711_GetOffset
 *
 * @brief   HX711 Get Offset
 *
 * @param   none
 *
 * @return  OFFSET
 */
long HX711_GetOffset(void)
{
    return OFFSET;
}

/*********************************************************************
 * @fn      HX711_PowerDown
 *
 * @brief   HX711 Initialization
 *
 * @param   none
 *
 * @return  none
 */
void HX711_PowerDown(void)
{
    PIN_setOutputValue(hx711PinHandle, Board_DIO22_SCK, LOW);
    PIN_setOutputValue(hx711PinHandle, Board_DIO22_SCK, HIGH);
}

/*********************************************************************
 * @fn      HX711_PowerUp
 *
 * @brief   HX711 Power Up
 *
 * @param   none
 *
 * @return  none
 */
void HX711_PowerUp(void)
{
    PIN_setOutputValue(hx711PinHandle, Board_DIO22_SCK, LOW);
}

