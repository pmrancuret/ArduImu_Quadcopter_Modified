################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/arduino-1.0.4-windows/arduino-1.0.4/libraries/FastSerial/BetterStream.cpp \
C:/arduino-1.0.4-windows/arduino-1.0.4/libraries/FastSerial/FastSerial.cpp \
C:/arduino-1.0.4-windows/arduino-1.0.4/libraries/FastSerial/vprintf.cpp 

S_UPPER_SRCS += \
C:/arduino-1.0.4-windows/arduino-1.0.4/libraries/FastSerial/ftoa_engine.S \
C:/arduino-1.0.4-windows/arduino-1.0.4/libraries/FastSerial/ultoa_invert.S 

OBJS += \
./FastSerial/BetterStream.o \
./FastSerial/FastSerial.o \
./FastSerial/ftoa_engine.o \
./FastSerial/ultoa_invert.o \
./FastSerial/vprintf.o 

S_UPPER_DEPS += \
./FastSerial/ftoa_engine.d \
./FastSerial/ultoa_invert.d 

CPP_DEPS += \
./FastSerial/BetterStream.d \
./FastSerial/FastSerial.d \
./FastSerial/vprintf.d 


# Each subdirectory must supply rules for building sources it contributes
FastSerial/BetterStream.o: C:/arduino-1.0.4-windows/arduino-1.0.4/libraries/FastSerial/BetterStream.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\arduino\cores\arduino" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\arduino\variants\standard" -I"D:\Documents\Arduino\ArduImu_1_9_8_Modified" -IC:/arduino-1.0.4-windows/arduino-1.0.4/hardware/tools/avr/avr/include -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\Wire" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\Wire\utility" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_GPS" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\FastSerial" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_Common" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_Math" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\SPI" -D__IN_ECLIPSE__=1 -DARDUINO=104 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

FastSerial/FastSerial.o: C:/arduino-1.0.4-windows/arduino-1.0.4/libraries/FastSerial/FastSerial.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\arduino\cores\arduino" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\arduino\variants\standard" -I"D:\Documents\Arduino\ArduImu_1_9_8_Modified" -IC:/arduino-1.0.4-windows/arduino-1.0.4/hardware/tools/avr/avr/include -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\Wire" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\Wire\utility" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_GPS" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\FastSerial" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_Common" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_Math" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\SPI" -D__IN_ECLIPSE__=1 -DARDUINO=104 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

FastSerial/ftoa_engine.o: C:/arduino-1.0.4-windows/arduino-1.0.4/libraries/FastSerial/ftoa_engine.S
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Assembler'
	avr-gcc -x assembler-with-cpp -IC:/arduino-1.0.4-windows/arduino-1.0.4/hardware/tools/avr/avr/include -I../ArduImu_1_9_8_Modified/AP_Menu -mmcu=atmega328p -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FastSerial/ultoa_invert.o: C:/arduino-1.0.4-windows/arduino-1.0.4/libraries/FastSerial/ultoa_invert.S
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Assembler'
	avr-gcc -x assembler-with-cpp -IC:/arduino-1.0.4-windows/arduino-1.0.4/hardware/tools/avr/avr/include -I../ArduImu_1_9_8_Modified/AP_Menu -mmcu=atmega328p -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

FastSerial/vprintf.o: C:/arduino-1.0.4-windows/arduino-1.0.4/libraries/FastSerial/vprintf.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\arduino\cores\arduino" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\arduino\variants\standard" -I"D:\Documents\Arduino\ArduImu_1_9_8_Modified" -IC:/arduino-1.0.4-windows/arduino-1.0.4/hardware/tools/avr/avr/include -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\Wire" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\Wire\utility" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_GPS" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\FastSerial" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_Common" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_Math" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\SPI" -D__IN_ECLIPSE__=1 -DARDUINO=104 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '


