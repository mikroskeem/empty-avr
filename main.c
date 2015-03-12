#define nop() asm volatile("nop")
void main(){
	while(1) {
		nop();
	}
}
