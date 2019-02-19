// Get the modal
$(document).ready(function(){
  // When the user clicks on the button, open the modal
  $('#login').on("click", function() {
    $("#login-modal").css("display", "block");
  });

  $('#make-a-bot').on("click", function() {
    $("#create-account-modal").css("display", "block");
  });

  $('.new-message').on("click", function() {
    $("#new-message-modal").css("display", "block");
  });

  // When the user clicks on <span> (x), close the modal
  $('.close').on("click", function() {
    $(".modal").css("display", "none");
  });

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target === document.getElementsByClassName('modal')[0]) {
      $(".modal").css("display", "none");
    }
  };
});
