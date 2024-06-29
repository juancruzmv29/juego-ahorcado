.data
mapa2: //64x20
      .ascii "|-------------------------------------------------------------|\n"
      .ascii "|EL JUEGO DEL AHORCADO ORGA                                   |\n"
      .ascii "|                                                             |\n"
      .ascii "|                    |-----------                             |\n"
      .ascii "|                    |          |                             |\n"
      .ascii "|                    |                                        |\n"
      .ascii "|                    |                                        |\n"
      .ascii "|                    |                                        |\n"
      .ascii "|                    |                                        |\n"
      .ascii "|                  - - -                                      |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|  SCORE:                                                     |\n"
      .ascii "|INTENTOS: 7                                                  |\n"
      .ascii "|LETRAS FALLADAS:                                             |\n"
      .ascii "|    PALABRA OCULTA:                                          |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|-------------------------------------------------------------|\n"
perdiste:
      .ascii "|-------------------------------------------------------------|\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|             ¡¡¡¡¡ HAS PERDIDO !!!!!                         |\n"
      .ascii "|                                                             |\n"
      .ascii "|             PARA VOLVER A JUGAR PRESIONE 'Y'                |\n"
      .ascii "|             PARA TERMINAR PRESIONE       'N'                |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|-------------------------------------------------------------|\n"


ganaste:
      .ascii "|-------------------------------------------------------------|\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|               !!!!    HAS GANADO ¡¡¡¡                       |\n"
      .ascii "|                                                             |\n"
      .ascii "|             PARA VOLVER A JUGAR PRESIONE 'Y'                |\n"
      .ascii "|             PARA TERMINAR PRESIONE       'N'                |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|-------------------------------------------------------------|\n"  //64X20
rank:
      .ascii "|-------------------------------------------------------------|\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|             RANKING DE LOS ULTIMOS JUGADORES                |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|               SI DESEA JUGAR  PRESIONE 'Y'                  |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|                                                             |\n"
      .ascii "|-------------------------------------------------------------|\n"  //64X20





caracteres_acertados: .space 10       // contiene las letras acertadas por el jugador
caracteres_usados:  .space 10

bienvenida_msg: .asciz "Bienvenido al juego del ahorcado"

ultima_oportunidad_msg: .asciz "Le queda una ultima oportunidad"

disparo_x_msg: .asciz "Perdio todos los intentos,se va a realizar un disparo a la cuerda \n ingrese un numero de tres cifras para la cordenada X:"
disparo_y_msg: .asciz "ingrese otro numero para la cordenada Y:"

coordy_jugador: .byte 0                // numero de coordenada donde el jugador va a poner el numero
coordx_jugador: .byte 0                // numero de coordenada x

coord_y: .byte 5
coord_x: .byte 33


caracterEquivocado_msg: .asciz "El caracter ingresado no se encuentra en la palabra"
caracterCorrecto_msg: .asciz "El caracter ingresado es correcto!"

game_over_msg: .asciz "No le quedan mas intentos, terminoel juego"
salida_msg: .asciz "Gracias por jugar!!"
win_msg: .asciz "Ha acertado la palabra! Ha ganado el juego"
seguir_jugando_msg: .asciz "Ingrese s si quiere seguir jugando o n para salir"



ranking: .asciz "rank.txt"
nombre_jugador: .ascii "XXXX"
nombres_rank: .space 14

archivo: .asciz "palabras.txt"                                                // nombre del archivo txt
char_invalido: .asciz "El caracter ingresado es incorrecto"
vectorcuerpo: .word 0,545,543,480,417,415,416,352                             // posiciones del ascii donde vamos a poner una parte del cuerpo donde se equivoca
vectorascii:  .word 0,0x5C,0x2F,0x7C,0x5C,0x2F,0x7C,0x6F                      // caracteres de cada signo para formar el cuerpo, empieza a partir del ultimo caracter
posicion_caracteres_equivocados: .word 0,920,919,918,917,916,915,914          // contiene las posiciones en donde se dibujara las letras equivocadas , tambien
posiciona_para_caracteres_acertados: .word 0,980,981,982,983                  // contiene las posiciones en donde se dibujara las letras acertadas
ingresar_nombre: .asciz "ingrese su nombre de 4 letras\n"
palabra_hasheada: .asciz "####"
palabra_hasheada2: .asciz "####"
palabra_seleccionada: .space 4
char:  .space 2
score: .ascii "00"
restablecer_score: .ascii "00"
puntosintentos: .byte 7
puntosintentosparadibujar: .ascii "7"
siete: .byte 7
ingreseletra: .asciz "Ingrese una letra \n"
boolean: .word 0
archivo.txt: .asciz "texto.txt"
palabra_n: .byte 0
archivo_ranking: .asciz "ranking.txt"
lista_palabras: .space 49
palabra_pos: .byte 0
char_try_again: .space 2


