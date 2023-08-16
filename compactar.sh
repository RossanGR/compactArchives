#!/bin/bash

#caminho da pasta
source_folder="$PWD"

#nome da pasta
name_folder=$(basename "$source_folder")

#nome do zip                   pega a data       pega a hora
name_file_zip="${name_folder}_$(date +%Y-%m-%d)_$(date +%H-%M).tar.gz" 

#cd "$source_folder" || exit

#tar -czvf $name_file_zip  -C "$(dirname "$source_folder")" "$(basename "$source_folder")"

#Enquanto compacta, igonra duas pastas
(cd "$(dirname "$source_folder")" && tar -czvf "$name_file_zip" --exclude=".git" --exclude="vendor" "$(basename "$source_folder")")

