/* gpio.c */
#include "gpio.h"

/* GPIO Init */
void GPIO_Init(void)
{
	/*.......................OUTPUT PIN.......................*/

	/* LED - P15*/
	/* Push-pull */
	P1M1 &= ~(1 << 5);
	P1M2 |= (1 << 5);
	P15 = 0;
	
    /*RESET_OPTO - P10*/
	/* Push-pull */
	P1M1 &= ~(1 << 0);
	P1M2 |= (1 << 0);
	P10 = 0;
	
    /*ADD_OPTO - P11*/
	/* Push-pull */
	P1M1 &= ~(1 << 1);
	P1M2 |= (1 << 1);
	P11 = 0;

/*.......................INPUT PIN.......................*/
	/* IN0 - P00 */
	/* Quasi */
	P0M1 &= ~(1 << 0);
	P0M2 |= ~(1 << 0);
	//pull high
	P00 = 0;

	/* IN1 - P01 */
	/* Quasi */
	P0M1 &= ~(1 << 1);
	P0M2 |= ~(1 << 1);
	//pull high
	P01 = 0;

	/* IN1 - P02 */
	/* Quasi */
	P0M1 &= ~(1 << 2);
	P0M2 |= ~(1 << 2);
	//pull high
	P02 = 0;

	/* IN1 - P03 */
	/* Quasi */
	P0M1 &= ~(1 << 3);
	P0M2 |= ~(1 << 3);
	//pull high
	P03 = 0;

	/* IN1 - P04 */
	/* Quasi */
	P0M1 &= ~(1 << 4);
	P0M2 |= ~(1 << 4);
	//pull high
	P04 = 1;

	/* Enter_button - P12 */
	/* Quasi */
	P1M1 &= ~(1 << 2);
	P1M2 |= ~(1 << 2);
	//pull high
	P12 = 1;
}