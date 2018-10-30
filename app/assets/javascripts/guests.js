function inputsAreValid() {
  var isValid = true;
  $('input').filter('[required]').each(function() {
    if ($(this).val() === '') {
      isValid = false;
    }
  });
  return isValid;
};

$(document).ready(function(){
  $('#check_all').on("click", function() {
    var checkboxes = $('input[class="guest-checkbox"]');
    checkboxes.prop("checked", !checkboxes.prop("checked"));

    // TODO: fix the delete button toggling
    var deleteButton = $('#delete-button');
    deleteButton.toggleClass("hidden");
  });

  $(".checkmark").click(function() {
    var deleteButton = $('#delete-button');
    deleteButton.toggleClass("hidden");
  });

  // Disable and enable Add Guest button
  $(".input").keyup(function() {
    var addButton = $('.add-guest');
    addButton.toggleClass("disabled", !inputsAreValid());
  });
});
