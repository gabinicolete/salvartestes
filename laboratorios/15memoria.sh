#!/bin/bash

# Definimos o diretório base de saída
output_dir="/caminho/do/seu/diretorio"

# Garantimos que o diretório de saída exista
mkdir -p "$output_dir"

# Definimos o caminho para o arquivo de saída com timestamp
output_file="${output_dir}/top_processes_$(date +\%Y\%m\%d_\%H\%M).txt"

# Adicionamos um cabeçalho no arquivo de saída
echo "Listagem dos 15 processos com maior consumo de memória em $(date)" > "$output_file"

# Listamos os 15 processos com maior consumo de memória e salvamos no arquivo de saída
ps -e -o pid,cmd,%mem,%cpu --sort=-%mem | head -n 16 >> "$output_file"