.text
mostrar_ranking:                  // MOSTRARA EL RANK DE LOS ULTIMOS JUGADORES
        .fnstart                  // QUE ESTAN EN EL ARCHIVO LLAMADO RANK.TXT
        push {lr}
        mov r7,#5
        ldr r0,=ranking
        mov r1,#2
        mov r2,#438
        swi 0
        mov r6,r0

        mov r7,#3
        ldr r1,=nombres_rank
        mov r2,#14
        swi 0
        mov r3,#5
        mov r5,#10
        b grabar_ranking
        .fnend

grabar_ranking:                 //TENIENDO NOMBRE YA INGRESADO SE GUARDARA CUANDO EL JUGADOR
        .fnstart                // DECIDA NO JUGAR MAS(ES DECIR AL PRECIONAR N)
        ldrb r4,[r1,r3]        // CARGA EN R4  EL CONTENIDO DE R1 EN POSICION R3(5)
        strb r4,[r1,r5]
        add r3,r3,#1           // ANADE EN R3 DESPLAZAMIENTO DE 1
        add r5,r5,#1
        ldr r10,=nombres_rank
        cmp r3,#9              // SI R3 LLEGA A 9 YA CAMBIAMOS A LA SEGUNDA FASE  DONDE PASAMOS AL TERCERNOMBRE
        beq segunda_fase
        b grabar_ranking
        .fnend
segunda_fase:                   // LA SEGUNDA FASE CONSISTE EN TRASPASAR LOS NOMBRES
        .fnstart                // EL TERCERO SE BORRA, EL SEGUNDO PASA A SER EL TERCERO Y EL PRIMERO EL SEGUNDO Y EL NUEVO EN EL PRIMERO
        mov r3,#0
        mov r5,#5
        b tercera_fase
        .fnend
tercera_fase:
        .fnstart
        ldrb r4,[r1,r3]
        strb r4,[r1,r5]
        add r3,r3,#1
        add r5,r5,#1
        cmp r3,#4
        blt tercera_fase
        b cuarta_fase
        .fnend
cuarta_fase:
        .fnstart
        mov r3,#0
        ldr r9,=nombre_jugador
        b ultima_fase
        .fnend

ultima_fase:
        .fnstart
        ldrb r4,[r9,r3]         // EN R4 CARGAMOS EL CONTENIDO DE R9 QUE SERIA EL PRIMER DE BYTE DEL NOMBRE DEL JUGADOR
        strb r4,[r1,r3]
        add r3,r3,#1
        cmp r3,#4              // CUANDO LLEGUEMOS A LA COMA NOS VAMOS Y SALIMOS
        blt ultima_fase

        mov r0,r6
        mov r7,#6
        swi 0
        push {r1}

        mov r7,#5               // A PARTIR DE ACA GUARDA EL RANKING
        ldr r0,=ranking
        mov r1,#1
        mov r2,#438
        swi 0

        mov r6,r0

        mov r0,r6
        mov r7,#4
        ldr r1,=nombres_rank
        mov r2,#14
        swi 0

        mov r0,r6
        mov r7,#6
        swi 0
        pop {r1}
        .fnend

dibujar_rank:                // AGARRA LOS NOMBRES DEL  RANK.TXT Y  LA DIRECCION DEL MAPA PRINCIPAL
        .fnstart
        ldr r2,=rank
        mov r3,#530         // EMPIEZA EN LA POSICION 530
        mov r4,#0
        bl dibujar_nombres
        .fnend

dibujar_nombres:           // DIBUJARA LOS NOMBRE EN EL MAPA RANKING
        .fnstart
        cmp r4,#13        // COMPARA LA LONGITUD DE LA CADENA DE LA LISTA DE NOMBRES
        bgt print_pantalla_rank
        ldrb r5,[r1,r4]
        strb r5,[r2,r3]
        add r4,r4,#1
        add r3,r3,#1
        b dibujar_nombres
        .fnend
dibujar_rank:                // AGARRA LOS NOMBRES DEL  RANK.TXT Y  LA DIRECCION DEL MAPA PRINCIPAL
        .fnstart
        ldr r2,=rank
        mov r3,#530         // EMPIEZA EN LA POSICION 530
        mov r4,#0
        bl dibujar_nombres
        .fnend

