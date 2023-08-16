# compactArchives
Script feito em shell, para fazer a compactação de arquivos


# Passo 01

Tenha o bash instalado em sua máquina.

# Passo 02

Crie um arquivo (pode ser um txt, mas tem que ser com a extensão .sh) .sh
Dentro desse arquivo cole o código abaixo:
<br>
#!/bin/bash

#caminho da pasta
source_folder="$PWD"

#nome da pasta
name_folder=$(basename "$source_folder")

#nome do zip                   pega a data       pega a hora
name_file_zip="${name_folder}_$(date +%Y-%m-%d)_$(date +%H-%M).tar.gz" 

#cd "$source_folder" || exit

#tar -czvf $name_file_zip  -C "$(dirname "$source_folder")" "$(basename "$source_folder")"

#Enquanto compacta, igonora duas pastas
(cd "$(dirname "$source_folder")" && tar -czvf "$name_file_zip" --exclude=".git" --exclude="vendor" "$(basename "$source_folder")")
<br>

# Passo 03
Cole o arquivo na pasta raiz onde deseja compactar a pasta

# Passo 04
Execute o arquivo. Após executar, irá criar o arquivo compactado no diretório anterior. E seja feliz!
