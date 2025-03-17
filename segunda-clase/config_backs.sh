# Descripción: Script para realizar respaldos de bases de datos MySQL.
# pasos para ejecutar este script
# 1. Cambiamos el nombre por ajgh-angel-johnattan-gil-herrera.sh
# 2. Le damos permisos de ejecución con chmod +x ajgh-angel-johnattan-gil-herrera.sh
# 3. Ejecutamos el script con ./ajgh-angel-johnattan-gil-herrera.sh -u root -d nombre_bd -o /tmp/backup.sql
# 4. Verificamos que se haya creado el archivo de respaldo en la ruta especificada.

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


# para correrrlo usamos 
#./IS-NAME.sh -u root -d nombre_bd -o /tmp/backup.sql
# ./AJGH-AngelJohnattanGilHerrera.sh -u root -d prueba_backup -o /tmp/backup.sql

# para ver el archivo creado
# cat /tmp/backup.sql