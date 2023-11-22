# Gestor-BD-Estudiantes

> Este proyecto tiene como objetivo desarrollar un **sistema de gestión de base de datos de estudiantes**.

[![SQL](https://img.shields.io/badge/MySQL-8.0+-f29221?style=for-the-badge&logo=mysql&logoColor=white&labelColor=101010)](https://mysql.com)
[![Java](https://img.shields.io/badge/Java-17-f29221?style=for-the-badge&logo=java&logoColor=white&labelColor=101010)][Java]

## Autores 🧑‍💻

- Israel Alejandro García Pérez
- Víctor Manuel Hernández Luna
- Víctor Manuel Bautista Santes

## Requerimientos 📄

- 70 registros
- Uso de procedimientos almacenados
- Consultas y diagramas
- Conexión con **Java**
- Realizar operaciones ***CRUD***

## Descripción del proyecto 🙌

| **Categoría** | **Detalles** |
| --- | --- |
| **Usuarios y Permisos** | - Administrador: Permisos para agregar, eliminar y modificar alumnos, profesores, materias y horarios.<br>- Profesores: Pueden ver los alumnos inscritos en sus materias y sus horarios, pero no pueden agregar o eliminar alumnos.<br>- Alumnos: Pueden ver y modificar sus horarios, y pueden eliminar materias, pero no pueden agregarlas. |
| **Autenticación** | Implementación de un sistema de inicio de sesión para gestionar usuarios. |
| **Tablas** | - Tabla de Alumnos: Para registrar información sobre los alumnos.<br>- Tabla de Profesores: Para registrar información sobre los profesores.<br>- Tabla de Materias: Con una restricción de disponibilidad de 20 cupos por materia.<br>- Tabla de Horarios: Para organizar los horarios de los alumnos y profesores. |
| **Gestión de Horarios** | - Funcionalidad para visualizar y modificar horarios por alumno.<br>- Visualización de los horarios de los profesores. |
| **Inscripción y Retiro de Materias** | - Los alumnos pueden inscribirse y retirarse de las materias, siempre y cuando haya cupos disponibles.<br>- Visualización de los alumnos inscritos por materia. |


[Java]: https://www.oracle.com/technetwork/java/javase/downloads/index.html
