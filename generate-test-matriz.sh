#!/bin/bash

# Este script gera um caso de teste para o programa 'matriz'.
# Ele cria um arquivo 'entrada_matriz.txt'.
# A primeira linha contém as dimensões L e C (linhas e colunas).
# As L linhas seguintes contêm C elementos cada.

# Define o nome do arquivo de saída
OUTPUT_FILE="entrada_matriz.txt"

# Define dimensões aleatórias para a matriz (entre 3 e 8).
ROWS=$((RANDOM % 6 + 3))
COLS=$((RANDOM % 6 + 3))

# Escreve as dimensões na primeira linha do arquivo (sobrescreve).
echo "$ROWS $COLS" > $OUTPUT_FILE

# Informa ao usuário sobre o arquivo que está sendo gerado.
echo "Gerando arquivo '$OUTPUT_FILE' com uma matriz de ${ROWS}x${COLS}..."

# Itera sobre cada linha
for i in $(seq 1 $ROWS)
do
  # Inicializa uma string vazia para a linha atual
  current_line=""
  # Itera sobre cada coluna
  for j in $(seq 1 $COLS)
  do
    # Gera um elemento aleatório (entre 0 e 99)
    ELEMENT=$((RANDOM % 100))
    # Adiciona o elemento e um espaço à string da linha
    current_line+="$ELEMENT "
  done
  # Escreve a linha completa no arquivo, removendo o espaço extra no final.
  echo "${current_line% }" >> $OUTPUT_FILE
done

echo "Arquivo de teste gerado com sucesso."
