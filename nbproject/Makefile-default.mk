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
${OBJECTDIR}/hal/adc.o: hal/adc.c  .generated_files/flags/default/c3db2b02cfdbd227ab94cd4fadbc3b774cebe096 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/adc.o.d 
	@${RM} ${OBJECTDIR}/hal/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/adc.c  -o ${OBJECTDIR}/hal/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/adc.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/clock.o: hal/clock.c  .generated_files/flags/default/7718fbd9d09fef3e346f20ecc7551f40b84a1c83 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/clock.o.d 
	@${RM} ${OBJECTDIR}/hal/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/clock.c  -o ${OBJECTDIR}/hal/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/clock.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/device_config.o: hal/device_config.c  .generated_files/flags/default/23525c2635365208d800f2488aa4db324246719 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/device_config.o.d 
	@${RM} ${OBJECTDIR}/hal/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/device_config.c  -o ${OBJECTDIR}/hal/device_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/device_config.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/measure.o: hal/measure.c  .generated_files/flags/default/16c1340224534bf5fa314dc3cf3004eaa54d2275 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/measure.o.d 
	@${RM} ${OBJECTDIR}/hal/measure.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/measure.c  -o ${OBJECTDIR}/hal/measure.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/measure.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/port_config.o: hal/port_config.c  .generated_files/flags/default/24e2a2bf5498b1ae0fb21350e14709da7400e21e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/port_config.o.d 
	@${RM} ${OBJECTDIR}/hal/port_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/port_config.c  -o ${OBJECTDIR}/hal/port_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/port_config.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/pwm.o: hal/pwm.c  .generated_files/flags/default/5f306cb1f3acd6ca4882afa9a6e6d9e5b9dadc00 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/pwm.o.d 
	@${RM} ${OBJECTDIR}/hal/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/pwm.c  -o ${OBJECTDIR}/hal/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/pwm.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/timer1.o: hal/timer1.c  .generated_files/flags/default/7aae2bcede4ba885ffb10b48107728e903bd80b8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/timer1.o.d 
	@${RM} ${OBJECTDIR}/hal/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/timer1.c  -o ${OBJECTDIR}/hal/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/timer1.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/uart1.o: hal/uart1.c  .generated_files/flags/default/bb95a6516d0329bf6f4c7b6c1a2e80eaa571e8cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/uart1.o.d 
	@${RM} ${OBJECTDIR}/hal/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/uart1.c  -o ${OBJECTDIR}/hal/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/uart1.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/X2Cscope/X2Cscope.o: X2Cscope/X2Cscope.c  .generated_files/flags/default/1a8156ede8bc647fe240c60d983bcf9d70a9eda3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/X2Cscope" 
	@${RM} ${OBJECTDIR}/X2Cscope/X2Cscope.o.d 
	@${RM} ${OBJECTDIR}/X2Cscope/X2Cscope.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  X2Cscope/X2Cscope.c  -o ${OBJECTDIR}/X2Cscope/X2Cscope.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/X2Cscope/X2Cscope.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/X2Cscope/X2CscopeComm.o: X2Cscope/X2CscopeComm.c  .generated_files/flags/default/cdebfdb0569a1a49ce004bf47e7cee93c0596f18 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/X2Cscope" 
	@${RM} ${OBJECTDIR}/X2Cscope/X2CscopeComm.o.d 
	@${RM} ${OBJECTDIR}/X2Cscope/X2CscopeComm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  X2Cscope/X2CscopeComm.c  -o ${OBJECTDIR}/X2Cscope/X2CscopeComm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/X2Cscope/X2CscopeComm.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/ebf8c60c25375b26a0072df54bfade9e74696a96 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/app.o: app.c  .generated_files/flags/default/6f384f8d1fc5e83ed556428d7ab1475d7fb685ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/app.o.d 
	@${RM} ${OBJECTDIR}/app.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  app.c  -o ${OBJECTDIR}/app.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/app.o.d"      -g -D__DEBUG     -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/hal/adc.o: hal/adc.c  .generated_files/flags/default/45e614358b863909aa278ebfc15a9b8763f92d59 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/adc.o.d 
	@${RM} ${OBJECTDIR}/hal/adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/adc.c  -o ${OBJECTDIR}/hal/adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/adc.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/clock.o: hal/clock.c  .generated_files/flags/default/8198b43893af3e0351fc16289e98133e2a9d1932 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/clock.o.d 
	@${RM} ${OBJECTDIR}/hal/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/clock.c  -o ${OBJECTDIR}/hal/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/clock.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/device_config.o: hal/device_config.c  .generated_files/flags/default/3595db91168a63032ab0534a5564ca9628c26aa2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/device_config.o.d 
	@${RM} ${OBJECTDIR}/hal/device_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/device_config.c  -o ${OBJECTDIR}/hal/device_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/device_config.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/measure.o: hal/measure.c  .generated_files/flags/default/4f658ed15f1f2b399ff905d8e7257a055b19ecd1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/measure.o.d 
	@${RM} ${OBJECTDIR}/hal/measure.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/measure.c  -o ${OBJECTDIR}/hal/measure.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/measure.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/port_config.o: hal/port_config.c  .generated_files/flags/default/9dec27323a1231d90b98ddd6eba8c12b6d335da5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/port_config.o.d 
	@${RM} ${OBJECTDIR}/hal/port_config.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/port_config.c  -o ${OBJECTDIR}/hal/port_config.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/port_config.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/pwm.o: hal/pwm.c  .generated_files/flags/default/7e5ec1ea3dd5c2419fd85b7d16d6c9fc9bace0fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/pwm.o.d 
	@${RM} ${OBJECTDIR}/hal/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/pwm.c  -o ${OBJECTDIR}/hal/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/pwm.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/timer1.o: hal/timer1.c  .generated_files/flags/default/cf01ee31a298a14831b84f13327f6986d582ff30 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/timer1.o.d 
	@${RM} ${OBJECTDIR}/hal/timer1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/timer1.c  -o ${OBJECTDIR}/hal/timer1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/timer1.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/hal/uart1.o: hal/uart1.c  .generated_files/flags/default/58a05893cd210ee865b41a9712ee459cc41909ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/hal" 
	@${RM} ${OBJECTDIR}/hal/uart1.o.d 
	@${RM} ${OBJECTDIR}/hal/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hal/uart1.c  -o ${OBJECTDIR}/hal/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/hal/uart1.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/X2Cscope/X2Cscope.o: X2Cscope/X2Cscope.c  .generated_files/flags/default/a86b7c8e413e173992484cc343afb48a6e0b92df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/X2Cscope" 
	@${RM} ${OBJECTDIR}/X2Cscope/X2Cscope.o.d 
	@${RM} ${OBJECTDIR}/X2Cscope/X2Cscope.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  X2Cscope/X2Cscope.c  -o ${OBJECTDIR}/X2Cscope/X2Cscope.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/X2Cscope/X2Cscope.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/X2Cscope/X2CscopeComm.o: X2Cscope/X2CscopeComm.c  .generated_files/flags/default/419a38afdf9cbce18eebad7005b3cff3cb849c22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/X2Cscope" 
	@${RM} ${OBJECTDIR}/X2Cscope/X2CscopeComm.o.d 
	@${RM} ${OBJECTDIR}/X2Cscope/X2CscopeComm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  X2Cscope/X2CscopeComm.c  -o ${OBJECTDIR}/X2Cscope/X2CscopeComm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/X2Cscope/X2CscopeComm.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/ee87bc9a5d433d7b81a27e37cda14a5b2c065f2e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"        -g -omf=elf -DSCOPE_SIZE=5000 -DX2C_GENERIC_MICROCHIP_DSPIC33A -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"X2CCode/Library/Control/Controller/inc" -I"X2CCode/Library/General/Controller/inc" -I"X2CCode/Library/Math/Controller/inc" -I"X2CCode/Library/Filter/Controller/inc" -I"X2CCode/Library/MCHP/Controller/inc" -I"X2CCode/Controller/CRC" -I"X2CCode/Controller/Common" -I"X2CCode/Controller/Driver/Serial" -I"X2CCode/Controller/Protocol/LNet" -I"X2CCode/Controller/Services" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/app.o: app.c  .generated_files/flags/default/83cac30f883c0143c0e8772aa5c1f5d60da04deb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
