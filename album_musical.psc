Algoritmo album_musical
	Definir opcion, totalAlbumes Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir album Como Caracter
	Definir artista Como Caracter
	Definir genero Como Caracter
	Definir anio Como Entero
	Definir canciones Como Entero
	Definir discografica Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension album[100]
	Dimension artista[100]
	Dimension genero[100]
	Dimension anio[100]
	Dimension canciones[100]
	Dimension discografica[100]
	Dimension estado[100]
	totalAlbumes <- 0
	siguienteID <- 1
	//----------------------------------//
	//--|menu_principal_album_musical|--//
	//----------------------------------//
	Repetir
		Escribir "menu principal álbum musical"
		Escribir "1) registrar álbum musical"
		Escribir "2) editar álbum musical"
		Escribir "3) eliminar álbum musical"
		Escribir "4) buscar álbum musical"
		Escribir "5) listar álbumes musicales"
		Escribir "6) ver detalles del álbum musical"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//-----------------------------//
			//--|registrar_album_musical|--//
			//-----------------------------//
			1:
				Escribir "registrar álbum musical"
				id[totalAlbumes + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalAlbumes + 1]
				Escribir "ingrese el nombre del álbum:"
				Leer album[totalAlbumes + 1]
				Escribir "ingrese el artista:"
				Leer artista[totalAlbumes + 1]
				Escribir "ingrese el género musical:"
				Leer genero[totalAlbumes + 1]
				Escribir "ingrese el año de lanzamiento:"
				Leer anio[totalAlbumes + 1]
				Escribir "ingrese la cantidad de canciones:"
				Leer canciones[totalAlbumes + 1]
				Escribir "ingrese la discográfica:"
				Leer discografica[totalAlbumes + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalAlbumes + 1]
				totalAlbumes <- totalAlbumes + 1
				Escribir "álbum musical registrado correctamente."
			//--------------------------//
			//--|editar_album_musical|--//
			//--------------------------//
			2:
				Escribir "editar álbum musical"
				Si totalAlbumes = 0 Entonces
					Escribir "no hay álbumes musicales registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalAlbumes Hacer
						Escribir id[i], " | ", album[i], " | ", artista[i], " | ", genero[i], " | ", anio[i], " | ", canciones[i], " | ", discografica[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del álbum musical:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlbumes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre del álbum:"
							Leer album[i]
							Escribir "ingrese el nuevo artista:"
							Leer artista[i]
							Escribir "ingrese el nuevo género:"
							Leer genero[i]
							Escribir "ingrese el nuevo año de lanzamiento:"
							Leer anio[i]
							Escribir "ingrese la nueva cantidad de canciones:"
							Leer canciones[i]
							Escribir "ingrese la nueva discográfica:"
							Leer discografica[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "álbum musical editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un álbum musical con ese id."
					FinSi
				FinSi
			//----------------------------//
			//--|eliminar_album_musical|--//
			//----------------------------//
			3:
				Escribir "eliminar álbum musical"
				Si totalAlbumes = 0 Entonces
					Escribir "no hay álbumes musicales registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalAlbumes Hacer
						Escribir id[i], " | ", album[i], " | ", artista[i], " | ", genero[i], " | ", anio[i], " | ", canciones[i], " | ", discografica[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del álbum musical:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlbumes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalAlbumes Entonces
								Para j <- i Hasta totalAlbumes - 1 Hacer
									id[j] <- id[j+1]
									album[j] <- album[j+1]
									artista[j] <- artista[j+1]
									genero[j] <- genero[j+1]
									anio[j] <- anio[j+1]
									canciones[j] <- canciones[j+1]
									discografica[j] <- discografica[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalAlbumes <- totalAlbumes - 1
							Escribir "álbum musical eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un álbum musical con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|buscar_album_musical|--//
			//--------------------------//
			4:
				Escribir "buscar álbum musical"
				Si totalAlbumes = 0 Entonces
					Escribir "no hay álbumes musicales registrados."
				SiNo
					Escribir "ingrese el id del álbum musical:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlbumes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos registrados encontrados"
							Escribir id[i], " | ", album[i], " | ", artista[i], " | ", genero[i], " | ", anio[i], " | ", canciones[i], " | ", discografica[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un álbum musical con ese id."
					FinSi
				FinSi
			//------------------------------//
			//--|listar_albumes_musicales|--//
			//------------------------------//
			5:
				Escribir "listar álbumes musicales"
				Si totalAlbumes = 0 Entonces
					Escribir "no hay álbumes musicales registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalAlbumes Hacer
						Escribir id[i], " | ", album[i], " | ", artista[i], " | ", genero[i], " | ", anio[i], " | ", canciones[i], " | ", discografica[i], " | ", estado[i]
					FinPara
				FinSi
			//--------------------------------//
			//--|ver_detalles_album_musical|--//
			//--------------------------------//
			6:
				Escribir "ver detalles del álbum musical"
				Si totalAlbumes = 0 Entonces
					Escribir "no hay álbumes musicales registrados."
				SiNo
					Escribir "ingrese el id del álbum musical:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlbumes Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del álbum musical"
							Escribir "id: ", id[i]
							Escribir "álbum: ", album[i]
							Escribir "artista: ", artista[i]
							Escribir "género: ", genero[i]
							Escribir "año de lanzamiento: ", anio[i]
							Escribir "cantidad de canciones: ", canciones[i]
							Escribir "discográfica: ", discografica[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un álbum musical con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|salir_menu_principal|--//
			//--------------------------//
			7:
				Escribir "gracias por utilizar el álbum musical."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo