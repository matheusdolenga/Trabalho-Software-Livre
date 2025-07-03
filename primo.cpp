#include <iostream>
#include <windows.h> // Adicionado para a função de console do Windows

bool ehPrimo(int n) {
    if (n <= 1) {
        return false;
    }
    for (int i = 2; i * i <= n; i++) {
        if (n % i == 0) {
            return false;
        }
    }
    return true;
}

int main() {
    // Define a página de código do console para UTF-8
    SetConsoleOutputCP(CP_UTF8);

    int numero;
    std::cin >> numero;

    if (ehPrimo(numero)) {
        std::cout << "Primo" << std::endl;
    } else {
        std::cout << "Não é primo" << std::endl;
    }

    return 0;
}