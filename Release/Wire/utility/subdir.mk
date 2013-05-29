################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/arduino-1.0.4-windows/arduino-1.0.4/libraries/Wire/utility/twi.c 

OBJS += \
./Wire/utility/twi.o 

C_DEPS += \
./Wire/utility/twi.d 


# Each subdirectory must supply rules for building sources it contributes
Wire/utility/twi.o: C:/arduino-1.0.4-windows/arduino-1.0.4/libraries/Wire/utility/twi.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\arduino\cores\arduino" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\arduino\variants\standard" -I"D:\Documents\Arduino\ArduImu_1_9_8_Modified" -IC:/arduino-1.0.4-windows/arduino-1.0.4/hardware/tools/avr/avr/include -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\Wire" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\Wire\utility" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_GPS" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\FastSerial" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_Common" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_Math" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\SPI" -D__IN_ECLIPSE__=1 -DARDUINO=104 -DUSB_PID= -DUSB_VID= -Wall -Os -g -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


