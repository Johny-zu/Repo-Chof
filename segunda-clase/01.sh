##ARGUMENTOS 
#echo "hola chavos"
#ESTO ES UN COMENTARIO
#echo "Este es un argumento desde bash $1 $2 $3 $4"
#echo "Este es un argumento desde bash $@"
#echo "Este es un argumento desde bash $*"

##VARIABLES
#response=$(curl -L -w "%{http_code\n" -s -o /dev/null "$1")
#echo "Status code $1 $response"

##IF

#if [ $1 == google.com ]; then
#    echo "Siempre esta en 200, no haga nada"
#else
#    response=$(curl -L -w "%{http_code\n" -s -o /dev/null "$1")
#    echo "Status code $1 $response"
#fi

##WHILE
# while read line; do
#    response=$(curl -L -w "%{http_code}\n" -s -o /dev/null "$line")
#    echo "Status code $line $response"
# done < lista.txt