dibujar_nombres:           // DIBUJARA LOS NOMBRE EN EL MAPA RANKING
        .fnstart
        cmp r4,#13        // COMPARA LA LONGITUD DE LA CADENA DE LA LISTA DE NOMBRES
        bgt print_pantalla_rank
        ldrb r5,[r1,r4]
        strb r5,[r2,r3]
        add r4,r4,#1
        add r3,r3,#1
        b dibujar_nombres
        .fnend
print_pantalla_rank:       // IMPRIME EL MAPA QUE CONTIENE LOS RANKING
        .fnstart
        mov r7,#4
        mov r0,#1
        mov r2,#1280
        ldr r1,=rank
        swi 0
        b empezar_a_jugar
        .fnend

empezar_a_jugar:           // SE EJECUTA LUEGO DE MOSTRAR EL MAPA CON LOS RANKING ESPERANDO QUE EL USUARIO PRECIO "Y" PARA JUGAR
        .fnstart
        bl ingresar_opcion
        ldrb r2, [r1]
        cmp r2, #0x59     // compara si es igual a Y
        beq juego_principal   // LUEGO DE PRECIONAR Y COMIENZA EL JUEGO
        .fnend
jugar:
        .fnstart
        pop {lr}
        bx lr
        .fnend

sumar_puntos:             // AL GANAR LA RONDA Y ANTES DE PASAR A LA SIGUIENTE LOS PUNTOS DE INTENTOS QUE SOBRE SE SUMA AL PUNTAJE
    .fnstart
        push {lr}        // CONSISTE EN DOS BYTES "00" CUANDO EL BIT MAS SIGNIFICATIVO SUPERE 10 EL BIT MENOS SIGNIFICATIVO SUMARA 1
        mov r0,#0       // Y EL MAS SIGNIFICATIVO TENDRA LA SIG OPERACION( (BIT MAS SIGNIFICATIVO +PUNTOS INTENTOS)-10)
        mov r1,#1
        ldr r2,=score
        ldrb r4,[r2,r1]
        sub r4,r4,#0x30
        ldr r5,=puntosintentosparadibujar
        ldrb r6,[r5,r0]
        sub r6,r6,#0x30

        add r4,r4,r6

        cmp r4,#10
        bge esmayor

        add r4,r4,#0x30
        strb r4,[r2,r1]
        bx lr
        .fnend

esmayor:                        // CUANDO LA OPERACION ANTES DICHA (BIT MAS SIGNIFICATIVO +PUNTOS INTENTOS)-10) SE EJECUTE, GUARDARA EL NUEVO NUMERO
        .fnstart
        sub r4,r4,#10
        add r4,r4,#0x30
        strb r4,[r2,r1]

        ldrb r7,[r2,r0]
        sub r7,r7,#0x30
        add r7,r7,#1
        add r7,r7,#0x30
        strb r7,[r2,r0]
        bx lr
        .fnend
dibujar_puntaje:         // SUBRUTINA QUE DIBUJARA EL PUNTAJE EN EL MAPA
        .fnstart
        mov r5,#0
        mov r6,#1
        ldr r0,=score
        ldr r1,=mapa2

        ldrb r2,[r0,r5]   // 0x
        mov r4,#778
        strb r2,[r1,r4]

        ldrb r2,[r0,r6]  // x0
        add r4,r4,#1
        strb r2,[r1,r4]
        bx lr
        .fnend




traspasar_puntaje:      // SE TRABAJA CON DOS PUNTAJES DIFERENTES UNO PARA EL PROGRAMA Y OTRO PARA DIBUJAR
        .fnstart        // ESTA SUBRUTINA SOLO HACE QUE LOS DOS SEAN IGUALES
        mov r4,#0
        ldr r0,=puntosintentos
        ldrb r1,[r0]
        ldr r2,=puntosintentosparadibujar
        ldrb r3,[r2]
        add r1,r1,#0x30
        strb r1,[r2]
        bx lr
        .fnend



restablecer_juego:       // RESTABLECE EL MAPA PARA LA SIGUIENTE RONDA (CUANDO EL USUARIO  GANA Y QUIERE SEGUIR JUGANDO)
        .fnstart
        bl traspasar_puntaje
        bl sumar_puntos
        ldr r0,=palabra_hasheada2
        mov r1,#0
        mov r2,#0x23         // HASH EN HEXA
        bl restablecer_hash
        bl restablecer_intentos
        bl restablecer_personaje
        bl limpiar_caracteres_usados
        bl subrutinas
        .fnend

