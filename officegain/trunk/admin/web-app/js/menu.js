$(document).ready(function () {
    $('ul.myMenu li').bind('mouseover', function () {
        $(this).find('ul').css('visibility', 'visible');
    });
    $('ul.myMenu li').bind('mouseout', function () {
        $(this).find('ul').css('visibility', 'hidden');
    });
});