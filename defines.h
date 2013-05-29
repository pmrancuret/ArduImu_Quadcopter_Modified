/*
 * defines.h
 *
 *  Created on: May 26, 2013
 *      Author: Rancuret
 */

#ifndef DEFINES_H_
#define DEFINES_H_

//**********************************************************************
//  This section contains USER PARAMETERS !!!
//
//**********************************************************************

// *** NOTE!   Hardware version - Can be used for v1 (daughterboards) , v2 (flat) or new v3 (MPU6000)
#define BOARD_VERSION 3 // 1 For V1 and 2 for V2 and 3 for new V3

#define GPS_CONNECTION 0 // 0 for GPS pins, 1 for programming pins

// GPS Type Selection - Note Ublox or MediaTek is recommended.  Support for NMEA is limited.
#define GPS_PROTOCOL 1    // 1 - NMEA,  2 - EM406,  3 - Ublox, 4 -- MediaTek

// Enable Air Start uses Remove Before Fly flag - connection to pin 6 on ArduPilot
#define ENABLE_AIR_START 0  //  1 if using airstart/groundstart signaling, 0 if not
#define GROUNDSTART_PIN 8    //  Pin number used for ground start signal (recommend 10 on v1 and 8 on v2 hardware)

/*Min Speed Filter for Yaw drift Correction*/
#define SPEEDFILT 2 // >1 use min speed filter for yaw drift cancellation (m/s), 0=do not use speed filter

/*For debugging propurses*/
#define PRINT_DEBUG 0   //Will print Debug messages

//OUTPUTMODE=1 will print the corrected data, 0 will print uncorrected data of the gyros (with drift), 2 will print accelerometer only data
#define OUTPUTMODE 1

#define PRINT_DCM 1     //Will print the whole direction cosine matrix
#define PRINT_ANALOGS 0 //Will print the analog raw data
#define PRINT_EULER 1   //Will print the Euler angles Roll, Pitch and Yaw
#define PRINT_GPS 0     //Will print GPS data
#define PRINT_MAGNETOMETER 1     //Will print Magnetometer data (if magnetometer is enabled)

// *** NOTE!   To use ArduIMU with ArduPilot you must select binary output messages (change to 1 here)
#define PRINT_BINARY 1  //Will print binary message and suppress ASCII messages (above)

// *** NOTE!   Performance reporting is only supported for Ublox.  Set to 0 for others
#define PERFORMANCE_REPORTING 0  //Will include performance reports in the binary output ~ 1/2 min

/* Support for optional magnetometer (1 enabled, 0 dissabled) */
#define USE_MAGNETOMETER 1 // use 1 if you want to make yaw gyro drift corrections using the optional magnetometer

// Local magnetic declination (in degrees)
// I use this web : http://www.ngdc.noaa.gov/geomagmodels/Declination.jsp
#define MAGNETIC_DECLINATION -6.0    // corrects magnetic bearing to true north
// Magnetometer OFFSETS (magnetometer calibration) (only for ArduIMU v3)
#define MAG_OFFSET_X 0
#define MAG_OFFSET_Y 0
#define MAG_OFFSET_Z 0

/* Support for optional barometer (1 enabled, 0 dissabled) */
#define USE_BAROMETER 0 	// use 1 if you want to get altitude using the optional absolute pressure sensor
#define ALT_MIX	50			// For binary messages: GPS or barometric altitude.  0 to 100 = % of barometric.  For example 75 gives 25% GPS alt and 75% baro

//**********************************************************************
//  End of user parameters
//**********************************************************************

#define SOFTWARE_VER "1.9"


