#!/bin/bash

# Define o nome do arquivo de saída
OUTPUT_FILE="entrada_matriz.txt"

# Define um tamanho aleatório para as matrizes (quadradas, entre 2x2 e 6x6)
N=$((RANDOM % 5 + 2))

# Escreve o tamanho na primeira linha do arquivo (sobrescreve o arquivo)
echo "$N" > $OUTPUT_FILE

echo "Gerando teste para matrizes ${N}x${N} no arquivo '${OUTPUT_FILE}'..."

# Loop para gerar as duas matrizes
for k in $(seq 1 2)
do
  # Loop para cada linha da matriz
  for i in $(seq 1 $N)
  do
    current_line=""
    # Loop para cada coluna da matriz
    for j in $(seq 1 $N)
    do
      # Gera um elemento aleatório (entre 0 e 99)
      ELEMENT=$((RANDOM % 100))
      current_line+="$ELEMENT "
    done
    # Escreve a linha completa no arquivo, removendo o espaço extra no final
    echo "${current_line% }" >> $OUTPUT_FILE
  done
done

# Adiciona a letra da operação aleatória ('a', 's', ou 'm')
OPERATIONS=('a' 's' 'm')
RANDOM_OP_INDEX=$((RANDOM % 3))
SELECTED_OP=${OPERATIONS[$RANDOM_OP_INDEX]}

echo "$SELECTED_OP" >> $OUTPUT_FILE

echo "Teste gerado com a operação: '${SELECTED_OP}'"
