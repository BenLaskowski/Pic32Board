/*
 * File:   main.c
 * Author: Ben
 *
 * Created on June 25, 2024, 9:33 PM
 */

#include "configuration.h"
#include <xc.h>
#include "FreeRTOS.h"
#include "task.h"

void test_task1(void* arg)
{
    for(;;)
    {
        LATBbits.LATB8 ^= 1;
        vTaskDelay(500 / portTICK_PERIOD_MS);
    }
}

void test_task2(void* arg)
{
    for(;;)
    {
        LATBbits.LATB9 ^= 1;
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
}

void main(void) {
    
    // initialize some stuff
    // set up clocks
    
    // unlock sequence
    SYSKEY = 0xAA996655;
    SYSKEY = 0x556699AA;
    
    // set flash wait states
    PRECONbits.PREFEN = 3;
    PRECONbits.PFMWS = 2;
    
    // PBCLK3 (for TMR1) and PB4CLK (for IO) get 1:1 divisor
    PB3DIVbits.ON = 1;
    while (!PB3DIVbits.PBDIVRDY);
    PB3DIVbits.PBDIV = 0;
    PB4DIVbits.ON = 1;
    while (!PB4DIVbits.PBDIVRDY);
    PB4DIVbits.PBDIV = 0;

    // RB8, 9, 10 are outputs
    ANSELB = 0;
    TRISBbits.TRISB8 = 0;
    TRISBbits.TRISB9 = 0;
    TRISBbits.TRISB10 = 0;
    LATBbits.LATB8 = 0;
    LATBbits.LATB9 = 0;
    LATBbits.LATB10 = 0;
    
    // create test tasks
    xTaskCreate(test_task1, "test_task1", configMINIMAL_STACK_SIZE, NULL, 1, NULL);
    xTaskCreate(test_task2, "test_task1", configMINIMAL_STACK_SIZE, NULL, 1, NULL);
    
    // start the scheduler
    vTaskStartScheduler();
    
    // should never reach this point
    for(;;)
    
    return;
}

void vAssertCalled( const char * pcFile, unsigned long ulLine )
{
volatile char *pcFileName;
volatile unsigned long ulLineNumber;

	/* Prevent things that are useful to view in the debugger from being
	optimised away. */
	pcFileName = ( char * ) pcFile;
	( void ) pcFileName;
	ulLineNumber = ulLine;

	/* Set ulLineNumber to 0 in the debugger to break out of this loop and
	return to the line that triggered the assert. */
	while( ulLineNumber != 0 )
	{
		__asm volatile( "NOP" );
		__asm volatile( "NOP" );
		__asm volatile( "NOP" );
		__asm volatile( "NOP" );
		__asm volatile( "NOP" );
	}
}

void vApplicationTickHook(void)
{
    // do nothing
}

void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName )
{
	( void ) pcTaskName;
	( void ) pxTask;

	/* Run time task stack overflow checking is performed if
	configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook	function is
	called if a task stack overflow is detected.  Note the system/interrupt
	stack is not checked. */
	taskDISABLE_INTERRUPTS();
	for( ;; );
}

void vApplicationMallocFailedHook( void )
{
	/* vApplicationMallocFailedHook() will only be called if
	configUSE_MALLOC_FAILED_HOOK is set to 1 in FreeRTOSConfig.h.  It is a hook
	function that will get called if a call to pvPortMalloc() fails.
	pvPortMalloc() is called internally by the kernel whenever a task, queue,
	timer or semaphore is created.  It is also called by various parts of the
	demo application.  If heap_1.c or heap_2.c are used, then the size of the
	heap available to pvPortMalloc() is defined by configTOTAL_HEAP_SIZE in
	FreeRTOSConfig.h, and the xPortGetFreeHeapSize() API function can be used
	to query the size of free heap space that remains (although it does not
	provide information on how the remaining heap might be fragmented). */
	taskDISABLE_INTERRUPTS();
	for( ;; );
}