FILE = main.c

all: flash

hex:
	avr-gcc -Os -DF_CPU=12000000 -mmcu=atmega2560 $(FILE) -o main.elf
	avr-objcopy -O ihex main.elf main.hex
	rm main.elf
flash: hex
	avrdude -c wiring -p m2560 -P /dev/ttyACM0 -U flash:w:main.hex
