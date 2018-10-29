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
});
