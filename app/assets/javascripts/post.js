$(document).ready(function(){

  $('form').submit(function(event){

    var newMessage = window.updateForm.getElementsByClassName("form-control") [0].value;

    $.ajax({
      type : 'POST',
      url : 'post_update',
      data : 'newMessage', 'postID'
      dataType : 'json',
      encode :true
    });

    .done(function(data){
      console.log('hello');
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

});
