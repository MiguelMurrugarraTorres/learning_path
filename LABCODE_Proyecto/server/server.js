const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const mysql = require('mysql');

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Configuración de la conexión a la base de datos MySQL
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '123456',
  database: 'bd_history_users'
});

// Conexión a la base de datos
db.connect((err) => {
  if (err) {
    console.error('Error al conectar a la base de datos: ' + err.stack);
    return;
  }
  console.log('Conexión exitosa a la base de datos MySQL');
});

// Ruta para el registro de usuarios
app.post('/api/register', (req, res) => {
  const { username, email, password } = req.body;

  // Verificar si el usuario ya existe en la base de datos
  const checkUserQuery = `SELECT * FROM usuarios WHERE username = ?`;
  db.query(checkUserQuery, [username], (err, results) => {
    if (err) {
      console.error('Error al verificar el usuario: ' + err.stack);
      return res.status(500).json({ success: false, message: 'Error interno del servidor' });
    }

    if (results.length > 0) {
      return res.status(409).json({ success: false, message: 'El nombre de usuario ya está registrado' });
    }

    // Insertar nuevo usuario en la base de datos
    const insertUserQuery = `INSERT INTO usuarios (username, email, password) VALUES (?, ?, ?)`;
    db.query(insertUserQuery, [username, email, password], (err, results) => {
      if (err) {
        console.error('Error al insertar el usuario: ' + err.stack);
        return res.status(500).json({ success: false, message: 'Error interno del servidor' });
      }

      return res.status(201).json({ success: true, message: 'Usuario registrado exitosamente' });
    });
  });
});

const path = require('path');

// ...

app.use(express.static(path.join(__dirname, '../public')));

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, '../public/register.html'));
});


// Iniciar el servidor en el puerto 3000
app.listen(3000, () => {
  console.log('Servidor iniciado en el puerto 3000');
});
