// Get the modal
$(document).ready(function(){
  // When the user clicks on the button, open the modal
  $('#myBtn').on("click", function() {
    console.log("clicked");
    $("#myModal").css("display", "block");
  });

  // When the user clicks on <span> (x), close the modal
  $('.close').on("click", function() {
    $("#myModal").css("display", "none");
  });

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target === document.getElementById('myModal')) {
      $("#myModal").css("display", "none");
    }
  };
});
