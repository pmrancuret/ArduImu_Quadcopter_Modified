################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/arduino-1.0.4-windows/arduino-1.0.4/libraries/AP_Menu/AP_Menu.cpp 

OBJS += \
./AP_Menu/AP_Menu.o 

CPP_DEPS += \
./AP_Menu/AP_Menu.d 


# Each subdirectory must supply rules for building sources it contributes
AP_Menu/AP_Menu.o: C:/arduino-1.0.4-windows/arduino-1.0.4/libraries/AP_Menu/AP_Menu.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\arduino\cores\arduino" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\arduino\variants\standard" -I"D:\Documents\Arduino\ArduImu_1_9_8_Modified" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\tools\avr\avr\include" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\Wire" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\Wire\utility" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_GPS" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\FastSerial" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_Common" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_Menu" -D__IN_ECLIPSE__=1 -DUSB_VID= -DUSB_PID= -DARDUINO=104 -Wall -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '


