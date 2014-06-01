#include <inttypes.h>
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <stdlib.h>

#define BUZZER PA7
#define LED PB2
volatile uint16_t seconds = 0;
void startTimer() {
	TCCR1B |= _BV(WGM12);
	OCR1A = 128;
	TIMSK1 |= _BV(OCIE1A);
	TCCR1B |= _BV(CS12);
}

SIGNAL(TIM1_COMPA_vect) {
	seconds++;
}


#define HOURS_8 60*60*8
#define COFFE_BOIL_SECONDS 60*4




int main (void) {
	sei();
	startTimer();
	PORTA = 0;
	PORTB = 0;
	PRR |= _BV(PRUSI) | _BV(PRADC);
	ACSR |= _BV(ACD);

	set_sleep_mode(SLEEP_MODE_IDLE);
	sleep_enable();
	
	//startPurr();
	//auxOutOn();
	while(seconds < 60) {
		sleep_cpu();
	}
//	stopPurr();
//	auxOutOff();

	while(1) {
		if(seconds > HOURS_8) {
			
			uint16_t coffeeTimer = 0;
			//startPurr();
			//auxOutOn();
			while(seconds < HOURS_8 + COFFE_BOIL_SECONDS) {
				//NOTHING
				sleep_cpu();
			}
//			stopPurr();
			//auxOutOff();
			while(1) {
//				PORTA |= _BV(PA6);
//				PORTA &= ~_BV(PA6);			
				sleep_cpu(); //just go to sleep
			}			
		}
		sleep_cpu();
	}
}
