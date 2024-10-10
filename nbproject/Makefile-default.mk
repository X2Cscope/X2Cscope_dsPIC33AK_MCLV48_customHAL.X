#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/X2Cscope_dsPIC33AK_MCLV48_customHAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/X2Cscope_dsPIC33AK_MCLV48_customHAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=hal/adc.c hal/clock.c hal/device_config.c hal/measure.c hal/port_config.c hal/pwm.c hal/timer1.c hal/uart1.c X2Cscope/X2Cscope.c X2Cscope/X2CscopeComm.c main.c app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/hal/adc.o ${OBJECTDIR}/hal/clock.o ${OBJECTDIR}/hal/device_config.o ${OBJECTDIR}/hal/measure.o ${OBJECTDIR}/hal/port_config.o ${OBJECTDIR}/hal/pwm.o ${OBJECTDIR}/hal/timer1.o ${OBJECTDIR}/hal/uart1.o ${OBJECTDIR}/X2Cscope/X2Cscope.o ${OBJECTDIR}/X2Cscope/X2CscopeComm.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/hal/adc.o.d ${OBJECTDIR}/hal/clock.o.d ${OBJECTDIR}/hal/device_config.o.d ${OBJECTDIR}/hal/measure.o.d ${OBJECTDIR}/hal/port_config.o.d ${OBJECTDIR}/hal/pwm.o.d ${OBJECTDIR}/hal/timer1.o.d ${OBJECTDIR}/hal/uart1.o.d ${OBJECTDIR}/X2Cscope/X2Cscope.o.d ${OBJECTDIR}/X2Cscope/X2CscopeComm.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/hal/adc.o ${OBJECTDIR}/hal/clock.o ${OBJECTDIR}/hal/device_config.o ${OBJECTDIR}/hal/measure.o ${OBJECTDIR}/hal/port_config.o ${OBJECTDIR}/hal/pwm.o ${OBJECTDIR}/hal/timer1.o ${OBJECTDIR}/hal/uart1.o ${OBJECTDIR}/X2Cscope/X2Cscope.o ${OBJECTDIR}/X2Cscope/X2CscopeComm.o ${OBJECTDIR}/main.o ${OBJECTDIR}/app.o

