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
  # Toggle side menu with click of a button
  $(".toggle-menu-side-btn").on "click", (event) ->
    $("body").removeClass("active-side-cart")
    $("body").toggleClass("active-side-menu")