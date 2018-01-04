(function() {
  'use strict';

  window.addEventListener('load', function() {
    var form = document.getElementById('needs-validation');
    if (form) {
      console.log('---form---')
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
        if (updateErrorBadges) {
          updateErrorBadges();
        }
      }, false);
    }
  }, false);
})();