#!/bin/bash

OUTPUT_FILE="entrada_primo.txt"

TEST_NUMBER=$((RANDOM % 10000 + 1))

echo $TEST_NUMBER > $OUTPUT_FILE

echo "Arquivo de teste '$OUTPUT_FILE' gerado."