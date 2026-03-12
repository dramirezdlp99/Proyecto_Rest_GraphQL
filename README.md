# Entertainment Discovery Hub 🚀

**Entertainment Discovery Hub** es una aplicación móvil desarrollada en Flutter que demuestra la integración de dos tecnologías fundamentales en la comunicación con servidores modernos: **REST API** y **GraphQL**.

El proyecto sigue una arquitectura organizada y utiliza **GetX** para la gestión de estado eficiente, separando la lógica de negocio de la interfaz de usuario para garantizar un código escalable y mantenible.

## 📋 Características principales
* **Sección REST:** Consulta y visualización de series y películas de acción utilizando la API de TVMaze.
* **Sección GraphQL:** Consulta de personajes mediante un lenguaje de consulta (Query) optimizado utilizando la API de Rick & Morty.
* **Arquitectura:** Organización profesional por capas (Models, Services, Controllers, Screens, Config).
* **Gestión de Estado:** Implementación de controladores reactivos con `GetX` y navegación simplificada.

## 🛠️ Tecnologías utilizadas
* **Flutter & Dart:** Framework y lenguaje base para el desarrollo multiplataforma.
* **http:** Paquete utilizado para realizar peticiones asíncronas a la API REST.
* **graphql_flutter:** Cliente avanzado para la integración y manejo de esquemas GraphQL.
* **get:** Utilizado para la gestión de estado (GetxController) y navegación sin contexto.
* **connectivity_plus:** Implementado para la verificación del estado de red del dispositivo.



## 🏗️ Estructura del Proyecto
* `lib/config`: Configuración del cliente GraphQL y parámetros de conexión.
* `lib/controllers`: Manejo de la lógica de negocio y estados reactivos (GetX).
* `lib/models`: Definición de clases para el mapeo de datos JSON y respuestas de GraphQL.
* `lib/services`: Lógica de comunicación directa con servicios HTTP externos.
* `lib/screens`: Interfaces gráficas para la visualización de datos de REST y GraphQL.
* `lib/widgets`: Carpeta preparada para la creación de componentes de interfaz reutilizables.



## 🚀 Funcionamiento Técnico
1. **Flujo REST:** La aplicación realiza una petición asíncrona (GET) a TVMaze. El servicio procesa el JSON recibido, lo convierte en objetos del modelo `Movie` y los renderiza en una lista dinámica.
2. **Flujo GraphQL:** Se establece una conexión mediante un cliente configurado. A través del controlador, se envía una `Query` específica que solicita únicamente los campos requeridos (`name`, `image`, `species`), demostrando la eficiencia en el consumo de ancho de banda frente a REST.

---

**Desarrollado por:** David Fernando Ramírez de la Parra  
**Materia:** Electiva III  
**Institución:** Universidad Cooperativa de Colombia  
**Semestre:** Sexto Semestre - 2026

---