$('.navi>li').mouseover(
    function(){
        // $('.submenu').stop().slideDown(500)
        $(this).children('.submenu').stop().slideDown(500);
    }
);

$('.navi>li').mouseout(
    function(){
        // $('.submenu').stop().slideUp(500)
       $(this).children('.submenu').stop().slideUp(500);
    }
);

setInterval(
    function(){
        $('.slidelist').delay(2000);
        $('.slidelist').animate({marginLeft:0});
        $('.slidelist').delay(2000);
        $('.slidelist').animate({marginLeft:-2400});
        $('.slidelist').delay(2000);
        $('.slidelist').animate({marginLeft:-1200});
        $('.slidelist').delay(2000);
    }
);