jQuery(document).ready(function() {
  if (jQuery('#itemTabs')) {
    jQuery(document).on('keyup', '#needs-validation', function(){
      updateErrorBadges();
    });
  }
});

function updateErrorBadges() {
  jQuery('#itemTabs li').each(function() {
    var tabName = jQuery(this).data('link');
    var countError = jQuery(':invalid', '#' + tabName).length;
    console.log(countError)
    var $badge = jQuery('.badge-danger', this);
    $badge.html(countError);
    if (countError === 0) {
      $badge.addClass('empty');
    } else {
      $badge.removeClass('empty');
    }
  });
}