#include <iostream>
using namespace std;

string primeChecker (int x){
    if (x <= 1)
        return "Não é primo";
    else if (x == 2)
        return "Primo";
    int counter = 0; // Vai contar quantas divisões para saber se é primo ou não
    for (int i = 1; i <= x ; i++){
        if (x % i == 0)
            counter++; 
    }
    if (counter == 2)
        return "Primo";
    else
        return "Não é primo";
}

int main (){
    int num;
    string primo;
    cin >> num;
    primo = primeChecker(num);
    cout << primo << endl;
}