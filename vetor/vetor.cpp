#include <iostream>
using namespace std;

int main(){
    int size = 0, maiorValor = 0;
    cin >> size;
    int matriz[size];
    for (int i = 0; i < size; i++)
        cin >> matriz[i];
    maiorValor = matriz[0];
    for (int i = 1; i < size; i++){
        if (maiorValor < matriz[i])
            maiorValor = matriz[i];
    }
    cout << maiorValor << endl;    
}