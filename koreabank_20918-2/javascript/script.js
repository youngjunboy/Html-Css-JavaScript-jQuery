$('.navi>li').mouseover(
    function () {
        // $('.submenu').stop().slideDown(500);
        $(this).children('.submenu').stop().slideDown(500);
    }
);

$('.navi>li').mouseout(
    function () {
        // $('.submenu').stop().slideUp(500);
        $(this).children('.submenu').stop().slideUp(500);

    }
);

setInterval(
    function () {
        // 왼쪽에서 오른쪽        
        // $('.slidelist').delay(1000);
        // $('.slidelist').animate({ marginLeft: 0 });
        // $('.slidelist').delay(1000);
        // $('.slidelist').animate({ marginLeft: -2400 });
        // $('.slidelist').delay(1000);
        // $('.slidelist').animate({ marginLeft: -1200 });
        // $('.slidelist').delay(1000);

        // 오른쪽에서 왼쪽으로        
        $('.slidelist').delay(1000);
        $('.slidelist').animate({ marginLeft: 0 });
        $('.slidelist').delay(1000);
        $('.slidelist').animate({ marginLeft: -1200 });
        $('.slidelist').delay(1000);
        $('.slidelist').animate({ marginLeft: -2400 });
        $('.slidelist').delay(1000);

    }
);

$('.tabmenu>li>a').click(
    function(){
        $(this).parent().addClass("active").siblings().removeClass("active");
    }
);