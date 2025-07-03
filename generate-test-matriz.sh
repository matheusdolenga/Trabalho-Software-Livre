#!/bin/bash

OUTPUT_FILE="entrada_matriz.txt"

ROWS=$((RANDOM % 5 + 2)) # Matrizes de 2x2 a 6x6
COLS=$ROWS # Matrizes quadradas

# Gera e escreve as duas matrizes
echo "$ROWS $COLS" > $OUTPUT_FILE

for k in $(seq 1 2) # Loop para gerar 2 matrizes
do
  for i in $(seq 1 $ROWS)
  do
    current_line=""
    for j in $(seq 1 $COLS)
    do
      ELEMENT=$((RANDOM % 100))
      current_line+="$ELEMENT "
    done
    echo "${current_line% }" >> $OUTPUT_FILE
  done
done

# Adiciona a letra da operação aleatória
OPERATIONS=('a' 's' 'm')
RANDOM_OP_INDEX=$((RANDOM % 3))
SELECTED_OP=${OPERATIONS[$RANDOM_OP_INDEX]}

echo $SELECTED_OP >> $OUTPUT_FILE

echo "Arquivo de teste '$OUTPUT_FILE' gerado para uma matriz ${ROWS}x${COLS} com a operação '${SELECTED_OP}'."