limpiar_caracteres_usados:     // SE OBTIENEN LAS POSICIONES DE LOS CARACTERES QUE SE DIBUJARON EN EL MAPA
        .fnstart
        push {lr}
        ldr r0,=posicion_caracteres_equivocados
        mov r1,#4
        mov r2,#0x20           // CONVIERTE LAS LETRAS LETRAS USADOS EN ESPACIOS
        ldr r3,=mapa2
        b limpiar
        .fnend

limpiar:                     // UNA VEZ YA OBTENIDA LAS POSICIONES, RESTABLECERA LOS CARACTERES USADOS
        .fnstart
        cmp r1,#28          // PONEMOS 28 POR LOS 7 INTENTOS ENTONCES 4 X 7 28
        bgt volver
        ldr r5,[r0,r1]      // CARGA EN R5 LA POSICION DE CARACTERES EQUIVOCADOS Y AVANZA 1
        strb r2,[r3,r5]     // ALMACENA EN R2 EL CONTENIDO DEL MAPA
        add r1,r1,#4       // AVANZAMOS UN CARACTER
        b limpiar
        .fnend

restablecer_personaje:      // AL TERMINAR CADA RONDA EL AHORCADO SE RESTABLECERA
        .fnstart
        push {lr}
        ldr r0,=vectorcuerpo
        mov r1,#4
        ldr r3,=mapa2
        mov r4,#0x20       // COPIAMOS EN R4 UN ESPACIO
        b restablecer_cuerpo
        .fnend
restablecer_cuerpo:
        .fnstart
        cmp r1,#28        // SI ES MENOR A 28 SIGUE LA SUBRUTINA PARA REESTABLECE EL CUERPO
        bgt volver
        ldr r5,[r0,r1]    // CARFA EN R5 EL CONTENIDO DE R0 Y LE SUMAMOS 4
        strb r4,[r3,r5]   // ALMACENA EN R4 EL CONTENIDO DEL MAPA2 Y SUMAMOS LO QUE HAYA EN R5
        add r1,r1,#4      // AVANZAMOS DE CARACTER HASTA QUE 4 SEA 28 O MAS GRANDE
        b restablecer_cuerpo
        .fnend

restablecer_intentos:      // LOS INTENTOS TAMBIEN TIENEN SU POSICION EN EL MAPA, SE OBTIENE Y SE RESTABLECEN
        .fnstart
        mov r9,#0
        mov r8,#7
        ldr r9,=puntosintentos
        strb r8,[r9]

        mov r6,#0x37      // COPIAMOS EN R6 EL NUMERO 7
        ldr r7,=mapa2
        mov r8,#843
        strb r6,[r7,r8]
        bx lr
        .fnend

restablecer_hash:          // LA PALABRA OCULTA ESTA EN HASH, POR LO QUE EN CADA RONDA SE RESTABLECE
        .fnstart
        push {lr}
        ldrb r3,[r0,r1]
        cmp r3,#0
        beq volver
        strb r2,[r0,r1]
        add r1,r1,#1
        b restablecer_hash
        .fnend
volver:
        .fnstart
        pop {lr}
        bx lr
        .fnend




dibujar_palabra_en_mapa: // SE ENCARGA DE DIBUJAR LA PALABRA HASHEADA EN EL MAPA, ESTA PALABRA ESTARA EN HASH O CON SUS LETRAS ACERTADAS Y SE DIBUJARA
        .fnstart        // ES DECIR,SE OBTIENE LAS POSICIONES DE DONDE DIBUJAR LAS LETRAS ACERTADAS Y LOS HASH
        push {lr}
        ldr r0,=palabra_hasheada2
        ldr r1,=mapa2
        ldr r2,=posiciona_para_caracteres_acertados
        mov r3,#4
        mov r4,#0
        bl dibujar_letra
        pop {lr}
        bx lr
        .fnend
dibujar_letra:          // SI EL USUARIO ACERTO CON LAS LETRAS ESTAS TENDRAN SU POSICION PARA DIBUJARSE
        .fnstart
        ldr r5,[r2,r3]   //carga posicion en el mapa
        ldrb r6,[r0,r4] // carga el byte palabra hasheada
        strb r6,[r1,r5] // guarda el byte en el mapa
        add r3,r3,#4
        add r4,r4,#1
        cmp r4,#3
        ble dibujar_letra
        bx lr

