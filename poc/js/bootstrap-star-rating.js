!function(a){a.fn.rating=function(){function b(b,c,d,e){var f=a(b).find("[data-value="+c+"]");f.removeClass(e).addClass(d),f.prevAll("[data-value]").removeClass(e).addClass(d),f.nextAll("[data-value]").removeClass(d).addClass(e)}function c(b,c,d){var e=a(b);e.find("[data-value]").removeClass(c).addClass(d)}function d(a,b){a.val(b).trigger("change"),b===a.data("empty-value")?a.siblings(".rating-clear").hide():a.siblings(".rating-clear").show()}var e;for(e=this.length-1;e>=0;e--){var f,g,h=a(this[e]),i=h.data("max")||5,j=h.data("min")||0,k=h.val()||0,l=h.data("icon-lib")||"glyphicon";for(active=h.data("active-icon")||"glyphicon-star",inactive=h.data("inactive-icon")||"glyphicon-star-empty",clearable=h.data("clearable")||null,clearable_i=h.data("clearable-icon")||"glyphicon-remove",stars="",g=j;i>=g;g++)stars+=k>=g?['<i class="',l," ",active,'" data-value="',g,'"></i>'].join(""):['<i class="',l," ",inactive,'" data-value="',g,'"></i>'].join("");clearable&&(stars+=[' <a class="rating-clear" style="display:none;" href="javascript:void">','<span class="',l," ",clearable_i,'"></span> ',clearable,"</a>"].join(""));var m=h.clone(!0).addClass("hidden").data("max",i).data("min",j).data("icon-lib",l).data("active-icon",active).data("inactive-icon",inactive);f=['<div class="rating-input">',stars,"</div>"].join(""),h.parents(".rating-input").length<=0&&h.replaceWith(a(f).append(m))}a(".rating-input").on("mouseenter","[data-value]",function(){var c=a(this);input=c.siblings("input"),b(c.closest(".rating-input"),c.data("value"),input.data("active-icon"),input.data("inactive-icon"))}).on("mouseleave","[data-value]",function(){var d=a(this),e=d.siblings("input"),f=e.val(),g=e.data("min"),h=e.data("max"),i=e.data("active-icon"),j=e.data("inactive-icon");f>=g&&h>=f?b(d.closest(".rating-input"),f,i,j):c(d.closest(".rating-input"),i,j)}).on("click","[data-value]",function(b){var c=a(this),e=c.data("value"),f=c.siblings("input");return d(f,e),b.preventDefault(),!1}).on("click",".rating-clear",function(b){var e=a(this),f=e.siblings("input"),g=f.data("active-icon"),h=f.data("inactive-icon");return d(f,f.data("empty-value")),c(e.closest(".rating-input"),g,h),b.preventDefault(),!1}).each(function(){var d=a(this).find("input"),e=d.val(),f=d.data("min"),g=d.data("max");""!==e&&+e>=f&&g>=+e?(b(this,e),a(this).find(".rating-clear").show()):(d.val(d.data("empty-value")),c(this))})},a(function(){a("input.rating[type=number]").length>0&&a("input.rating[type=number]").rating()})}(jQuery);