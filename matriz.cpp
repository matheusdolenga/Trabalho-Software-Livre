#include <iostream>
using namespace std;

int main() {
    int tamanho_vetor;
    cin >> tamanho_vetor;

    int matriz_1[tamanho_vetor][tamanho_vetor];
    int matriz_2[tamanho_vetor][tamanho_vetor];
    int resultado[tamanho_vetor][tamanho_vetor];

    for (int i = 0; i < tamanho_vetor; i++)
        for (int j = 0; j < tamanho_vetor; j++)
            cin >> matriz_1[i][j];

    for (int i = 0; i < tamanho_vetor; i++)
        for (int j = 0; j < tamanho_vetor; j++)
            cin >> matriz_2[i][j];

    char operation;
    cin >> operation;

    if (operation == 'a') {
        for (int i = 0; i < tamanho_vetor; i++)
            for (int j = 0; j < tamanho_vetor; j++)
                resultado[i][j] = matriz_1[i][j] + matriz_2[i][j];
    } else if (operation == 's') {
        for (int i = 0; i < tamanho_vetor; i++)
            for (int j = 0; j < tamanho_vetor; j++)
                resultado[i][j] = matriz_1[i][j] - matriz_2[i][j];
    } else if (operation == 'm') {
        for (int i = 0; i < tamanho_vetor; i++)
            for (int j = 0; j < tamanho_vetor; j++) {
                resultado[i][j] = 0;
                for (int k = 0; k < tamanho_vetor; k++)
                    resultado[i][j] += matriz_1[i][k] * matriz_2[k][j];
            }
    } else {
        return 1;
    }

    for (int i = 0; i < tamanho_vetor; i++) {
        for (int j = 0; j < tamanho_vetor; j++) {
            cout << resultado[i][j] << " ";
        }
        cout << endl;
    }

    return 0;
