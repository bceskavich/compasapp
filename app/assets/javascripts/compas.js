/**
 * Created with JetBrains RubyMine.
 * User: lindagorman
 * Date: 12/2/13
 * Time: 11:05 PM
 * To change this template use File | Settings | File Templates.
 */

$(function(){

    dimensions();

    window.onresize = dimensions;

    $('a').smoothScroll();

    function dimensions(){
        var navHeight = 60;
        var contentHeight = $("body").height();
        var windowHeight = $(window).height();
        var footerHeight = 40;
        if((navHeight+contentHeight-footerHeight) <= windowHeight){
            $("footer").addClass("stickybar");
        }else{
            $("footer").removeClass("stickybar");
        }
        var centerLogin = ((windowHeight - navHeight - footerHeight)/3)-50;
        $('#login_box').css('margin-top', centerLogin);
    }

    $('#to_form').click(function(){
        $('#event_form .panels').css('display','block');
        $('#field:first-child').animate({opacity:1,right:'+=50'},1000);
    });

    $('.panels a').click(function(){
        console.log('clicked!');
        var field = $(this).closest('#field');
        $(this).css('display','none') ;
        $(field).css({
            'opacity': '.6',
            'border':'none',
            'box-shadow':'none',
            'background-color':'#fff',
            'padding-bottom':'5px',
            'padding-top': '5px'
        });
        var selected = field.next();
        $(selected).animate({opacity:1,right:'+=50'},1000);
    });
});
