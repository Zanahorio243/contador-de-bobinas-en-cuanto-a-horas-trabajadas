Algoritmo  InventarioBobinas
	// Inicialización del inventario de bobinas
    Escribir "Introduce el número total de bobinas en el inventario al inicio del turno:"
    Leer inventarioInicial
    inventarioActual <- inventarioInicial
    bobinasBajadas <- 0
    bobinasSubidas <- 0
	
    // Registro de bobinas bajadas y subidas en cada hora del turno
    Para hora <- 1 Hasta 8 Hacer
        Escribir "Introduce el número de bobinas bajadas en la hora ", hora, ":"
        Leer bobinasBajadasHora
        Escribir "Introduce el número de bobinas subidas en la hora ", hora, ":"
        Leer bobinasSubidasHora
        bobinasBajadas <- bobinasBajadas + bobinasBajadasHora
        bobinasSubidas <- bobinasSubidas + bobinasSubidasHora
        inventarioActual <- inventarioActual - bobinasBajadasHora + bobinasSubidasHora
    FinPara
	
    // Verificación para asegurarse de que el inventario no sea negativo
    Si inventarioActual < 0 Entonces
        Escribir "Error: Las bobinas bajadas exceden el inventario disponible."
    Sino
        // Mostrar el resumen del turno
        Escribir "Resumen del Turno:"
        Escribir "Bobinas bajadas en el turno de 8 horas: ", bobinasBajadas
        Escribir "Bobinas subidas en el turno de 8 horas: ", bobinasSubidas
        Escribir "Bobinas restantes en el inventario: ", inventarioActual
    FinSi
FinAlgoritmo

   