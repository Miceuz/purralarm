# 1 "main.c"
# 1 "<command-line>"
# 1 "main.c"
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/inttypes.h" 1 3
# 37 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/inttypes.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/include/stdint.h" 1 3 4


# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdint.h" 1 3 4
# 121 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdint.h" 3 4
typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));

typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));
# 142 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdint.h" 3 4
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 159 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdint.h" 3 4
typedef int8_t int_least8_t;




typedef uint8_t uint_least8_t;




typedef int16_t int_least16_t;




typedef uint16_t uint_least16_t;




typedef int32_t int_least32_t;




typedef uint32_t uint_least32_t;







typedef int64_t int_least64_t;






typedef uint64_t uint_least64_t;
# 213 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdint.h" 3 4
typedef int8_t int_fast8_t;




typedef uint8_t uint_fast8_t;




typedef int16_t int_fast16_t;




typedef uint16_t uint_fast16_t;




typedef int32_t int_fast32_t;




typedef uint32_t uint_fast32_t;







typedef int64_t int_fast64_t;






typedef uint64_t uint_fast64_t;
# 273 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdint.h" 3 4
typedef int64_t intmax_t;




typedef uint64_t uintmax_t;
# 4 "/usr/lib/gcc/avr/4.7.0/include/stdint.h" 2 3 4
# 38 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/inttypes.h" 2 3
# 77 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/inttypes.h" 3
typedef int32_t int_farptr_t;



typedef uint32_t uint_farptr_t;
# 2 "main.c" 2
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 1 3
# 99 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/sfr_defs.h" 1 3
# 100 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 2 3
# 346 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/iotn44.h" 1 3
# 38 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/iotn44.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/iotnx4.h" 1 3
# 39 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/iotn44.h" 2 3
# 347 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 2 3
# 432 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/portpins.h" 1 3
# 433 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 2 3

# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/common.h" 1 3
# 435 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 2 3

# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/version.h" 1 3
# 437 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 2 3


# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/fuse.h" 1 3
# 239 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/fuse.h" 3
typedef struct
{
    unsigned char low;
    unsigned char high;
    unsigned char extended;
} __fuse_t;
# 440 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 2 3


# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/lock.h" 1 3
# 443 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/io.h" 2 3
# 3 "main.c" 2
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 1 3
# 43 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay_basic.h" 1 3
# 40 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay_basic.h" 3
static inline void _delay_loop_1(uint8_t __count) __attribute__((always_inline));
static inline void _delay_loop_2(uint16_t __count) __attribute__((always_inline));
# 80 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay_basic.h" 3
void
_delay_loop_1(uint8_t __count)
{
 __asm__ volatile (
  "1: dec %0" "\n\t"
  "brne 1b"
  : "=r" (__count)
  : "0" (__count)
 );
}
# 102 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay_basic.h" 3
void
_delay_loop_2(uint16_t __count)
{
 __asm__ volatile (
  "1: sbiw %0,1" "\n\t"
  "brne 1b"
  : "=w" (__count)
  : "0" (__count)
 );
}
# 44 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 2 3
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 1 3
# 127 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern double cos(double __x) __attribute__((__const__));





extern double sin(double __x) __attribute__((__const__));





extern double tan(double __x) __attribute__((__const__));






extern double fabs(double __x) __attribute__((__const__));






extern double fmod(double __x, double __y) __attribute__((__const__));
# 168 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern double modf(double __x, double *__iptr);



extern float modff (float __x, float *__iptr);




extern double sqrt(double __x) __attribute__((__const__));





extern double cbrt(double __x) __attribute__((__const__));
# 194 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern double hypot (double __x, double __y) __attribute__((__const__));







extern double square(double __x) __attribute__((__const__));






extern double floor(double __x) __attribute__((__const__));






extern double ceil(double __x) __attribute__((__const__));
# 234 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern double frexp(double __x, int *__pexp);







extern double ldexp(double __x, int __exp) __attribute__((__const__));





extern double exp(double __x) __attribute__((__const__));





extern double cosh(double __x) __attribute__((__const__));





extern double sinh(double __x) __attribute__((__const__));





extern double tanh(double __x) __attribute__((__const__));







extern double acos(double __x) __attribute__((__const__));







extern double asin(double __x) __attribute__((__const__));






extern double atan(double __x) __attribute__((__const__));
# 298 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern double atan2(double __y, double __x) __attribute__((__const__));





extern double log(double __x) __attribute__((__const__));





extern double log10(double __x) __attribute__((__const__));





extern double pow(double __x, double __y) __attribute__((__const__));






extern int isnan(double __x) __attribute__((__const__));
# 333 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern int isinf(double __x) __attribute__((__const__));






