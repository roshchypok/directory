jQuery(document).ready(function() {
  var $alert = jQuery('div.alert');
  if ($alert) {
    setTimeout(function(){
      $alert.alert('close');
    }, 5000);
  }
});