// Generated by CoffeeScript 1.4.0
(function(){$(function(){$(".toggle-cart-side-btn").on("click",function(e){var t,n;t=$(this).data("active-label");n=$(this).data("inactive-label");$("body").hasClass("active-side-cart")?$(this).find("span").text(t):$(this).find("span").text(n);$("body").removeClass("active-side-menu");$("body").toggleClass("active-side-cart");return $(".side-cart-i").height($(".main-content-w").height())});$(".toggle-menu-side-btn").on("click",function(e){$("body").removeClass("active-side-cart");$(".side-menu-i").height($(".main-content-w").height());return $("body").toggleClass("active-side-menu")});$(window).resize(function(){if($(window).width()<979){$(".side-menu-i").height($(".main-content-w").height());return $(".side-cart-i").height($(".main-content-w").height())}$(".side-menu-i").height("auto");return $(".side-cart-i").height("auto")});if($(window).width()<979){$(".side-menu-i").height($(".main-content-w").height());return $(".side-cart-i").height($(".main-content-w").height())}})}).call(this);