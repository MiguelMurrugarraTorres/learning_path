Configuración del entorno:


Instalamos Node.js y MySQL para poder ejecutar y almacenar datos en nuestra aplicación.
Creamos una carpeta de proyecto donde organizamos nuestros archivos.
Creación de la estructura de archivos:

Creamos una estructura de carpetas con una carpeta public para los archivos HTML, JavaScript y CSS, y una carpeta server para los archivos de servidor.

<pre>
  - proyecto/
  - public/
    - register.html
    - register.js
    - styles.css
  - server/
    - server.js
  - package.json
</pre>
  
  </pre>

Implementación del registro de usuarios:

Creamos un formulario HTML en register.html que permite a los usuarios registrarse proporcionando un nombre de usuario, correo electrónico y contraseña.
Utilizamos JavaScript en register.js para capturar los datos del formulario y enviarlos al servidor para su procesamiento.
Configuramos una ruta en el servidor (/api/register) que recibe los datos del formulario, verifica si el usuario ya existe en la base de datos y, si no existe, lo inserta en la tabla de usuarios.
Utilizamos MySQL como base de datos para almacenar los datos de los usuarios registrados.
Comunicación entre Node.js y la base de datos:

Utilizamos el módulo mysql de Node.js para establecer una conexión con la base de datos MySQL.
Ejecutamos consultas SQL para verificar la existencia de usuarios y para insertar nuevos usuarios en la tabla de usuarios.
Configuración del servidor:

Utilizamos Express.js para crear un servidor web en Node.js.
Configuramos las rutas del servidor para que al acceder a la ruta raíz (/), se muestre el formulario de registro (register.html).
![image](https://github.com/MiguelMurrugarraTorres/learning_path/assets/20019777/b015182d-e986-4f60-b2ee-7faf7eba8d78)


Tecnologías utilizadas en esta tarea:

HTML: Lenguaje de marcado utilizado para crear la estructura y el contenido del formulario de registro.  
CSS: Lenguaje utilizado para dar estilo y diseño al formulario HTML.  
JavaScript: Lenguaje utilizado para capturar los datos del formulario, enviar solicitudes al servidor y mostrar mensajes de éxito o error.  
Node.js: Entorno de tiempo de ejecución de JavaScript utilizado para ejecutar el servidor y comunicarse con la base de datos.  
MySQL: Sistema de gestión de bases de datos relacional utilizado para almacenar los datos de los usuarios registrados.  
Express.js: Marco de aplicación web de Node.js utilizado para crear y configurar el servidor web.  
En resumen, hemos creado una aplicación web simple que permite a los usuarios registrarse a través de un formulario HTML. Los datos del formulario se envían al servidor Node.js, que los valida y los inserta en la base de datos MySQL. Hemos utilizado HTML, CSS, JavaScript, Node.js, MySQL y Express.js para implementar esta funcionalidad.  
