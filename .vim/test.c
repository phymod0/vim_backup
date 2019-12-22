
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

#define BRCAST_STA_MAC "\x61\x61\x61\x61\x61\x61"

#define PRINTA(str, ...) printf("fuckyou" str "\n", __VA_ARGS__)

#define TO_U8(ch) (u8_t){.c = ch}

#define AC (u8_t){.c = 'A'}

#define FUN_TYPE(type_bitsz) int fun_name_##type_bitsz##Ty()
#define NUMBER_STRING(number) "number_is" # number

#define FOR_ALL_CHANNELS(statement) ({				\
	int channel;						\
	for (channel = 0; channel < 14; channel++) {		\
		statement;					\
	}							\
})
#define CYCLE_CHANNELS(start, statement) ({			\
	int i;							\
	for (i = 0; i < 14; i++) {				\
		int channel = 1 + ((i+start-1)%14);		\
		statement;					\
	}							\
})

static char *tars[] = {
	"Hello",
	"My",
	"Name",
	"Is",
	"Awais!",
};

unsigned char admin_mac_list[4][6] = {
	"\xC0\xBD\xD1\x24\x26\xD9",
	"\x12\x34\x56\x23\x45\x61",
	"\x61\x62\x63\x64\x65\x66",
	"\x66\x65\x64\x63\x62\x61",
};

static int fun_false();

int fun_true() {

	printf("Ola amigo\n");

	return 0x1234;

}

FUN_TYPE(32) {

	printf(NUMBER_STRING(1234));

	return 0;

}

void test_print(char *str) {

	str = "Hello world!\n";

	printf("%s", str);

	return;

}

struct bullfuck {

	struct bullfuck *next;

	struct horsefuck {
		union {
			int x;
			int z;
		};
		int y;
	} *fuck;

};

// #undef FOR_ALL_CHANNELS

int get_usec_time(void) {

	struct timeval tv;

	gettimeofday(&tv, NULL);

	return tv.tv_usec + 1000000*tv.tv_sec;

}

typedef struct {unsigned char c;} u8_t;
typedef struct {unsigned char c;} s8_t;
typedef union {u8_t u; s8_t s;} us8_t;

u8_t whore(void) {

	us8_t us;
	u8_t ac = AC;

	us = (us8_t)ac;

	return AC;

}

int return_cint(int j) {

	int i = 8363 + j;

	return (i << 6) ^ (i << 3) ^ i;

}

struct take {
	int i, j;
};

struct sing {unsigned char c;};

void struct_taker(struct take *tk) {

	printf("i is %d and j is %d\n", tk->i, tk->j);

	return;

}

void fff(int *arr) {

	printf("Fuck you world... %d %d %d\n", arr[0], arr[1], arr[2]);

}

int main() {

	int i;
	const int cint = return_cint(1234);

	struct horsefuck horse = {.x = 2357, .y = 2};

	fun_false();

	printf("Horsefuck struct horse: .x = %d, .y = %d\n", horse.z, horse.y);

	// fun_name_32Ty();
	test_print(NULL);
/*
	FOR_ALL_CHANNELS(
		printf("Got channel %d!\n", channel);
		printf("Deauthing at channel %d...\n\n", channel);
	);
	CYCLE_CHANNELS(3,
		printf("Got channel %d!\n", channel);
		printf("Deauthing at channel %d...\n\n", channel);
	);

	printf("Waiting for 3 seconds...\n");

	int t2 = get_usec_time() + 3000000;
	while (get_usec_time() < t2);

	printf("Done waiting!\n");
*/

	unsigned char fuck[6] = BRCAST_STA_MAC;

	struct horsefuck horse_again = {
		.x = horse.y,
		.y = horse.z
	};

	printf("%s\n", fuck);

	printf("Horsefuck struct horse: .x = %d, .y = %d\n", horse_again.z, horse_again.y);

	char name[64];
	int roll_number;
/*
	printf("Enter input: ");
	scanf("%d%*3s%s", &roll_number, name);
	printf("Form input: %d|%s...\n", roll_number, name);
*/
	unsigned char charstr[6] = "\x61\x62\x63\x64\x65\x66";

	printf("Muh characters: %.6s\n", admin_mac_list[3]);




	struct timeval tv;
	gettimeofday(&tv, NULL);
	printf("Seconds: %ld, Microseconds: %ld\n", tv.tv_sec, tv.tv_usec);
	printf("Maximum integer: %u\n", (unsigned int)-1);



	char *nnn = (char*)malloc(1024);
	printf("Lastly: %p\n", nnn);
	printf("1<<0 == %d\n", 1 << 0);
	free(nnn);

	printf("char from struct: %c\n", whore().c);

	for (i = 0; i < sizeof(tars)/sizeof(*tars); i++)
		printf("%s\n", tars[i]);

	printf("%d\n", cint);

	struct_taker(&(struct take){.i = 123, .j = 987});

	PRINTA("Got all structs %d And a merry go fuck yourself", 1234);

	int myA = 2;

	fff((int[]){myA, myA, myA});

	return 0;

}

static int fun_false() {

	printf("Ola amiga\n");

	return 0x4321;

}

