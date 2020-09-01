const skillBar = () => {
  $(".bar").each(function(){
    $(this).find(".bar-inner").animate({
      width: $(this).attr("data-width")
    },2000)
  });
};

export { skillBar };
