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

## Observações
Durante a produção do trabalho tive algumas dificuldades, principalmente na instalação do compilador g++ em conjunto com o make. Por algum motivo que não consegui identificar, ou o make era instalado e o g++ não, ou vice-versa, me impedindo de testar os programas. <br>

Após seguir diversos tutoriais e baixar diversos programas, inclusive reinstalando os mesmos diversas vezes, consegui fazer funcionar através do **MSYS2 UCRT64**, que foi o único terminal que reconheceu os dois programas (g++ e make) instalados corretamente. O motivo ainda é incerto, mas pude continuar com a produção do trabalho e executar os devidos testes <br>

Infelizmente, devido as dificuldades acima mencionadas, alguns commits que fiz vieram a se perder, pois, sem perceber, estava fazendo os ajustes e dando commits no repositório errado. Afim de não correr o risco de perder o progresso feito até ali, fiz então um commit que alterou diversos arquivos de uma vez, para refletir as mudanças que haviam sido paulatinamente realizadas. Caso o professor queira olhar com mais detalhes, basta procurar pelo commit abaixo:

```
e340009febc86b361815c9cf43946f68c89186a5
-m "modificações nos codigos para melhor funcionalidade"
```
De toda forma, o trabalho foi concluido e entregue no prazo. Pude aprender bastante sobre git, branch, repositórios e automação de código.

## Autor
Matheus Santos Dolenga – <a href="https://github.com/matheusdolenga">github.com/matheusdolenga<a> <br>
BCC - 1º Período <br>
IFPR Pinhais
