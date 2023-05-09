$(".main-menu > li").mouseover(function(){
    $(this).children(".sub").stop().slideDown();
    // $(".sub").stop().slideDown();
});
$(".main-menu > li").mouseleave(function(){
    $(this).children(".sub").stop().slideUp();
    // $(".sub").stop().slideUp();
});
start();
var images = 5;
var now = 0;
function start(){
    $(".images>img").eq(0).siblings().css({"margin-left":"-2000px"});
    setInterval(function(){slide();},2000);
}
function slide(){
    now = now == images?0:now+=1;
    $(".images>img").eq(now-1).css({"margin-left":"-2000px"});
    $(".images>img").eq(now).css({"margin-left":"0px"});
}