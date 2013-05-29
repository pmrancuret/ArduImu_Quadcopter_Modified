################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ArduImu_1_9_8_Modified.cpp 

PDE_SRCS += \
../ADC.pde \
../DCM.pde \
../HMC5883.pde \
../MPU6000.pde \
../Output.pde \
../Vector.pde \
../matrix.pde 

OBJS += \
./ADC.o \
./ArduImu_1_9_8_Modified.o \
./DCM.o \
./HMC5883.o \
./MPU6000.o \
./Output.o \
./Vector.o \
./matrix.o 

CPP_DEPS += \
./ArduImu_1_9_8_Modified.d 

PDE_DEPS += \
./ADC.d \
./DCM.d \
./HMC5883.d \
./MPU6000.d \
./Output.d \
./Vector.d \
./matrix.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.pde
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\arduino\cores\arduino" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\arduino\variants\standard" -I"D:\Documents\Arduino\ArduImu_1_9_8_Modified" -IC:/arduino-1.0.4-windows/arduino-1.0.4/hardware/tools/avr/avr/include -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\Wire" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\Wire\utility" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_GPS" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\FastSerial" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_Common" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_Math" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\SPI" -D__IN_ECLIPSE__=1 -DARDUINO=104 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '

%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: AVR C++ Compiler'
	avr-g++ -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\arduino\cores\arduino" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\hardware\arduino\variants\standard" -I"D:\Documents\Arduino\ArduImu_1_9_8_Modified" -IC:/arduino-1.0.4-windows/arduino-1.0.4/hardware/tools/avr/avr/include -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\Wire" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\Wire\utility" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_GPS" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\FastSerial" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_Common" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\AP_Math" -I"C:\arduino-1.0.4-windows\arduino-1.0.4\libraries\SPI" -D__IN_ECLIPSE__=1 -DARDUINO=104 -DUSB_PID= -DUSB_VID= -Wall -Os -ffunction-sections -fdata-sections -fno-exceptions -g -mmcu=atmega328p -DF_CPU=16000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"  -c -o "$@" -x c++ "$<"
	@echo 'Finished building: $<'
	@echo ' '


