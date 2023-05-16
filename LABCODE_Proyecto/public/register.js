import axios from 'axios';

document.getElementById('registerForm').addEventListener('submit', function(event) {
  event.preventDefault();

  var username = document.getElementById('username').value;
  var email = document.getElementById('email').value;
  var password = document.getElementById('password').value;

  if (!username || !email || !password) {
    alert('Por favor, completa todos los campos');
    return;
  }

  var formData = {
    username: username,
    email: email,
    password: password
  };

  axios.post('/register', formData)
    .then(function(response) {
      alert('Registro exitoso');
      window.location.href = '/dashboard';
    })
    .catch(function(error) {
      console.error(error);
      alert('Ocurrió un error durante el registro');
    });
});
