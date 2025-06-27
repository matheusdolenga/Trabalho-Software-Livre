#include <iostream> 
using namespace std; 

int main() {
    int n;
    cin >> n;

    int m1[n][n];
    int m2[n][n]; 
    int resultado[n][n];

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            cin >> m1[i][j];
        }
    }

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            cin >> m2[i][j];
        }
    }

    char operacao;
    cin >> operacao;

    if (operacao == 'a') { 
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                resultado[i][j] = m1[i][j] + m2[i][j];
            }
        }
    } else if (operacao == 's') {
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                resultado[i][j] = m1[i][j] - m2[i][j];
            }
        }
    } else if (operacao == 'm') { 
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                resultado[i][j] = 0;
                for (int k = 0; k < n; k++) {
                    resultado[i][j] += m1[i][k] * m2[k][j];
                }
            }
        }
    } else {
        return 1;
    }

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            cout << resultado[i][j];
        }
        cout << endl;
    }

    return 0; 
}