__attribute__((__const__)) static inline int isfinite (double __x)
{
    unsigned char __exp;
    __asm__ (
 "mov	%0, %C1		\n\t"
 "lsl	%0		\n\t"
 "mov	%0, %D1		\n\t"
 "rol	%0		"
 : "=r" (__exp)
 : "r" (__x) );
    return __exp != 0xff;
}






__attribute__((__const__)) static inline double copysign (double __x, double __y)
{
    __asm__ (
 "bst	%D2, 7	\n\t"
 "bld	%D0, 7	"
 : "=r" (__x)
 : "0" (__x), "r" (__y) );
    return __x;
}
# 376 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern int signbit (double __x) __attribute__((__const__));






extern double fdim (double __x, double __y) __attribute__((__const__));
# 392 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern double fma (double __x, double __y, double __z) __attribute__((__const__));







extern double fmax (double __x, double __y) __attribute__((__const__));







extern double fmin (double __x, double __y) __attribute__((__const__));






extern double trunc (double __x) __attribute__((__const__));
# 426 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern double round (double __x) __attribute__((__const__));
# 439 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern long lround (double __x) __attribute__((__const__));
# 453 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/math.h" 3
extern long lrint (double __x) __attribute__((__const__));
# 45 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 2 3
# 84 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
static inline void _delay_us(double __us) __attribute__((always_inline));
static inline void _delay_ms(double __ms) __attribute__((always_inline));
# 141 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
void
_delay_ms(double __ms)
{
 uint16_t __ticks;
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((32000) / 1e3) * __ms;
# 161 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 186 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
}
# 223 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
void
_delay_us(double __us)
{
 uint8_t __ticks;
 double __tmp ;



 uint32_t __ticks_dc;
 extern void __builtin_avr_delay_cycles(unsigned long);
 __tmp = ((32000) / 1e6) * __us;
# 243 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
  __ticks_dc = (uint32_t)(ceil(fabs(__tmp)));


 __builtin_avr_delay_cycles(__ticks_dc);
# 261 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/util/delay.h" 3
}
# 4 "main.c" 2
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/interrupt.h" 1 3
# 5 "main.c" 2
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/avr/sleep.h" 1 3
# 6 "main.c" 2
# 1 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 1 3
# 47 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
# 1 "/usr/lib/gcc/avr/4.7.0/include/stddef.h" 1 3 4
# 213 "/usr/lib/gcc/avr/4.7.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 325 "/usr/lib/gcc/avr/4.7.0/include/stddef.h" 3 4
typedef int wchar_t;
# 48 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 2 3
# 68 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
typedef struct {
 int quot;
 int rem;
} div_t;


typedef struct {
 long quot;
 long rem;
} ldiv_t;


typedef int (*__compar_fn_t)(const void *, const void *);
# 106 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern void abort(void) __attribute__((__noreturn__));




extern int abs(int __i) __attribute__((__const__));
# 120 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern long labs(long __i) __attribute__((__const__));
# 143 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern void *bsearch(const void *__key, const void *__base, size_t __nmemb,
       size_t __size, int (*__compar)(const void *, const void *));







extern div_t div(int __num, int __denom) __asm__("__divmodhi4") __attribute__((__const__));





extern ldiv_t ldiv(long __num, long __denom) __asm__("__divmodsi4") __attribute__((__const__));
# 175 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern void qsort(void *__base, size_t __nmemb, size_t __size,
    __compar_fn_t __compar);
# 208 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern long strtol(const char *__nptr, char **__endptr, int __base);
# 242 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern unsigned long strtoul(const char *__nptr, char **__endptr, int __base);
# 254 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern long atol(const char *__s) __attribute__((__pure__));
# 266 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern int atoi(const char *__s) __attribute__((__pure__));
# 278 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern void exit(int __status) __attribute__((__noreturn__));
# 290 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern void *malloc(size_t __size) __attribute__((__malloc__));






extern void free(void *__ptr);




extern size_t __malloc_margin;




extern char *__malloc_heap_start;




extern char *__malloc_heap_end;






extern void *calloc(size_t __nele, size_t __size) __attribute__((__malloc__));
# 338 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern void *realloc(void *__ptr, size_t __size) __attribute__((__malloc__));

extern double strtod(const char *__nptr, char **__endptr);

extern double atof(const char *__nptr);
# 364 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern int rand(void);



extern void srand(unsigned int __seed);






extern int rand_r(unsigned long *__ctx);
# 406 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern char *itoa(int __val, char *__s, int __radix);
# 434 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern char *ltoa(long int __val, char *__s, int __radix);
# 460 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern char *utoa(unsigned int __val, char *__s, int __radix);
# 486 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern char *ultoa(unsigned long int __val, char *__s, int __radix);
# 504 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern long random(void);




