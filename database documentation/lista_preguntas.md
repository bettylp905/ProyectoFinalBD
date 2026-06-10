#Preguntas que se deben responder en base al esquema de base de datos 'escuela'

1.¿Cuales son los estudianes inscritos en el curso de "Algebra"?
6 , lo que tuve que hacer fue poner el siguiente codigo en SQL 
"SELECT count(*) AS total_alumnos
FROM inscripciones
JOIN cursos on inscripciones.id_curso = cursos.id
where cursos.nombre ='Álgebra'", el select busca a todos los alumnos , luego se va  a la 
tabla de inscripciones ,despues busca con un Join los cursos que tengan inscripciones + id_curso , y para finalizar busca el nombre del curso que en este caso es Álgebra´.

2.¿Que cursos imparte el Profesor Martinez?
 Programacion , de igual manera ocupaamos el JOIN para conectarnos a la tabla de cursos con la de profesores con el ON es como un puente que une los datos con el ID del profesor

3.¿Cuantos estudiantes estan inscritos en cada curso?
Algerbra = 6, Biologia = 3 , Historia = 3, Programacion = 3 , Fisica = 3
ocupe un Count , que es un contador , que le dice a la BD que sume todos los alumnos, y el GRUOP BY es la que ordena a la BD qeu agrupe todos los resultados guiandose por el nombre de la materia 

4.¿Cual es el promedio de notas por curso? 
Biologia con un promedio de 9.0 ponemos un select dec cursos.nombre y ponems un nueva funcion AVG (notas.nota) que le dice a BD queire el promedio de las notas de la tabala de notas  pero hazlas como Promedio , hace 2 JOIN que revisa cursos  e  inscripciones y los agrupa por Cursos.nombre

5.¿Lista de estudiantes con notas mayores a 8.0?
Juan	Pérez	8.50
Juan	Pérez	9.00
Carlos	Sánchez	9.20
Juan	Pérez	8.50
Juan	Pérez	9.00
Carlos	Sánchez	9.20
Juan	Pérez	8.50
Juan	Pérez	9.00
Carlos	Sánchez	9.20

hacemos nuevamenye un select que pida  nombre , apellidos y notas de todos los alumnos inscritos a un curso , luego hacemos unos JOINS , el primero pide las inscripciones x estudiante , que devuelva las inscripcones cn el id de estudainte , el segundo las notas de las inscripciones (id) y un where donde se estipule que las solamente nos de los estudaintes con las notas mayores a 8.0

6.¿Que cursos tienen mas de una inscripcion?

7.¿Que profesores pertenecen al departamento de 'Ingeneria'?

8.¿Cuales son los cursos  programados los lunes?

9.¿Que aulas tienen una capacidad mayor a 25?

10.Lista de cursos con su aula y horario

11.¿Que estudiantes tienen la nota mas alta y en que cursos?

12.¿Cuantos profesores hay por departamento ?

13.¿Que cursos no tienen estudiantes inscritos?

14.¿Que estudiantes estan inscritos en mas de un curso?

15.¿Cuale es el curso con menor promedio de notas?