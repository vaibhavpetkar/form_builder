document.addEventListener("DOMContentLoaded", function() {
    // Initialize drag-and-drop functionality
    const formContainer = document.getElementById('form-preview');
    const toolContainer = document.getElementById('tool-container');

    if (formContainer && toolContainer) {
        // Make elements draggable
        toolContainer.querySelectorAll('.draggable').forEach(el => {
            el.addEventListener('dragstart', handleDragStart);
        });

        formContainer.addEventListener('dragover', handleDragOver);
        formContainer.addEventListener('drop', handleDrop);

        function handleDragStart(event) {
            event.dataTransfer.setData('text/plain', event.target.id);
        }

        function handleDragOver(event) {
            event.preventDefault(); // Necessary to allow dropping
        }

        function handleDrop(event) {
            event.preventDefault();
            const id = event.dataTransfer.getData('text/plain');
            const draggableElement = document.getElementById(id);
            const clone = draggableElement.cloneNode(true);
            clone.classList.remove('draggable');
            clone.classList.add('dropped');
            formContainer.appendChild(clone);
        }
    }

    // Handle form submission with JavaScript (optional)
    const form = document.getElementById('form-builder');
    if (form) {
        form.addEventListener('submit', function(event) {
            // Perform form validation or AJAX submission here
            // For example, prevent default form submission
            event.preventDefault();
            console.log('Form submitted!');
        });
    }
});
