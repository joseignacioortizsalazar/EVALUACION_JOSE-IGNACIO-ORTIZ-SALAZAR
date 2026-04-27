Algoritmo sistema_estudiantes
	//los Definir 
    Definir i, opcion Como Entero
    Definir nombre Como Caracter
    Definir codigo, inasistencias Como Entero
    Definir n1, n2, n3, promedio, notaFinal Como Real
    
    // Arreglos para guardar datos
    Dimension nombres[10]
    Dimension codigos[10]
    Dimension nota1[10]
    Dimension nota2[10]
    Dimension nota3[10]
    Dimension inasis[10]
    Dimension notaF[10]
	
	//menu y opciones a hacer
    Repetir
        
        Escribir "=================================="
        Escribir "============== MENU =============="
        Escribir "1. Registrar estudiantes"
		Escribir "=================================="
        Escribir "2. Registrar notas e inasistencias"
        Escribir "=================================="
		Escribir "3. Mostrar listado de estudiantes"
        Escribir "=================================="
		Escribir "4. Calcular nota final"
        Escribir "=================================="
		Escribir "5. Salir"
        Escribir "=================================="
        Leer opcion
        
        Segun opcion Hacer
            
            1://codigo para registrar los 10 estudiantes
                Para i <- 1 Hasta 10 Hacer
                    Escribir "Estudiante ", i
                    Escribir "Nombre:"
                    Leer nombres[i]
                    Escribir "Codigo:"
                    Leer codigos[i]
                FinPara
				
            2://codigo para agregar notas y inasistencias
                Para i <- 1 Hasta 10 Hacer
                    Escribir "Notas del estudiante: ", nombres[i]
                    
                    Escribir "Nota #1:"
                    Leer nota1[i]
                    
                    Escribir "Nota #2:"
                    Leer nota2[i]
                    
                    Escribir "Nota #3:"
                    Leer nota3[i]
                    
                    Escribir "Inasistencias:"
                    Leer inasis[i]
                FinPara
				
            3://codigo para mostrar estudiantes en listado
				Escribir "listado de estudiantes"
                Para i <- 1 Hasta 10 Hacer
                    Escribir codigos[i], "# - ", nombres[i]
                FinPara
				
            4://codigo par las mostrar la tabla final
                Escribir "notas finales COD, NOMBRE, P1,P2,P3 INASISTENCIAS, NOTA"
                
				Para i <- 1 Hasta 10 Hacer
                    
                    Si inasis[i] >= 10 Y inasis[i] < 15 Entonces
						notaF[i] <- promedio - 0.5
					Sino
						Si inasis[i] >= 15 Entonces
							notaF[i] <- promedio - 1
						Sino
							notaF[i] <- promedio
						FinSi
					FinSi
                    promedio <- (nota1[i] + nota2[i] + nota3[i]) / 3
					
                    Escribir codigos[i], "=cod ", nombres[i], "=nombre ", nota1[i], "=N1 ", nota2[i], "=N2 ", nota3[i], "=N3 ", inasis[i], "=ASIST ", notaF[i], "=N.FIN"
                    
                FinPara
			
				
				
            5://para salir del programa
                Escribir "Saliendo..."
                Escribir "gracias por usar app notas #)"
        FinSegun
        
    Hasta Que opcion = 5
	
FinAlgoritmo
