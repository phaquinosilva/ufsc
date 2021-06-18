#include <stdio.h>
#include "system.h"
#include "io.h"

int main(){
	printf("Hello from Nios II!\n");
	printf("=======PONG GAME=======\n");
	
	int pL_Y = IORD_32DIRECT(PONG_0_BASE, 1);

	printf("Position Y from Left Player: %d", pL_Y);

	printf("---UPDATE Position Y---\n");
	IOWR_32DIRECT(PONG_0_BASE, 0, 8);//write(3) = 1 others = 0

	pL_Y = IORD_32DIRECT(PONG_0_BASE, 1);

	printf("Position Y from Left Player Updated: %d", pL_Y);
	return 0;
}