extern void srandom(unsigned long __seed);







extern long random_r(unsigned long *__ctx);
# 563 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern char *dtostre(double __val, char *__s, unsigned char __prec,
       unsigned char __flags);
# 580 "/usr/lib/gcc/avr/4.7.0/../../../avr/include/stdlib.h" 3
extern char *dtostrf(double __val, signed char __width,
                     unsigned char __prec, char *__s);
# 7 "main.c" 2
# 15 "main.c"
volatile uint16_t seconds = 0;
void startTimer() {
 (*(volatile uint8_t *)((0x30) + 0x20)) |= (1 << (1));
 (*(volatile uint8_t *)((0x36) + 0x20)) = 128;
 (*(volatile uint8_t *)((0x3C) + 0x20)) = 1;
 (*(volatile uint8_t *)((0x39) + 0x20)) |= (1 << (1));
 (*(volatile uint8_t *)((0x33) + 0x20)) |= (1 << (2));
}

void __vector_9 (void) __attribute__ ((signal, used, externally_visible)); void __vector_9 (void) {
 seconds++;
}

void __vector_10 (void) __attribute__ ((signal, used, externally_visible)); void __vector_10 (void) {
}

volatile char purrCounter = 0;


volatile unsigned char i, phase = 0, phaseLength = 30;
void __vector_6 (void) __attribute__ ((signal, used, externally_visible)); void __vector_6 (void) {
 (*(volatile uint8_t *)((0x1B) + 0x20)) |= (1 << (3));
 if(1 == phase) {
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

 (*(volatile uint8_t *)((0x1B) + 0x20)) &= ~(1 << (3));

 if(purrCounter++ > phaseLength) {
  purrCounter = 0;
  if(1 == phase) {
   phase = 0;
   phaseLength = 45 + rand() / (0x7FFF/8 + 1);
  } else {
   phase = 1;
   phaseLength = 25 + rand() / (0x7FFF/8 + 1);
  }
 }

}

void startPurr() {
 (*(volatile uint8_t *)((0x2E) + 0x20)) |= (1 << (3));
 (*(volatile uint16_t *)((0x2A) + 0x20)) = 1231;
 (*(volatile uint16_t *)((0x28) + 0x20)) = 1;
 (*(volatile uint8_t *)((0x0C) + 0x20)) |= (1 << (1)) ;
 (*(volatile uint8_t *)((0x2E) + 0x20)) |= (1 << (0));
}

void stopPurr() {
 (*(volatile uint8_t *)((0x2E) + 0x20)) = 0;
}




inline void auxOutOn(){
 (*(volatile uint8_t *)((0x1B) + 0x20)) |= (1 << (1));
}

inline void auxOutOff() {
 (*(volatile uint8_t *)((0x1B) + 0x20)) &= ~(1 << (1));
}


int main (void) {
 __asm__ __volatile__ ("sei" ::: "memory");
 startTimer();
 (*(volatile uint8_t *)((0x1B) + 0x20)) = 0;
 (*(volatile uint8_t *)((0x18) + 0x20)) = 0;
 (*(volatile uint8_t *)((0x1A) + 0x20)) |= (1 << (6)) | (1 << (3)) | (1 << (1));
 (*(volatile uint8_t *)((0x00) + 0x20)) |= (1 << (1)) | (1 << (0));
 (*(volatile uint8_t *)((0x08) + 0x20)) |= (1 << (7));

 do { (*(volatile uint8_t *)((0x35) + 0x20)) = (((*(volatile uint8_t *)((0x35) + 0x20)) & ~((1 << (3)) | (1 << (4)))) | (0)); } while(0);
 do { (*(volatile uint8_t *)((0x35) + 0x20)) |= (uint8_t)(1 << (5)); } while(0);

 startPurr();
 auxOutOn();
 while(seconds < 60) {
  do { __asm__ __volatile__ ( "sleep" "\n\t" :: ); } while(0);
 }
 stopPurr();
 auxOutOff();

 while(1) {
  if(seconds > 60*60*8) {

   uint16_t coffeeTimer = 0;
   startPurr();
   auxOutOn();
   while(seconds < 60*60*8 + 60*4) {

    do { __asm__ __volatile__ ( "sleep" "\n\t" :: ); } while(0);
   }

   auxOutOff();
   while(1) {


    do { __asm__ __volatile__ ( "sleep" "\n\t" :: ); } while(0);
   }
  }
  do { __asm__ __volatile__ ( "sleep" "\n\t" :: ); } while(0);
 }
}
