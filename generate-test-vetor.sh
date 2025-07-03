#!/bin/bash

# Este script gera um caso de teste para o programa 'vetor'.
# Ele cria um arquivo 'entrada_vetor.txt'.
# A primeira linha contém o tamanho N do vetor.
# As N linhas seguintes contêm os elementos do vetor.

# Define o nome do arquivo de saída
OUTPUT_FILE="entrada_vetor.txt"

# Define um tamanho aleatório para o vetor (entre 5 e 20 elementos).
VECTOR_SIZE=$((RANDOM % 16 + 5))

# Escreve o tamanho do vetor na primeira linha do arquivo (sobrescreve o arquivo).
echo $VECTOR_SIZE > $OUTPUT_FILE

# Informa ao usuário sobre o arquivo que está sendo gerado.
echo "Gerando arquivo '$OUTPUT_FILE' com um vetor de tamanho $VECTOR_SIZE..."

# Gera N números aleatórios (um por linha) e os anexa ao arquivo.
# O '>>' anexa ao arquivo em vez de sobrescrevê-lo.
for i in $(seq 1 $VECTOR_SIZE)
do
  # Gera um elemento aleatório para o vetor (entre 0 e 999).
  ELEMENT=$((RANDOM % 1000))
  echo $ELEMENT >> $OUTPUT_FILE
done

echo "Arquivo de teste gerado com sucesso."
