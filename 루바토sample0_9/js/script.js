$(".main-menu>li").mouseover(
    function(){
        $(this).children(".sub").stop().slideDown();
    }
);
$(".main-menu>li").mouseleave(
    function(){
        $(this).children(".sub").stop().slideUp();
    }
);

start();
var imgs=5;
var now = 0;

function start(){
    $(".imgs>img").eq(0).siblings().css({"margin-left":"-2000px"});
    setInterval( 
        function(){slide();}
        ,2000);
}

function slide(){
    now = now == imgs? 0:now+=1;
    $(".imgs>img").eq(now-1).css({"margin-left":"2000px"});
    $(".imgs>img").eq(now).css({"margin-left":"0"});
}