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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic32board.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/pic32board.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c ../freertos/FreeRTOS/Source/croutine.c ../freertos/FreeRTOS/Source/event_groups.c ../freertos/FreeRTOS/Source/list.c ../freertos/FreeRTOS/Source/queue.c ../freertos/FreeRTOS/Source/stream_buffer.c ../freertos/FreeRTOS/Source/tasks.c ../freertos/FreeRTOS/Source/timers.c ../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c ../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S ../freertos/FreeRTOS/Source/portable/MemMang/heap_4.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/2032732714/croutine.o ${OBJECTDIR}/_ext/2032732714/event_groups.o ${OBJECTDIR}/_ext/2032732714/list.o ${OBJECTDIR}/_ext/2032732714/queue.o ${OBJECTDIR}/_ext/2032732714/stream_buffer.o ${OBJECTDIR}/_ext/2032732714/tasks.o ${OBJECTDIR}/_ext/2032732714/timers.o ${OBJECTDIR}/_ext/480380002/port.o ${OBJECTDIR}/_ext/480380002/port_asm.o ${OBJECTDIR}/_ext/334401075/heap_4.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/_ext/2032732714/croutine.o.d ${OBJECTDIR}/_ext/2032732714/event_groups.o.d ${OBJECTDIR}/_ext/2032732714/list.o.d ${OBJECTDIR}/_ext/2032732714/queue.o.d ${OBJECTDIR}/_ext/2032732714/stream_buffer.o.d ${OBJECTDIR}/_ext/2032732714/tasks.o.d ${OBJECTDIR}/_ext/2032732714/timers.o.d ${OBJECTDIR}/_ext/480380002/port.o.d ${OBJECTDIR}/_ext/480380002/port_asm.o.d ${OBJECTDIR}/_ext/334401075/heap_4.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/_ext/2032732714/croutine.o ${OBJECTDIR}/_ext/2032732714/event_groups.o ${OBJECTDIR}/_ext/2032732714/list.o ${OBJECTDIR}/_ext/2032732714/queue.o ${OBJECTDIR}/_ext/2032732714/stream_buffer.o ${OBJECTDIR}/_ext/2032732714/tasks.o ${OBJECTDIR}/_ext/2032732714/timers.o ${OBJECTDIR}/_ext/480380002/port.o ${OBJECTDIR}/_ext/480380002/port_asm.o ${OBJECTDIR}/_ext/334401075/heap_4.o

