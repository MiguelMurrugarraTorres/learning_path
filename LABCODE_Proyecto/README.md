# Configuración del entorno

Antes de comenzar, asegúrate de tener Node.js y MySQL instalados en tu máquina para poder ejecutar y almacenar datos en la aplicación.

## Creación de la estructura de archivos

1. Crea una carpeta de proyecto donde organices tus archivos.

2. Estructura de carpetas:

<pre>
  - proyecto/
  - public/
    - register.html
    - register.js
    - styles.css
  - server/`
    - server.js
  - package.json
  </pre>


## Comandos de npm utilizados

A continuación, se muestra una lista de los comandos de npm que se utilizaron y el orden en el que se instalaron las dependencias:

1. `npm init`: Se utilizó para inicializar el proyecto y crear el archivo package.json que registra la configuración del proyecto y las dependencias.

2. `npm install express`: Se utilizó para instalar el paquete Express.js, un marco de aplicación web de Node.js.

3. `npm install mysql`: Se utilizó para instalar el paquete mysql, que proporciona una interfaz para conectarse y trabajar con la base de datos MySQL.

4. `npm install body-parser`: Se utilizó para instalar el paquete body-parser, que permite analizar los datos enviados en el cuerpo de las solicitudes HTTP.

Estos comandos se ejecutan en el directorio raíz del proyecto utilizando la terminal.

## Para instalar Node.js en tu sistema, puedes seguir los siguientes pasos:

1. Visita el sitio web oficial de Node.js: https://nodejs.org/

2. En la página de inicio, verás dos opciones de descarga: LTS (Long-Term Support) y Current.

Si deseas la versión LTS, recomendada para la mayoría de los usuarios, haz clic en el botón de descarga correspondiente a tu sistema operativo.  
Si prefieres la versión Current, que contiene las últimas características y actualizaciones, selecciona la opción Current y luego haz clic en el botón de descarga para tu sistema operativo.  

3.Una vez que se complete la descarga, ejecuta el instalador y sigue las instrucciones del asistente de instalación.  

4. Después de la instalación, puedes verificar si Node.js se instaló correctamente abriendo una nueva ventana de terminal (o CMD en Windows) y 

ejecutando el siguiente comando:

<pre>
 node -v
  </pre>
  Esto mostrará la versión de Node.js instalada en tu sistema.  
5. Además de Node.js, también se instala automáticamente el administrador de paquetes npm (Node Package Manager).   Puedes verificar la versión de npm ejecutando el siguiente comando:

<pre>
npm -v
  </pre>
Esto mostrará la versión de npm instalada en tu sistema.  

## Implementación del registro de usuarios

En esta sección, se describe cómo se implementó el registro de usuarios en la aplicación:

1. Se creó un formulario HTML en `register.html` que permite a los usuarios registrarse proporcionando un nombre de usuario, correo electrónico y contraseña.

2. Utilizamos JavaScript en `register.js` para capturar los datos del formulario y enviarlos al servidor para su procesamiento.

3. Configuramos una ruta en el servidor (`/api/register`) que recibe los datos del formulario, verifica si el usuario ya existe en la base de datos y, si no existe, lo inserta en la tabla de usuarios.

4. Utilizamos MySQL como base de datos para almacenar los datos de los usuarios registrados.

## Comunicación entre Node.js y la base de datos

En esta sección, se describe cómo se establece la comunicación entre Node.js y la base de datos MySQL:

1. Utilizamos el módulo mysql de Node.js para establecer una conexión con la base de datos MySQL.

2. Ejecutamos consultas SQL para verificar la existencia de usuarios y para insertar nuevos usuarios en la tabla de usuarios.

## Configuración del servidor

En esta sección, se describe cómo se configura el servidor utilizando Express.js:

1. Utilizamos Express.js para crear un servidor web en Node.js.

2. Configuramos las rutas del servidor para que, al acceder a la ruta raíz (`/`), se muestre el formulario de registro (`register.html`).

## Tecnologías utilizadas en esta tarea

Las siguientes tecnologías se utilizaron para implementar esta funcionalidad:

- HTML: Lenguaje de marcado utilizado para crear la estructura y el contenido del formulario de registro.
- CSS: Lenguaje utilizado para dar estilo y diseño al formulario HTML.
- JavaScript: Lenguaje utilizado para capturar los datos del formulario, enviar solicitudes al servidor y mostrar mensajes de éxito o error.
- Node.js: Entorno de tiempo  

![image](https://github.com/MiguelMurrugarraTorres/learning_path/assets/20019777/2fde1cdc-978b-4528-90fa-55b9b03a5065)

