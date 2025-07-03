#include <iostream>
using namespace std;

bool ehPrimo (int x){
    int counter = 0;
    for (int i = 1; i <= x; i++){
        if (x % i == 0)
            counter++;
    }
    if (counter == 2)
        return "Primo";
    else
        return "Não é primo";
}

int main() {
    int num1;
    bool isPrime;
    
    cin >> num1;
    isPrime = ehPrimo(num1);
    
    cout << isPrime << endl;
}