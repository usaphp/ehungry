$ ->
  # Toggle side cart with click of a button
  $(".toggle-cart-side-btn").on "click", (event) ->
    active_label = $(this).data("active-label")
    inactive_label = $(this).data("inactive-label")
    if $("body").hasClass("active-side-cart")
      $(this).find("span").text(active_label)
    else
      $(this).find("span").text(inactive_label)
    $("body").removeClass("active-side-menu")
    $("body").toggleClass("active-side-cart")
    $(".side-cart-i").height($(".main-content-w").height())
  # Toggle side menu with click of a button
  $(".toggle-menu-side-btn").on "click", (event) ->
    $("body").removeClass("active-side-cart")
    $(".side-menu-i").height($(".main-content-w").height())
    $("body").toggleClass("active-side-menu")
  $(window).resize ->
    # Tablets/Phones: make side panels to be the same height as the middle element
    if $(window).width() < 979
      $(".side-menu-i").height($(".main-content-w").height())
      $(".side-cart-i").height($(".main-content-w").height())
    else
      # for desktop - make them auto height
      $(".side-menu-i").height("auto")
      $(".side-cart-i").height("auto")
  if $(window).width() < 979
      $(".side-menu-i").height($(".main-content-w").height())
      $(".side-cart-i").height($(".main-content-w").height())