#include <stdio.h>

extern int getBit(int valor, int nBit);
extern int suma(int num1, int num2);

int main(){

    int nBit =4;
    int x = 0x25;
    int n1 = 5;
    int n2 = 37;

    printf("El bit %d de x= %d es: %d\n",nBit, x, getBit(x,nBit));

    printf("El resultado de la suma entre %d y %d es: %d\n", n1, n2, suma(n1,n2));
    
    return 0;
}