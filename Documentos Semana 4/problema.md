# SISTEMA DE GESTION DE UNA BIBLOTECA UNIVERSITARIA

## Contexto

Una bibloteca universitaria necesita digitalizar su operacion.Actualmente lleva el control que gestione su acervo,los  prestamos y los usuarios.

## Descripción del dominio
La bibloteca cuenta con **libro**,de los cuales puede tener varios **ejemplares** fisicos para cada titulo.
Cada libro tienen un título,año de publicacion, ISBN y pertenece a una o más **categorías**(Ciencias,Humanidades,Ingeneria,etc.).Ademas,cada libro fue escrito por uno o más **autores**

Los **usuarios** pueden ser estudiantes o profesores.De cada uno se guarda el nombre,correo,número de cuenta y tipo.
Un usuario puede tener **activos** varios prestmos simultaneos (maximo 3),pero un ejmeplar solo puedes estar prestado a un usuario a la vez.

Cada **prestamo** resgitra la fecha de salida, la fecha de devolución ( en el caso de que ya se haya devuelto el ejemplar).
Su un prestamo se devuelve más tarde, registra una **multa** con el monto y si fue pagada o no.


