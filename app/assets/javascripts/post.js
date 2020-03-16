var callback = function(){

  $('form').submit(function(event){

    var newMessage = window.updateForm.getElementsByClassName("form-control") [0].value;

    $.ajax({
      type : 'POST',
      url : 'post_updates',
      data : "{newMessage: 'newMessage', postID: 'postID'}",
      dataType : 'json',
      encode :true
    });

    event.preventDefault();

  });

  function openForm(id) {
    <!-- used global variable -->
    postID = parseInt(id)
    document.getElementById("updateForm").style.display = "block";
  };

  function closeForm() {
    document.getElementById("updateForm").style.display = "none";

  };
  window.openForm = openForm
  window.closeForm = closeForm
};

if (
  document.readyState === "complete" ||
  (document.readyState !== "loading" && !document.documentElement.doScroll)
) {
callback();
} else {
document.addEventListener("DOMContentLoaded", callback);
}
