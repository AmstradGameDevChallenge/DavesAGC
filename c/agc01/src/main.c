/**********************************************************
**
**	C DUNGEONS
**	My RPG game for Amstrad GameDev Challenge, C version
**	by	8bitDave <david.novella@me.com>
**	Created: 		20190722
**	Last updated:	20190722
**
***********************************************************/

#include <cpctelera.h>
#include <stdio.h>

void main(void){

	//Variable init
	u8 *videoMem;
	u8 colours[6]		= {0};

	u8 playerEnergy 	= 100;
	u8 playerAttack 	= 30;
	u8 playerDefense	= 15;
	u8 enemyEnergy		= 90;
	u8 enemyAttack		= 20;
	u8 enemyDefense		= 10;

	cpct_disableFirmware();

	//Splash screen
	cpct_clearScreen();
	printf("C DUNGEONS\r\n");
	printf("#TeamC\r\n");
	printf("8BitDave\n");
	printf("\r\n");
	printf("Key to START\r\n");

	while (!cpct_isAnyKeyPressed()) {
		cpct_scanKeyboard();
	}

	while(1) {

		cpct_clearScreen(0);		
		cpct_setVideoMode(1);
		videoMem = CPCT_VMEM_START;

	}


}