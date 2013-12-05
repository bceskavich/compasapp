/**
 * Created with JetBrains RubyMine.
 * User: lindagorman
 * Date: 12/2/13
 * Time: 11:05 PM
 * To change this template use File | Settings | File Templates.
 */

$(function(){
    var navHeight = 60;
    var contentHeight = $("body").height();
    var windowHeight = $(window).height();
    var footerHeight = 40;
    if((navHeight+contentHeight-footerHeight) <= windowHeight){
        $("footer").addClass("stickybar");
    }else{
        $("footer").removeClass("stickybar");
    }
});
