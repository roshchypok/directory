jQuery(document).ready(function() {
  jQuery(document).on('click', '.confirm-need', function() {
    var $dlg = jQuery('#confirmationModal');
    jQuery('.message', $dlg).html(jQuery(this).data('confirm'));
    jQuery('#btn-yes', $dlg).data('link', jQuery(this).attr('href'));
    $dlg.modal('show');
    return false;
  });

  jQuery(document).on('click', '#confirmationModal #btn-yes', function(){
    window.location.href = jQuery(this).data('link');
  });
});