# Trabalho Software Livre

Projeto conjunto em bash e C++ com três programas principais:

- **primo.cpp**: Verifica se um número é primo.
- **vetor.cpp**: Encontra o maior número de um vetor.
- **matriz.cpp**: Realiza soma, subtração e multiplicação de matrizes quadradas.

Inclui scripts Bash para gerar testes em arquivos .txt e um Makefile para automatizar a compilação.

## Como compilar

```bash
make        # Compila todos os programas
make clean  # Remove os arquivos gerados

```

## Como testar

```bash
./generate-test-matriz.sh      # Gera entrada aleatória para o programa matriz
./matriz < entrada_matriz.txt  # Executa o programa matriz com a entrada recém gerada

./generate-test-primo.sh      # Gera entrada aleatória para o programa primo
./primo < entrada_primo.txt  # Executa o programa primo com a entrada recém gerada

./generate-test-vetor.sh      # Gera entrada aleatória para o programa vetor
./vetor < entrada_vetor.txt  # Executa o programa vetor com a entrada recém gerada

```

## Requisitos

- g++ <br>
- make <br>
- bash

## Autor
Matheus Santos Dolenga – <a href="https://github.com/matheusdolenga">github.com/matheusdolenga<a> <br>
BCC - 1º Período <br>
IFPR Pinhais