volver_main:
        .fnstart
        .fnend


leer_palabras:          // SE OBTIENEN LAS PALABRAS DEL TXT DONDE SE UBICAN LAS PALABRAS PARA ADIVINAR
        .fnstart        // ACLARACION: COMO NO SON RANDOM SE ELIJIRA LA PALABRA SIGUIENTE
        push {lr}
        mov r7,#5
        ldr r0,=archivo.txt
        mov r1,#2
        mov r2,#438
        swi 0
        mov r6,r0


        mov r7,#3
        ldr r1,=lista_palabras
        mov r2,#49
        swi 0

        ldr r5,=palabra_seleccionada
        ldr r8,=palabra_pos
        ldrb r3,[r8]
        bl volver_al_principio_de_la_lista
        ldr r4,[r1,r3]
        str r4,[r5],#0
        add r3,r3,#5
        strb r3,[r8]
        pop {lr}
        bx lr
        .fnend
volver_al_principio_de_la_lista: // CUANDO SE HAYA TERMINADO DE ADIVINAR LA ULTIMA PALABRA VOLVERA AL PRINCIPIO
        .fnstart
        push {lr}
        cmp r3,#45              // COMPARA LA POSICION DE LA PALABRA CON EL 45
        bgt reiniciar_pos      // SI ES MAS GRANDE O IGUAL REINICIA LA POSICION SETEANDOLA EN 0
        pop {lr}
        bx lr
        .fnend
reiniciar_pos:                  // SE ENCARGARA DE REINICIAR LA POSICION DE DONDE SE ELIJEN LAS PALABRAS
        .fnstart
        mov r3,#0
        pop {lr}
        .fnend

guardar_nombre:                // SE GUARDA EL NOMBRE PERO NO SE GRABA (SOLO SE GRABARA SI EL JUGADOR DECIDE TERMINAR)
        .fnstart
        mov r7, #5
        ldr r0, =archivo_ranking         //ranking_archi    (rankin_txt)
        mov r1, #1            // abrimos poara escritura
        mov r2, #438
        swi 0

        mov r7, #19
        mov r0, r6
        mov r1, #0
        mov r2, #2
        swi 0

        mov r0, r6
        mov r7, #4
        ldr r1, =nombre_jugador
        mov r2, #25
        swi 0

        mov r0, r6
        mov r7, #6
        swi 0

        bx lr
        .fnend

ultima_oportunidad_intento:    // AL TERMINAR CON TODOS LOS INTENTOS, AL JUGADOR SE LE DARA UNA ULTIMA OPORTUNIDAD PARA QUE ELIJA UNA X,Y PARA REALIZAR EL DISPARO
        .fnstart
        push { lr }
        bl imprimir_mapa
        bl limpiarregistros
        mov r7,#4
        mov r0,#1
        mov r2,#122
        ldr r1,=disparo_x_msg         // muestra el mensaje de ingrersar numero de 3 cifras para x
        swi 0

        mov r7,#3
        mov r0,#0
        mov r2,#4
        ldr r1,=coordx_jugador      // donde se va a almacenar lo ingresado por el jugador
        swi 0

        ldr r3,[r1]
        str r3,[r1]
        bl limpiarregistros

        mov r7,#4               // muestra el mensaje para asignarle y
        mov r0,#1
        mov r2,#40
        ldr r1,=disparo_y_msg
        swi 0

        mov r7,#3
        mov r0,#0
        mov r2,#4
        ldr r1,=coordy_jugador
        swi 0

        ldr r3,[r1]
        str r3,[r1]
        bl verificar_x_y          // funcion que va a comporbar si el numero que coloco el jugador coincidio con la coordenada
        .fnend

verificar_x_y:                    // SUBRUTINA QUE VERIFICARA QUE LA X,Y CONCIDA CON LA CUERDA
        .fnstart
        ldr r0, =coord_x
        ldr r1, [r0]
        ldr r2, =coordx_jugador
        ldr r3, [r2]
        cmp r1, r3
        beq acerto_x_verificarY
        b fallo_disparo
        .fnend
acerto_x_verificarY:              // VERIFICARA QUE LA Y CONCIDA CON LA CUERDA
        .fnstart
        ldr r0, =coord_y
        ldr r1, [r0]
        ldr r2, =coordy_jugador
        ldr r3, [r2]
        cmp r1, r3
        beq gano_juego
        b fallo_disparo
        .fnend

