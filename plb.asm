
.MODEL TINY
.STACK
.DATA
    NA DB 10,13,'Steven Alexander Villatoro Trabanino$'
	CA DB 10,13,'Carnet 1129215$'
.CODE
MAIN:
              ; Obtener Datos
MOV AX,@DATA  ; Direccion de DATA en AX
MOV DS, AX    ; Direccion de DATA en Data segment

 MOV DL, 12     ; se asigna el simbolo asci
MOV AH, 02    ; se asigna el valor
INT 21H       ; Ejecutar


			 ; Imprimir
MOV AH, 9     ; Funcion (Print String) Imprimir Cadena

LEA DX, NA   ; Obtiene la Direccion de "MSG"
INT 21H       ; Ejecutar

LEA DX, CA   ; Obtiene la Direccion de "MSG"
INT 21H       ; Ejecutar



              ; FIN
MOV AH, 4cH   ; Terminacion de Programa con Codigo de Retorno 
INT 21H       ; Ejecutar

END MAIN      ; Terminar Funcion Principal
