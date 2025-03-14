0 STIN
1 STOUT
2 STRERR

STDIN ~ /dev/stdin or /proc/{proc-id}/fd/0
STDOUT ~ /dev/stdout or /proc/{proc-id}/fd/1
STDERR ~ /dev/stderr or /proc/{proc-id}/fd/2

Exit Code

=0 - Existoso
>1 - Error

Concatenacion o combinacion de comandos
; Se ejecuta el comando sin importar si alguno de los comandos falla, aunque sean mas de dos comandos, sirve para concatenar
&&
||