// GPS Selection
//FastSerialPort0(Serial);		// Instantiate the fast serial driver
#if   GPS_PROTOCOL == 1
#include "AP_GPS_NMEA.h"
extern class AP_GPS_NMEA GPS;
#elif GPS_PROTOCOL == 2
#include "AP_GPS_406.h"
extern class AP_GPS_406	GPS;
#elif GPS_PROTOCOL == 3
#include "AP_GPS_UBLOX.h"
extern class AP_GPS_UBLOX GPS;
#elif GPS_PROTOCOL == 4
#include "AP_GPS_MTK.h"
extern class AP_GPS_MTK	GPS;
#else
#error Must define GPS_PROTOCOL with a valid value.
#endif


#define ToRad(x) (x*0.01745329252)  // *pi/180
#define ToDeg(x) (x*57.2957795131)  // *180/pi

#if BOARD_VERSION < 3
#define SERIAL_MUX_PIN 2
#define RED_LED_PIN 5
#define BLUE_LED_PIN 6
#define YELLOW_LED_PIN 7
// ADC : Voltage reference 3.3v / 10bits(1024 steps) => 3.22mV/ADC step
// ADXL335 Sensitivity(from datasheet) => 330mV/g, 3.22mV/ADC step => 330/3.22 = 102.48
// Tested value : 101
#define GRAVITY 101 //this equivalent to 1G in the raw data coming from the accelerometer
#define Accel_Scale(x) x*(GRAVITY/9.81)//Scaling the raw data of the accel to actual acceleration in meters for seconds square

// LPR530 & LY530 Sensitivity (from datasheet) => 3.33mV/º/s, 3.22mV/ADC step => 1.03
// Tested values : 0.96,0.96,0.94
#define Gyro_Gain_X 0.92 //X axis Gyro gain
#define Gyro_Gain_Y 0.92 //Y axis Gyro gain
#define Gyro_Gain_Z 0.94 //Z axis Gyro gain
#define Gyro_Scaled_X(x) x*ToRad(Gyro_Gain_X) //Return the scaled ADC raw data of the gyro in radians for second
#define Gyro_Scaled_Y(x) x*ToRad(Gyro_Gain_Y) //Return the scaled ADC raw data of the gyro in radians for second
#define Gyro_Scaled_Z(x) x*ToRad(Gyro_Gain_Z) //Return the scaled ADC raw data of the gyro in radians for second
#endif

#if BOARD_VERSION == 3
#define SERIAL_MUX_PIN 7
#define RED_LED_PIN 5
#define BLUE_LED_PIN 6
#define YELLOW_LED_PIN 5   // Yellow led is not used on ArduIMU v3
// MPU6000 4g range => g = 4096
#define GRAVITY 4096  // This equivalent to 1G in the raw data coming from the accelerometer
#define Accel_Scale(x) x*(GRAVITY/9.81)//Scaling the raw data of the accel to actual acceleration in meters for seconds square

// MPU6000 sensibility  (theorical 0.0152 => 1/65.6LSB/deg/s at 500deg/s) (theorical 0.0305 => 1/32.8LSB/deg/s at 1000deg/s) ( 0.0609 => 1/16.4LSB/deg/s at 2000deg/s)
#define Gyro_Gain_X 0.0609
#define Gyro_Gain_Y 0.0609
#define Gyro_Gain_Z 0.0609
#define Gyro_Scaled_X(x) x*ToRad(Gyro_Gain_X) //Return the scaled ADC raw data of the gyro in radians for second
#define Gyro_Scaled_Y(x) x*ToRad(Gyro_Gain_Y) //Return the scaled ADC raw data of the gyro in radians for second
#define Gyro_Scaled_Z(x) x*ToRad(Gyro_Gain_Z) //Return the scaled ADC raw data of the gyro in radians for second
#endif


#define Kp_ROLLPITCH 0.015
#define Ki_ROLLPITCH 0.000010
#define Kp_YAW 1.2
//#define Kp_YAW 2.5      //High yaw drift correction gain - use with caution!
#define Ki_YAW 0.00005

#define ADC_WARM_CYCLES 75

#define FALSE 0
#define TRUE 1


#endif /* DEFINES_H_ */
