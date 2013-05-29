// Only modify this file to include
// - function definitions (prototypes)
// - include files
// - extern variable definitions
// In the appropriate section

#ifndef ArduImu_1_9_8_Modified_H_
#define ArduImu_1_9_8_Modified_H_
#include <FastSerial.h>
#include "Arduino.h"
#include "defines.h"
//add your includes for the project ArduImu_1_9_8_Modified here
#if BOARD_VERSION == 3
#include "MPU6000.h"
#endif
#include <avr/eeprom.h>
#include <Wire.h>
#include <AP_GPS.h>			// ArduPilot GPS library

//end of add your includes here
#ifdef __cplusplus
extern "C" {
#endif
void loop();
void setup();
#ifdef __cplusplus
} // extern "C"
#endif

// global variables

// Axis definition: X axis pointing forward, Y axis pointing to the right and Z axis pointing down.
// Positive pitch : nose up
// Positive roll : right wing down
// Positive yaw : clockwise

extern float G_Dt;    // Integration time (DCM algorithm)

extern long timeNow; // Hold the milliseond value for now
extern long timer;   //general purpuse timer
extern long timer_old;
extern long timer24; //Second timer used to print values
extern boolean groundstartDone;    // Used to not repeat ground start

extern float AN[8]; //array that store the 6 ADC filtered data
extern float AN_OFFSET[8]; //Array that stores the Offset of the gyros

extern float Accel_Vector[3]; //Store the acceleration in a vector
extern float Gyro_Vector[3];//Store the gyros rutn rate in a vector
extern float Omega_Vector[3]; //Corrected Gyro_Vector data
extern float Omega_P[3];//Omega Proportional correction
extern float Omega_I[3];//Omega Integrator
extern float Omega[3];

// Euler angles
extern float roll;
extern float pitch;
extern float yaw;

extern int toggleMode;

extern float errorRollPitch[3];
extern float errorYaw[3];
extern float errorCourse;
extern float COGX; //Course overground X axis
extern float COGY; //Course overground Y axis

extern unsigned int cycleCount;
extern byte gyro_sat;

extern float DCM_Matrix[3][3];
extern float Update_Matrix[3][3]; //Gyros here

extern float Temporary_Matrix[3][3];

// Startup GPS variables
extern int gps_fix_count;		//used to count 5 good fixes at ground startup

//ADC variables
extern volatile uint8_t MuxSel;
extern volatile uint8_t analog_reference;
extern volatile uint16_t analog_buffer[8];
extern volatile uint8_t analog_count[8];


 #if BOARD_VERSION == 1
extern uint8_t sensors[6];   // Use these two lines for Hardware v1 (w/ daughterboards)
extern int SENSOR_SIGN[9];  //Sensor: GYROX, GYROY, GYROZ, ACCELX, ACCELY, ACCELZ
 #endif

 #if BOARD_VERSION == 2
extern uint8_t sensors[6];  // For Hardware v2 flat
extern int SENSOR_SIGN[9];
 #endif

 #if BOARD_VERSION == 3
extern uint8_t sensors[6];  // For Hardware v3 (MPU6000)
extern int SENSOR_SIGN[9];
 #endif


 // Performance Monitoring variables
 // Data collected and reported for ~1/2 minute intervals
 #if PERFORMANCE_REPORTING == 1
extern int mainLoop_count;              //Main loop cycles since last report
extern int G_Dt_max;                  //Max main loop cycle time in milliseconds
extern byte gyro_sat_count;
extern byte adc_constraints;
extern byte renorm_sqrt_count;
extern byte renorm_blowup_count;
extern byte gps_messages_sent;
extern long perf_mon_timer;
 #endif
extern unsigned int imu_health;

 #if USE_MAGNETOMETER==1
 // Magnetometer variables definition
 #if BOARD_VERSION < 3
 APM_Compass_Class APM_Compass;
 #endif
 extern int mag_x;
 extern int mag_y;
 extern int mag_z;
 extern int mag_offset[3];
 extern float Heading;
 extern float Heading_X;
 extern float Heading_Y;
 #endif

 // global variables from MPU6000.h
 extern volatile uint8_t MPU6000_newdata; //Sensor variables
 extern int accelX;
 extern int accelY;
 extern int accelZ;
 extern int gyroX;
 extern int gyroY;
 extern int gyroZ;


//add your function definitions for the project ArduImu_1_9_8_Modified here

// functions from ADC.pde
extern void Read_adc_raw();
extern float read_adc(int select);
extern void Analog_Init(void);
extern void Analog_Reference(uint8_t mode);

// functions from ArduImu_1_9_8_Modified.cpp
extern void startup_ground(void);
extern void startup_air(void);
extern void debug_print(char string[]);
extern void debug_handler(byte message);

// functions from DCM.pde
extern void Normalize(void);
extern void Drift_correction(void);
extern void Accel_adjust(void);
extern void Matrix_update(void);
extern void Euler_angles(void);

// functions from HMC5883.pde
extern bool HMC5883_init();
extern void HMC5883_set_offset(int offsetx, int offsety, int offsetz);
extern void HMC5883_read();
extern void HMC5883_calculate(float roll, float pitch);

// functions from matrix.pde
extern void Matrix_Multiply(float a[3][3], float b[3][3],float mat[3][3]);

// functions from MPU6000.pde
extern byte MPU6000_SPI_read(byte reg);
extern void MPU6000_SPI_write(byte reg, byte data);
extern void MPU6000_data_int();
extern void MPU6000_Init(void);
extern void MPU6000_Read();

// functions from Output.pde
extern void printdata(void);
extern void printPerfData(long time);
extern long convert_to_dec(float x);

// functions from Vector.pde
extern float Vector_Dot_Product(float vector1[3],float vector2[3]);
extern void Vector_Cross_Product(float vectorOut[3], float v1[3],float v2[3]);
extern void Vector_Scale(float vectorOut[3],float vectorIn[3], float scale2);
extern void Vector_Add(float vectorOut[3],float vectorIn1[3], float vectorIn2[3]);

//Do not add code below this line
#endif /* ArduImu_1_9_8_Modified_H_ */