fallo_disparo:            // SI FALLO EL DISPARO SE REINICIARA TODO EL MAPA E INDICARA QUE PERDIO
        .fnstart
        bl restablecer_puntaje
        ldr r0,=palabra_hasheada2
        mov r1,#0
        mov r2,#0x23
        bl restablecer_hash
        bl restablecer_intentos
        bl restablecer_personaje
        bl limpiar_caracteres_usados
        bl print_pantalla_fallo_disparo
        b  intentar_de_nuevo_posperdida
        .fnend
print_pantalla_fallo_disparo:           //MOSTRARA EL MAPA QUE PERDIO
        .fnstart
        mov r7,#4
        mov r0,#1
        mov r2,#1280
        ldr r1,=perdiste
        swi 0
        bx lr
        .fnend
intentar_de_nuevo_posperdida:        // OPCION POST PERDIDA QUE PEDIRA "Y" PARA SEGUIR JUANDO O "N" PARA TERMINAR
        .fnstart
        bl ingresar_opcion
        ldrb r2, [r1]                // ingresa contenido de ingresar_opcion
        cmp r2, #0x59                // compara si es igual a Y
        beq subrutinas
        cmp r2, #0x4E                // compara si es igual  N
        beq main                    //print_pantalla_rank
        b intentar_de_nuevo
        .fnend

restablecer_puntaje:             // reestablece el puntaje
        .fnstart
        ldr r0,=restablecer_score
        ldrh r1,[r0]
        ldr r2,=score
        strh r1,[r2]
        bx lr
        .fnend




@@@@ Funcion que chequea caracteres usados
check_caracteres_usados:             // funcion que va a recolectar los caracteres usados  y verirfica
        .fnstart
        push { lr }
        ldr r0, =caracteres_usados
        ldr r1, [r0]
        ldr r2, =char
        ldr r3, [r2]
ciclo2:
        cmp r1, #0
        beq terminar_chequeo       // termina el chequeo
        cmp r1, r3
        beq poner_char_de_nuevo
        ldrb r1, [r0], #1        // pasa al otro caracter
        b ciclo2


poner_char_de_nuevo:             // etiqueta que llama a la funcion para decirle al usuario que ponga de nuevo un caracter
        b leer_letra

terminar_chequeo:
        ldr r1, =char
        strb r1, [r1]
        pop { lr }
        bx lr
        .fnend



verificarfallo:                 // SUBRUTINA QUE VERIFICARA CON UN BOOLEAN SI FALLO O NO (0=no acerto letra y resta intento,1=acerto letra vuelve a pedir letra)
        .fnstart
        ldr r0,=boolean
        ldr r1,[r0]
        cmp r1,#0
        beq restarintentos
        bx lr
        .fnend

restarintentos:                 // EN EL CASO DE QUE EL USUARIO FALLO (BOOLEAN=1) RESTARA INTENTO Y DIBUJARA AHORCADO
        .fnstart                // SE OBTIENE LAS POSICIONES EN DONDE SE  DIBUJARA EL AHORCADO Y LAS DIBUJARA
        push {lr}
        push {r0,r1,r2,r3,r4,r5,r6,r7,r8}
        ldr r0,=vectorcuerpo
        ldr r1,[r0]
        ldr r2,=vectorascii
        ldr r3,[r2]
        ldr r4,=puntosintentos // RESTARA PUNTO INTENTO
        ldrb r5,[r4]
        add r5,r5,r5
        add r5,r5,r5
        ldr r6,=mapa2
        ldr r7,[r0,r5]
        ldr r8,[r2,r5]
        strb r8,[r6,r7]

        mov r11,#843
        ldrb r10,[r6,r11]
        sub r10,r10,#1
        strb r10,[r6,r11]
        pop {r0,r1,r2,r3,r4,r5,r6,r7,r8}

        bl palabras_equivocadas

        ldr r3,=puntosintentos
        ldr r4,[r3]
        sub r4,r4,#1
        strb r4,[r3]
        pop {lr}
        bx lr
        .fnend

palabras_equivocadas:  // SE ENCARGARA LUEGO DE FALLAR LA LETRA, DE DIBUJARLA EN EL MAPA
        .fnstart
        ldr r0,=mapa2
        ldr r1,=puntosintentos
        ldrb r2,[r1]
        ldr r3,=posicion_caracteres_equivocados
        add r2,r2,r2
        add r2,r2,r2
        ldr r4,[r3,r2]       // CARGA EN R4 EL CONTENIDO DE POSICION DE R3 Y LE SUMAMOS O AVANZAMOS R2 (QUE SERIA LOS PUNTOS DE LOS INTENTOS DEL JUGADOR)
        ldr r5,=char
        ldrb r6,[r5]
        strb r6,[r0,r4]      // ALMACENAMOS EN EL CHAR EN EL MAPA EN LA POSICION DE R4
        bx lr
        .fnend


