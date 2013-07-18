$(document).ready(function () {
    jQuery('.star').each(function () {
        jQuery(this).raty({
            path:'/website/images',
            readOnly:jQuery(this).attr('data-readonly') == "true", //)jQuery(this).attr('data-readonly') == "true",
            click:function (score) {
                jQuery('#rating').val(score);
            },
            score:function () {
                return jQuery(this).attr('data-rating');
            }
        });
    });
});