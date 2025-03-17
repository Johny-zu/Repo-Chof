#!/bin/bash

# Función para mostrar ayuda
function mostrar_ayuda() {
    echo "Uso: $0 -u <usuario> -d <base de datos> -o <archivo de salida>"
    echo "Opciones:"
    echo "  -u  Usuario de la base de datos (obligatorio)"
    echo "  -d  Nombre de la base de datos (obligatorio)"
    echo "  -o  Ruta y nombre del archivo de respaldo (obligatorio)"
    echo "  -h  Mostrar esta ayuda"
    exit 0
}

# Variables
usuario=""
db=""
archivo=""

# Captura de argumentos
while getopts "u:d:o:h" opt; do
    case $opt in
        u) usuario="$OPTARG" ;;
        d) db="$OPTARG" ;;
        o) archivo="$OPTARG" ;;
        h) mostrar_ayuda ;;
        *) mostrar_ayuda ;;
    esac
done

# Validar argumentos
if [[ -z "$usuario" || -z "$db" || -z "$archivo" ]]; then
    echo "Error: Todos los parámetros -u, -d y -o son obligatorios."
    mostrar_ayuda
fi

# Pedir contraseña de forma segura
read -s -p "Introduce la contraseña para el usuario '$usuario': " password

echo -e "\n Iniciando respaldo..."
echo "Usuario: $usuario"
echo "Base de datos: $db"
echo "Archivo de salida: $archivo"

# Ejecutar mysqldump
mysqldump -u "$usuario" -p"$password" "$db" > "$archivo"

# Verificar si el backup fue exitoso
if [ $? -eq 0 ]; then
    echo "Backup exitoso: $archivo"
else
    echo "Error: No se pudo realizar el backup."
    exit 1
fi
