#!/bin/bash

function mostrar_ayuda() {
    echo "Uso: $0 -u <usuario> -d <base de datos> -o <archivo de salida>"
    echo "Opciones:"
    echo "  -u  Usuario de la base de datos (obligatorio)"
    echo "  -d  Nombre de la base de datos (obligatorio)"
    echo "  -o  Ruta y nombre del archivo de respaldo (obligatorio)"
    echo "  -h  Mostrar esta ayuda"
    exit 0
}

usuario=""
db=""
archivo=""

while getopts "u:d:o:h" opt; do
    case $opt in
        u) usuario="$OPTARG" ;;
        d) db="$OPTARG" ;;
        o) archivo="$OPTARG" ;;
        h) mostrar_ayuda ;;
        *) mostrar_ayuda ;;
    esac
done

if [[ -z "$usuario" || -z "$db" || -z "$archivo" ]]; then
    echo "Error: Todos los parámetros -u, -d y -o son obligatorios."
    mostrar_ayuda
fi

read -s -p "Introduce la contraseña para el usuario '$usuario': " password

echo -e "\n Iniciando respaldo..."
echo "Usuario: $usuario"
echo "Base de datos: $db"
echo "Archivo de salida: $archivo"

mysqldump -u "$usuario" -p"$password" "$db" > "$archivo"

if [ $? -eq 0 ]; then
    echo "Backup exitoso: $archivo"
else
    echo "Error: No se pudo realizar el backup."
    exit 1
fi