acerto:             //
        .fnstart
        cmp r11, r9
        b gano_juego
        bx lr
        .fnend

gano_juego:                  // MUESTRA MAPA QUE EL USUARIO GANO LA RONDA Y PEDIRA SI QUIERE  INTENTAR DENUEVO
        .fnstart
        ldr r1, =win_msg
        bl print_pantalla_gano
        bl leer_palabras
        b intentar_de_nuevo
        .fnend

perdio_juego:               // MUESTRA QUE EL JUGADOR PERDIO Y LE DA SUS ULTIMA OPORTUNIDAD
        .fnstart
        bl ultima_oportunidad_intento
        bl print_pantalla_perdio
        b intentar_de_nuevo
        .fnend

intentar_de_nuevo:           // LE PEDIRA AL USUARIO SI QUIERE JUGAR DENUEVO(Y=SI)(N=NO)
        .fnstart
        bl ingresar_opcion
        ldrb r2, [r1]    // ingresa contenido de ingresar_opcion
        cmp r2, #0x59     // compara si es igual a Y
        beq restablecer_juego
        cmp r2,#0x4E     // compara si es igual  N
        beq preciono_n
        b intentar_de_nuevo
        .fnend
preciono_n:
        bl restablecer_2
        b main

restablecer_2:             // CUANDO EL JUGADOR PPRECIONA N SE RESTABLECERA DE OTRA FORMA DIFERENTE A CUANDO SE GANA
        .fnstart
        bl restablecer_puntaje
        ldr r0,=palabra_hasheada2
        mov r1,#0
        mov r2,#0x23
        bl restablecer_hash
        bl restablecer_intentos
        bl restablecer_personaje
        bl limpiar_caracteres_usados
        b main
        .fnend

ingresar_opcion:           // SUBRUTINA PARA QUE EL JUGADOR PUEDA INGRESAR "N" O "Y"
        .fnstart
        mov r7, #3
        mov r0, #0
        mov r2, #2
        ldr r1, =char_try_again
        swi 0
        bx lr
        .fnend


comprobar_letra:              // RECORRERA LOS MISMOS INDICE LA PALABRA HASHEADA Y LA PALABRA ELEJIDA
        .fnstart
        push {lr}
        ldr r0,=palabra_hasheada2
        ldr r1,=palabra_seleccionada
        ldr r3,=char
        ldrb r4,[r3]
        mov r6,#0
ciclo:
        ldrb r5,[r0,r6]       //byte palabra hasheada
        ldrb r7,[r1,r6]       //byte  palabra

        cmp r6,#4             //compara si se llegoo al final de la palabra
        beq fincomprobacion

        bl resultado_intento  //verificara si son iguales el byte de la palabra con la letra ingresada, de ser asi
        add r6,r6,#1
        b ciclo
        .fnend
resultado_intento:            // funcion que verifica si letra y un byte palabra son iguales(si lo es escribira la letra adivinada)
        .fnstart             // en caso de que no logre entra en modificar se tomara como que no acerto a ninguna letra y fallo
        cmp r4,r7            // compara la letra ingresada por el usuario con la posicion de la palabra seleccionada y si son iguales modificamos el boolean
        beq modificar
        bx lr
        .fnend
modificar:              // en el caso de que encuentra la letra, modifica la posicion donde se encuentra en la letra en palabrahasheada
        .fnstart
        push {r0,r1}     // hago una breve modificacion al boolean, cambiandolo a uno para que haya una verificacion en el acierto,es decir que si ingreso se toma como que acerto
        ldr r0,=boolean
        mov r1,#1
        strb r1,[r0]
        pop {r0,r1}
        strb r4,[r0,r6]
        bx lr
        .fnend
leer_letra:             // MOSTRARA  TEXTO QUE INGRESE UNA LETRA AL JUGAR
        .fnstart
        mov r7,#4
        mov r0,#1
        mov r2,#19
        ldr r1,=ingreseletra
        swi 0

        mov r7,#3
        mov r0,#0
        mov r2,#2
        ldr r1,=char
        swi 0
        bx lr
        .fnend

