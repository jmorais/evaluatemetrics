$(function() {

  $(".rating").change(function(){
    console.log($(this).siblings(".stars").length)
    $(this).parents(".panel-footer").children(".stars").text($(this).val());
  })

  $("#next-step-1").click(function(){
    $(".has-error").removeClass("has-error");
    if (!($("#nome")[0].checkValidity() && $("#email")[0].checkValidity())) {
      
      if(!$("#nome")[0].checkValidity()) {
        $("#nome").focus();
        $("#nome").parent().addClass("has-error");

      } else {
        $("#email").focus();
        $("#email").parent().addClass("has-error");
      }

      return;
    }

    $(".caracterizacao").hide();
    $(".avaliacao").show();
    window.location.href = "#avaliacao";
  });

});