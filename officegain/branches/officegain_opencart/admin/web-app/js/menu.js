$(document).ready(function () {
    $('#menu > ul').superfish({
        hoverClass:'sfHover',
        pathClass:'overideThisToUse',
        delay:0,
        animation:{height:'show'},
        speed:'normal',
        autoArrows:false,
        dropShadows:false,
        disableHI:false, /* set to true to disable hoverIntent detection */
        onInit:function () {
        },
        onBeforeShow:function () {
        },
        onShow:function () {
        },
        onHide:function () {
        }
    });
    $('#menu > ul').css('display', 'block');

    route = window.location.pathname;
    part = route.split('/');
    url = part[1];
    if (part[2]) {
        url += '/' + part[2];
    }
    $('a[href*=\'' + url + '\']').parents('li[id]').addClass('selected');
});
