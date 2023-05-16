const express = require('express');
const mysql = require('mysql');

const app = express();

// Configuración de la conexión a la base de datos
var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '123456',
  database: 'bd_history_users'
});

// Agregar el controlador de autenticación
connection.config.authSwitchHandler = function (data, callback) {
  if (data.pluginName === 'mysql_native_password') {
    callback(null, mysql_native_password);
  }
};

// Establecer la conexión con la base de datos
connection.connect(function (err) {
  if (err) {
    console.error('Error al conectar a la base de datos: ' + err.stack);
    return;
  }
  console.log('Conexión exitosa a la base de datos con el ID  ' + connection.threadId);
});

// Rutas y lógica de la aplicación
app.get('/', function (req, res) {
  res.send('¡Hola, mundo!');
});

// Iniciar el servidor
app.listen(3000, function () {
  console.log('Servidor escuchando en el puerto 3000');
});