# Source Files
SOURCEFILES=hal/adc.c hal/clock.c hal/device_config.c hal/measure.c hal/port_config.c hal/pwm.c hal/timer1.c hal/uart1.c X2Cscope/X2Cscope.c X2Cscope/X2CscopeComm.c main.c app.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/X2Cscope_dsPIC33AK_MCLV48_customHAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33AK128MC106
MP_LINKER_FILE_OPTION=,--script=p33AK128MC106.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/hal/adc.o: hal/adc.c  .generated_files/flags/default/140934c88c3bf721891c5016744a13b4fff2ec49 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/adc.o.d 
	@${RM} ${OBJECTDIR}/hal/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/adc.c  -o ${OBJECTDIR}/hal/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/adc.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/clock.o: hal/clock.c  .generated_files/flags/default/79ed75ea0d5633e0ffcae66047ac504833df8dee .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/clock.o.d 
	@${RM} ${OBJECTDIR}/hal/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/clock.c  -o ${OBJECTDIR}/hal/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/clock.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/device_config.o: hal/device_config.c  .generated_files/flags/default/8ec5f0382175f7a5620ada670392e932aa642564 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/device_config.o.d 
	@${RM} ${OBJECTDIR}/hal/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/device_config.c  -o ${OBJECTDIR}/hal/device_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/device_config.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/measure.o: hal/measure.c  .generated_files/flags/default/7908ac8b1ab91fec3d252f126df15ad5c1deba51 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/measure.o.d 
	@${RM} ${OBJECTDIR}/hal/measure.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/measure.c  -o ${OBJECTDIR}/hal/measure.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/measure.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/port_config.o: hal/port_config.c  .generated_files/flags/default/44fcf5a488189715a50f9ae8e1406d4993e76fcd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/port_config.o.d 
	@${RM} ${OBJECTDIR}/hal/port_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/port_config.c  -o ${OBJECTDIR}/hal/port_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/port_config.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/pwm.o: hal/pwm.c  .generated_files/flags/default/9cd28972f372288ca2d5cceba96f17c218b7086c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/pwm.o.d 
	@${RM} ${OBJECTDIR}/hal/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/pwm.c  -o ${OBJECTDIR}/hal/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/pwm.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/timer1.o: hal/timer1.c  .generated_files/flags/default/4b068f76d6e62462922e753a4c8cec9fa0264e9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/timer1.o.d 
	@${RM} ${OBJECTDIR}/hal/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/timer1.c  -o ${OBJECTDIR}/hal/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/timer1.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/uart1.o: hal/uart1.c  .generated_files/flags/default/9f22fd23b280c2981ad3cf126b81d5587c7c8559 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/uart1.o.d 
	@${RM} ${OBJECTDIR}/hal/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/uart1.c  -o ${OBJECTDIR}/hal/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/uart1.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/X2Cscope/X2Cscope.o: X2Cscope/X2Cscope.c  .generated_files/flags/default/fdeb1b531cc870cf2d100aa897cd9ecc82cdb6c7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/X2Cscope" 
	@${RM} ${OBJECTDIR}/X2Cscope/X2Cscope.o.d 
	@${RM} ${OBJECTDIR}/X2Cscope/X2Cscope.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  X2Cscope/X2Cscope.c  -o ${OBJECTDIR}/X2Cscope/X2Cscope.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/X2Cscope/X2Cscope.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/X2Cscope/X2CscopeComm.o: X2Cscope/X2CscopeComm.c  .generated_files/flags/default/2b2932989632e03c257616c19bcd34b3d11463be .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/X2Cscope" 
	@${RM} ${OBJECTDIR}/X2Cscope/X2CscopeComm.o.d 
	@${RM} ${OBJECTDIR}/X2Cscope/X2CscopeComm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  X2Cscope/X2CscopeComm.c  -o ${OBJECTDIR}/X2Cscope/X2CscopeComm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/X2Cscope/X2CscopeComm.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/327aaabf1c7ba0b6536d0e7884364bc829540d4a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/app.o: app.c  .generated_files/flags/default/94d40aef63d904cf1fff0b8373fd772cde641e62 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app.o.d 
	@${RM} ${OBJECTDIR}/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app.c  -o ${OBJECTDIR}/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/app.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/hal/adc.o: hal/adc.c  .generated_files/flags/default/12429e3d0bece34fde66a64281f383221a9bb0f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/adc.o.d 
	@${RM} ${OBJECTDIR}/hal/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/adc.c  -o ${OBJECTDIR}/hal/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/adc.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/clock.o: hal/clock.c  .generated_files/flags/default/170d656d9949853a0b720cafa28e15b92151b746 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/clock.o.d 
	@${RM} ${OBJECTDIR}/hal/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/clock.c  -o ${OBJECTDIR}/hal/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/clock.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/device_config.o: hal/device_config.c  .generated_files/flags/default/f9a11d290cf7d6a5f83db9d18463f26e1066ed06 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/device_config.o.d 
	@${RM} ${OBJECTDIR}/hal/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/device_config.c  -o ${OBJECTDIR}/hal/device_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/device_config.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/measure.o: hal/measure.c  .generated_files/flags/default/ac2fdb873adbb93894dcefd26ad3b618b08276ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/measure.o.d 
	@${RM} ${OBJECTDIR}/hal/measure.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/measure.c  -o ${OBJECTDIR}/hal/measure.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/measure.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/port_config.o: hal/port_config.c  .generated_files/flags/default/54f85b10764c76305e3b0ea4d9542bbd3da6f869 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/port_config.o.d 
	@${RM} ${OBJECTDIR}/hal/port_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/port_config.c  -o ${OBJECTDIR}/hal/port_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/port_config.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/pwm.o: hal/pwm.c  .generated_files/flags/default/514b9432f7dbde9caa1baf988207432b070ec08e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/pwm.o.d 
	@${RM} ${OBJECTDIR}/hal/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/pwm.c  -o ${OBJECTDIR}/hal/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/pwm.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/timer1.o: hal/timer1.c  .generated_files/flags/default/a302270210bead65f7d5e6b89b55d056c64a2275 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/timer1.o.d 
	@${RM} ${OBJECTDIR}/hal/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/timer1.c  -o ${OBJECTDIR}/hal/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/timer1.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/uart1.o: hal/uart1.c  .generated_files/flags/default/cbf8cf478778370d29298942052bfcada5133feb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/uart1.o.d 
	@${RM} ${OBJECTDIR}/hal/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/uart1.c  -o ${OBJECTDIR}/hal/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/uart1.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/X2Cscope/X2Cscope.o: X2Cscope/X2Cscope.c  .generated_files/flags/default/2e9d784399097ffeec8c2f5eaf6a4cd73436dd24 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/X2Cscope" 
	@${RM} ${OBJECTDIR}/X2Cscope/X2Cscope.o.d 
	@${RM} ${OBJECTDIR}/X2Cscope/X2Cscope.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  X2Cscope/X2Cscope.c  -o ${OBJECTDIR}/X2Cscope/X2Cscope.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/X2Cscope/X2Cscope.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/X2Cscope/X2CscopeComm.o: X2Cscope/X2CscopeComm.c  .generated_files/flags/default/ab337af12b70dd1fa51d8bb4f533ffa6493d80c5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/X2Cscope" 
	@${RM} ${OBJECTDIR}/X2Cscope/X2CscopeComm.o.d 
	@${RM} ${OBJECTDIR}/X2Cscope/X2CscopeComm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  X2Cscope/X2CscopeComm.c  -o ${OBJECTDIR}/X2Cscope/X2CscopeComm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/X2Cscope/X2CscopeComm.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f8d9b6d662038e3ff2fdeb53d03a49ed9017cdbd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/app.o: app.c  .generated_files/flags/default/ffc464b1216aa9b0993be10ee7a12d07ed4aa69f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app.o.d 
	@${RM} ${OBJECTDIR}/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app.c  -o ${OBJECTDIR}/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/app.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/X2Cscope_dsPIC33AK_MCLV48_customHAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  X2Cscope/libx2cscope2-generic-pic24-dspic33-elf.a  
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/X2Cscope_dsPIC33AK_MCLV48_customHAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    X2Cscope\libx2cscope2-generic-pic24-dspic33-elf.a  -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/X2Cscope_dsPIC33AK_MCLV48_customHAL.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  X2Cscope/libx2cscope2-generic-pic24-dspic33-elf.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/X2Cscope_dsPIC33AK_MCLV48_customHAL.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}    X2Cscope\libx2cscope2-generic-pic24-dspic33-elf.a  -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc-dsc-bin2hex ${DISTDIR}/X2Cscope_dsPIC33AK_MCLV48_customHAL.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}