ingresar_nombre_para_jugar:   // MOSTRARA QUE INGRESE SU NOMBRE PARA JUGAR
        .fnstart
        mov r7,#4
        mov r0,#1
        mov r2,#30
        ldr r1,=ingresar_nombre
        swi 0
                            // DONDE SE GUARDARA EL NOMBER
        mov r7,#3
        mov r0,#0
        mov r2,#5
        ldr r1,=nombre_jugador
        swi 0
        ldr r3,[r1]
        str r3,[r1]
        bx lr
        .fnend

fincomprobacion:
        .fnstart
        pop {lr}
        bx lr
        .fnend
restablecerboolean:  // RESTABLECERA EL BOOLEAN PARA VOLVER A JUGAR LA SIGUIENTE RONDA( BOOLEAN QUE VERIFICA SI INGRESO A MODIFICAR O NO)
        .fnstart
        push {r0,r1}
        ldr r0,=boolean
        mov r1,#0
        strb r1,[r0]
        bx lr
        .fnend
limpiarregistros:      // limpia todos los registros
        .fnstart
        mov r0,#0
        mov r1,#0
        mov r2,#0
        mov r3,#0
        mov r4,#0
        mov r5,#0
        mov r6,#0
        mov r7,#0
        mov r8,#0
        mov r9,#0
        mov r10,#0
        mov r11,#0
        mov r12,#0
        bx lr
        .fnend

verificarsiperdio:   // SI LA CANTIDAD DE INTENTOS ES "0" SE LE DARA LA ULTIMA OPORTUNIDAD

        .fnstart
        push {lr}
        ldr r1,=puntosintentos
        ldrb r2,[r1]
        cmp r2,#0
        beq ultima_oportunidad_intento
        pop {lr}
        bx lr
        .fnend
fin:
        .fnstart
        push {lr}
        mov r7,#1
        swi 0
        b fin
        bx lr
        pop {lr}
        .fnend
verificarsigano:          // SI LOS 4 BYTES DE LA PALABRA HASHEADA SON IGUALES A LA PALABRA SELECCIONADA GANA
        .fnstart
        ldr r3,=palabra_seleccionada
        ldr r4,[r3]
        ldr r5,=palabra_hasheada2
        ldr r6,[r5]
        cmp r6,r4
        beq acerto
        bx lr
        .fnend
informar_resultado:     //MOSTRARA SI EL USUARIO GANO O PERDIO
        .fnstart
        push {lr}
        bl verificarsigano
        bl verificarsiperdio
        pop {lr}
        .fnend

subrutinas:             // SUBRUTINAS PARA EL JUEGO AHORCADO (NO ES EL JUEGO PRINCIPAL)
        .fnstart
        bl dibujar_palabra_en_mapa
        bl dibujar_puntaje
        bl imprimir_mapa
        bl limpiarregistros
        bl leer_letra
        bl checked_char
        bl comprobar_letra
        bl limpiarregistros
        bl verificarfallo
        bl restablecerboolean
        bl informar_resultado
        b subrutinas
        .fnend
checked_char:   // CHECKEA QUE LA LETRA SE MAYUSCULA
        .fnstart
        ldr r1, =char
        ldrb r2, [r1]
        cmp r2, #65                  // compara si es menor a A
        blt resetear_intento
        cmp r2, #90                 // si el caracter esta entre A y Z
        bgt resetear_intento
        strb r2, [r1]              // almacenamos el caracter r1 en r2
        bx lr
        .fnend

imprimir_mapa:                  //IMPRIMIRA EL MAPA CON SUS ACTUALIZACIONES
        .fnstart
        mov r7,#4
        mov r0,#1
        mov r2,#1280
        ldr r1,=mapa2           // imprimimos el mapa
        swi 0
        bx lr
        .fnend
print_pantalla_gano:
        .fnstart
        mov r7,#4
        mov r0,#1
        mov r2,#1280
        ldr r1,=ganaste
        swi 0
        bx lr
        .fnend
print_pantalla_perdio:
        .fnstart
        mov r7,#4
        mov r0,#1
        mov r2,#1280
        ldr r1,=perdiste        // imprimimos el mapa
        swi 0
        b fin
        bx lr
        .fnend

resetear_intento:
        .fnstart
        .fnend

juego_principal:
        .fnstart
        bl ingresar_nombre_para_jugar
        bl leer_palabras
        bl subrutinas
        bl restablecer_juego
        .fnend

.global main
        main:
        bl mostrar_ranking
        bl juego_principal
