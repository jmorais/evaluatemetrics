$(function() {

  $(".value-rating").change(function(){
    $(this).parents(".avaliacao-input").find(".stars").text($(this).val());
    $(this).parents(".panel-metrica").removeClass("panel-default").removeClass("panel-danger").addClass("panel-success").find(".stars-header").text(" (Sua avaliação: " + $(this).val() +")");
    $(this).parents(".avaliacao-input").find(".stars-error").text("");
  });

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
    $(".categoria[data-categoria='2']").show();

    window.location.href = "#categoria-1";
  });

  $("#next-step-2, #next-step-3, #next-step-4").click(function(){
    
    step = parseInt($(this).data("step"), 10);

    $(".stars-error").text("");
    has_error = false;
    $("[data-categoria='"+ step +"']").find('.value-rating').each(function(i, e){
      
      if ($(this).val() === '') {
        has_error = true;
        $(this).parent().siblings(".stars-error").text("Avalie essa métrica!");
        $(this).parents(".panel-metrica").removeClass("panel-default").addClass("panel-danger");
        met_id = $(this).data("metrica");

        $(".in").removeClass('in');
        $("#met-" + met_id).addClass('in');

        window.location.href = "#met-" + met_id;
        return false;
      }

    });

    if (!has_error) {
      if (step != 4) {
        $(".categoria[data-categoria='"+ (step) +"']").hide();
        $(".categoria[data-categoria='"+ (step+1) +"']").show();
        window.location.href = "#categoria-" + step;
      } else {
        $("#form-avaliacao").submit();
      }
    }

  });

});