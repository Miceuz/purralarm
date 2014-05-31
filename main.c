#include <inttypes.h>
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/sleep.h>
#include <stdlib.h>

#define USI_SCK PA4
#define USI_MISO PA5
#define USI_CS PA6
#define BUZZER PA7
#define BUTTON PB2
#define LED_K PB0 
#define LED_A PB1
volatile uint16_t seconds = 0;
void startTimer() {
	TCCR0A |= _BV(WGM01);
	OCR0A = 128;
	OCR0B = 1;
	TIMSK0 |= _BV(OCIE0A);
	TCCR0B |= _BV(CS02);
}

SIGNAL(TIM0_COMPA_vect) {
	seconds++;
}

SIGNAL(TIM0_COMPB_vect) {
}

volatile char purrCounter = 0;
#define EXHALE 0
#define INHALE 1
volatile unsigned char i, phase = EXHALE, phaseLength = 30;
SIGNAL(TIM1_COMPA_vect) {
	PORTA |= _BV(PA3);
	if(INHALE == phase) {
		asm("nop");	
		asm("nop");	
	} else {
		asm("nop");	
		asm("nop");	
		asm("nop");	
		asm("nop");	
		asm("nop");	
		asm("nop");
		asm("nop");
		asm("nop");
		asm("nop");
		asm("nop");
		asm("nop");
	}

	PORTA &= ~_BV(PA3);

	if(purrCounter++ > phaseLength) {
		purrCounter = 0;
		if(INHALE == phase) {
			phase = EXHALE;
			phaseLength = 45 + rand() / (RAND_MAX/8 + 1);
		} else {
			phase = INHALE;
			phaseLength = 25 + rand() / (RAND_MAX/8 + 1);
		}
	}

}

void startPurr() {
	TCCR1B |= _BV(WGM12);
	OCR1A = 1231;
	OCR1B = 1;
	TIMSK1 |= _BV(OCIE1A) ;//| _BV(OCIE1B);
	TCCR1B |= _BV(CS10);
}

void stopPurr() {
	TCCR1B = 0;
}

#define HOURS_8 60*60*8
#define COFFE_BOIL_SECONDS 60*4

inline void auxOutOn(){
	PORTA |= _BV(PA1);
}

inline void auxOutOff() {
	PORTA &= ~_BV(PA1);
}


int main (void) {
	sei();
	startTimer();
	PORTA = 0;
	PORTB = 0;
	DDRA |= _BV(PA6) | _BV(PA3) | _BV(PA1);
	PRR |= _BV(PRUSI) | _BV(PRADC);
	ACSR |= _BV(ACD);

	set_sleep_mode(SLEEP_MODE_IDLE);
	sleep_enable();
	
	startPurr();
	auxOutOn();
	while(seconds < 60) {
		sleep_cpu();
	}
	stopPurr();
	auxOutOff();

	while(1) {
		if(seconds > HOURS_8) {
			
			uint16_t coffeeTimer = 0;
			startPurr();
			auxOutOn();
			while(seconds < HOURS_8 + COFFE_BOIL_SECONDS) {
				//NOTHING
				sleep_cpu();
			}
//			stopPurr();
			auxOutOff();
			while(1) {
//				PORTA |= _BV(PA6);
//				PORTA &= ~_BV(PA6);			
				sleep_cpu(); //just go to sleep
			}			
		}
		sleep_cpu();
	}
}