# Source Files
SOURCEFILES=main.c ../freertos/FreeRTOS/Source/croutine.c ../freertos/FreeRTOS/Source/event_groups.c ../freertos/FreeRTOS/Source/list.c ../freertos/FreeRTOS/Source/queue.c ../freertos/FreeRTOS/Source/stream_buffer.c ../freertos/FreeRTOS/Source/tasks.c ../freertos/FreeRTOS/Source/timers.c ../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c ../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S ../freertos/FreeRTOS/Source/portable/MemMang/heap_4.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/pic32board.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFH064
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/480380002/port_asm.o: ../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S  .generated_files/flags/default/7693b2eb1890680700da0e5c21806cdb3d5405ab .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/480380002" 
	@${RM} ${OBJECTDIR}/_ext/480380002/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/480380002/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/480380002/port_asm.o.ok ${OBJECTDIR}/_ext/480380002/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DconfigUSE_TASK_FPU_SUPPORT=1 -I"." -MMD -MF "${OBJECTDIR}/_ext/480380002/port_asm.o.d"  -o ${OBJECTDIR}/_ext/480380002/port_asm.o ../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/480380002/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 
	@${FIXDEPS} "${OBJECTDIR}/_ext/480380002/port_asm.o.d" "${OBJECTDIR}/_ext/480380002/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/480380002/port_asm.o: ../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S  .generated_files/flags/default/8ca972c1f78850848da570e5a5a8d89b27d82523 .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/480380002" 
	@${RM} ${OBJECTDIR}/_ext/480380002/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/480380002/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/480380002/port_asm.o.ok ${OBJECTDIR}/_ext/480380002/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -DconfigUSE_TASK_FPU_SUPPORT=1 -I"." -MMD -MF "${OBJECTDIR}/_ext/480380002/port_asm.o.d"  -o ${OBJECTDIR}/_ext/480380002/port_asm.o ../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S  -DXPRJ_default=$(CND_CONF)  -legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/480380002/port_asm.o.asm.d",--gdwarf-2 
	@${FIXDEPS} "${OBJECTDIR}/_ext/480380002/port_asm.o.d" "${OBJECTDIR}/_ext/480380002/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/67af3a3ed1c6ffe0b604026c757c47ebb38dfe22 .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2032732714/croutine.o: ../freertos/FreeRTOS/Source/croutine.c  .generated_files/flags/default/b7320afd8d13f3de3de973838f052df74243931d .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/2032732714" 
	@${RM} ${OBJECTDIR}/_ext/2032732714/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032732714/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/2032732714/croutine.o.d" -o ${OBJECTDIR}/_ext/2032732714/croutine.o ../freertos/FreeRTOS/Source/croutine.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2032732714/event_groups.o: ../freertos/FreeRTOS/Source/event_groups.c  .generated_files/flags/default/fef73ed8d36c5fb735ad0e70a9b9e4e767cd572 .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/2032732714" 
	@${RM} ${OBJECTDIR}/_ext/2032732714/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032732714/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/2032732714/event_groups.o.d" -o ${OBJECTDIR}/_ext/2032732714/event_groups.o ../freertos/FreeRTOS/Source/event_groups.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2032732714/list.o: ../freertos/FreeRTOS/Source/list.c  .generated_files/flags/default/c0b1d4199f6efd008e2dc0ae8a2129299effa39e .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/2032732714" 
	@${RM} ${OBJECTDIR}/_ext/2032732714/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032732714/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/2032732714/list.o.d" -o ${OBJECTDIR}/_ext/2032732714/list.o ../freertos/FreeRTOS/Source/list.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2032732714/queue.o: ../freertos/FreeRTOS/Source/queue.c  .generated_files/flags/default/279a60586890a8a4d42b36696fa12afefe71a78f .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/2032732714" 
	@${RM} ${OBJECTDIR}/_ext/2032732714/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032732714/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/2032732714/queue.o.d" -o ${OBJECTDIR}/_ext/2032732714/queue.o ../freertos/FreeRTOS/Source/queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2032732714/stream_buffer.o: ../freertos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/default/93af30e38fdec817e677677a02604d5fa6f365a2 .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/2032732714" 
	@${RM} ${OBJECTDIR}/_ext/2032732714/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032732714/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/2032732714/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/2032732714/stream_buffer.o ../freertos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2032732714/tasks.o: ../freertos/FreeRTOS/Source/tasks.c  .generated_files/flags/default/f19b301b63995ea95c6183ff145b68af7b4cb2bc .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/2032732714" 
	@${RM} ${OBJECTDIR}/_ext/2032732714/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032732714/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/2032732714/tasks.o.d" -o ${OBJECTDIR}/_ext/2032732714/tasks.o ../freertos/FreeRTOS/Source/tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2032732714/timers.o: ../freertos/FreeRTOS/Source/timers.c  .generated_files/flags/default/76e9e7e4c5b4fa8ab2e50e6047608d25adb4b503 .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/2032732714" 
	@${RM} ${OBJECTDIR}/_ext/2032732714/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032732714/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/2032732714/timers.o.d" -o ${OBJECTDIR}/_ext/2032732714/timers.o ../freertos/FreeRTOS/Source/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/480380002/port.o: ../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c  .generated_files/flags/default/1a6c13edad809729ec4730a096768918e89f7596 .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/480380002" 
	@${RM} ${OBJECTDIR}/_ext/480380002/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/480380002/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/480380002/port.o.d" -o ${OBJECTDIR}/_ext/480380002/port.o ../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/334401075/heap_4.o: ../freertos/FreeRTOS/Source/portable/MemMang/heap_4.c  .generated_files/flags/default/87a3e7e104d19f42d3914a2e6e07228940c3852a .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/334401075" 
	@${RM} ${OBJECTDIR}/_ext/334401075/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/334401075/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/334401075/heap_4.o.d" -o ${OBJECTDIR}/_ext/334401075/heap_4.o ../freertos/FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f8248973f77ebf0b8ca895d89debc94251770cfc .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2032732714/croutine.o: ../freertos/FreeRTOS/Source/croutine.c  .generated_files/flags/default/ba295f6719af1c3b2e1d1f9a9a53bb583f98b817 .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/2032732714" 
	@${RM} ${OBJECTDIR}/_ext/2032732714/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032732714/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/2032732714/croutine.o.d" -o ${OBJECTDIR}/_ext/2032732714/croutine.o ../freertos/FreeRTOS/Source/croutine.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2032732714/event_groups.o: ../freertos/FreeRTOS/Source/event_groups.c  .generated_files/flags/default/e945d7d0046c8a833c1159ee281f74c4a74e18e7 .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/2032732714" 
	@${RM} ${OBJECTDIR}/_ext/2032732714/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032732714/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/2032732714/event_groups.o.d" -o ${OBJECTDIR}/_ext/2032732714/event_groups.o ../freertos/FreeRTOS/Source/event_groups.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2032732714/list.o: ../freertos/FreeRTOS/Source/list.c  .generated_files/flags/default/f1dadb7d723521d44de868d1d65f7e9afba4fb44 .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/2032732714" 
	@${RM} ${OBJECTDIR}/_ext/2032732714/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032732714/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/2032732714/list.o.d" -o ${OBJECTDIR}/_ext/2032732714/list.o ../freertos/FreeRTOS/Source/list.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2032732714/queue.o: ../freertos/FreeRTOS/Source/queue.c  .generated_files/flags/default/ce769664da6ed5c70412491d03e3d1d7091617f5 .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/2032732714" 
	@${RM} ${OBJECTDIR}/_ext/2032732714/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032732714/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/2032732714/queue.o.d" -o ${OBJECTDIR}/_ext/2032732714/queue.o ../freertos/FreeRTOS/Source/queue.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2032732714/stream_buffer.o: ../freertos/FreeRTOS/Source/stream_buffer.c  .generated_files/flags/default/96a3941978a60abf40093cdc6f576febc5cd4daf .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/2032732714" 
	@${RM} ${OBJECTDIR}/_ext/2032732714/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032732714/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/2032732714/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/2032732714/stream_buffer.o ../freertos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2032732714/tasks.o: ../freertos/FreeRTOS/Source/tasks.c  .generated_files/flags/default/b647c0e17272a4237581357f0feb292309d53322 .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/2032732714" 
	@${RM} ${OBJECTDIR}/_ext/2032732714/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032732714/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/2032732714/tasks.o.d" -o ${OBJECTDIR}/_ext/2032732714/tasks.o ../freertos/FreeRTOS/Source/tasks.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2032732714/timers.o: ../freertos/FreeRTOS/Source/timers.c  .generated_files/flags/default/bb9a7337b6007656c08be3a2faa7463c34ec44f5 .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/2032732714" 
	@${RM} ${OBJECTDIR}/_ext/2032732714/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/2032732714/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/2032732714/timers.o.d" -o ${OBJECTDIR}/_ext/2032732714/timers.o ../freertos/FreeRTOS/Source/timers.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/480380002/port.o: ../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c  .generated_files/flags/default/79e1c96751c478319dcb247c1eaf068593e3f57c .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/480380002" 
	@${RM} ${OBJECTDIR}/_ext/480380002/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/480380002/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/480380002/port.o.d" -o ${OBJECTDIR}/_ext/480380002/port.o ../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/334401075/heap_4.o: ../freertos/FreeRTOS/Source/portable/MemMang/heap_4.c  .generated_files/flags/default/97860d600b07ad0998a03bd749be2a05468077f3 .generated_files/flags/default/f8c2dae309463848dfb9b1ede26d6cb292d206b1
	@${MKDIR} "${OBJECTDIR}/_ext/334401075" 
	@${RM} ${OBJECTDIR}/_ext/334401075/heap_4.o.d 
	@${RM} ${OBJECTDIR}/_ext/334401075/heap_4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DconfigUSE_TASK_FPU_SUPPORT=1 -I"../freertos/FreeRTOS/Source" -I"../freertos/FreeRTOS/Source/include" -I"." -I"../freertos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -MP -MMD -MF "${OBJECTDIR}/_ext/334401075/heap_4.o.d" -o ${OBJECTDIR}/_ext/334401075/heap_4.o ../freertos/FreeRTOS/Source/portable/MemMang/heap_4.c    -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/pic32board.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic32board.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/pic32board.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/pic32board.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/pic32board.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
