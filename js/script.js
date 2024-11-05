// Get all buttons with the specified class
const buttons = document.querySelectorAll('.nav-link');

// Add a click event listener to each button
buttons.forEach(button => {
  button.addEventListener('click', () => {
    // Deactivate all buttons
    buttons.forEach(btn => btn.classList.remove('active'));

    // Activate the clicked button
    button.classList.add('active');
  });
});

