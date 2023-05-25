document.getElementById('registerForm').addEventListener('submit', registerUser);

function registerUser(event) {
  event.preventDefault();

  const username = document.getElementById('username').value;
  const email = document.getElementById('email').value;
  const password = document.getElementById('password').value;

  const data = {
    username: username,
    email: email,
    password: password
  };

  fetch('/api/register', {
    method: 'POST',
    headers: {
        'Content-Type': 'application/json'
    },
    body: JSON.stringify(data)
})
    .then(response => response.json())
    .then(result => {
      if (result.message === 'El nombre de usuario ya está registrado') {
        showMessage('El nombre de usuario ya está registrado', 'error');
      } else {
        showMessage('Registro exitoso. ¡Bienvenido!', 'success');
      }
      })
    .catch(error => {
        console.error('Error', error);
        showMessage('Ocurrió un error en el servidor. Inténtalo de nuevo más tarde.');
    });
}

function showMessage(message, type) {
  const messageDiv = document.getElementById('message');
  messageDiv.textContent = message;

  // Remover todas las clases de color previas
  messageDiv.classList.remove('error', 'success');

  // Aplicar la clase correspondiente según el tipo de mensaje
  if (type === 'error') {
    messageDiv.classList.add('error');
  } else if (type === 'success') {
    messageDiv.classList.add('success');
  }
}
