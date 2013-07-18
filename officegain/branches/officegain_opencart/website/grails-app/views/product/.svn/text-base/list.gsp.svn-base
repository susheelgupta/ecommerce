<%--
  Created by IntelliJ IDEA.
  User: Susheel
  Date: 1/3/13
  Time: 3:13 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="com.officegain.enigma.base.Attribute; com.officegain.enigma.base.ProductAttribute; com.officegain.enigma.base.AttributeDescription; com.officegain.enigma.base.AttributeGroupDescription" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>${productDetail.name}</title>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.cookie.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.colorbox.js')}"></script>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'colorbox.css')}" media="screen"/>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'tabs.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'common.js')}"></script>

    <meta name="layout" content="main"/>
</head>

<body>
<div id="column-left">
    <div class="box">
        <div class="box-heading">Categories</div>

        <div class="box-content">
            <div class="box-category">
                <ul>
                    <g:each in="${categorynameList}" status="i" var="categoryInstance">
                        <li>
                            <a href="${request.contextPath}/category/list/${categoryInstance.categoryId}">${fieldValue(bean: categoryInstance, field: "name").decodeHTML()}</a>
                        </li>
                    </g:each>
                </ul>
            </div>
        </div>
    </div>
</div>

<div id="content"><div class="breadcrumb">
    <a href="#">Home</a>
    » <a href="#">Desktops</a>
    » <a href="#">${productDetail.name}</a>
</div>

<h1>${productDetail.name}</h1>

<div class="product-info">

    <div class="left">
        <div class="image"><a rel="colorbox" class="colorbox cboxElement" title="Canon EOS 5D"
                              href="http://localhost/opencart_v1.5.4.1/upload/image/cache/data/demo/canon_eos_5d_1-500x500.jpg"><img
                    id="image" alt="Canon EOS 5D" title="Canon EOS 5D"
                    src="http://localhost/opencart_v1.5.4.1/upload/image/cache/data/demo/canon_eos_5d_1-228x228.jpg">
        </a></div>

        <div class="image-additional">
            <a rel="colorbox" class="colorbox cboxElement" title="Canon EOS 5D"
               href="http://localhost/opencart_v1.5.4.1/upload/image/cache/data/demo/canon_eos_5d_2-500x500.jpg"><img
                    alt="Canon EOS 5D" title="Canon EOS 5D"
                    src="http://localhost/opencart_v1.5.4.1/upload/image/cache/data/demo/canon_eos_5d_2-74x74.jpg">
            </a>
            <a rel="colorbox" class="colorbox cboxElement" title="Canon EOS 5D"
               href="http://localhost/opencart_v1.5.4.1/upload/image/cache/data/demo/canon_eos_5d_3-500x500.jpg"><img
                    alt="Canon EOS 5D" title="Canon EOS 5D"
                    src="http://localhost/opencart_v1.5.4.1/upload/image/cache/data/demo/canon_eos_5d_3-74x74.jpg">
            </a>
        </div>
    </div>

    <div class="right">
        <div class="description">
            <span>Brand:</span> <a
                href="#">${productDetail.brand}</a><br>
            <span>Product Code:</span>${productDetail.model}<br>
            <span>Reward Points:</span> 200<br>
            <span>Availability:</span>${productDetail.status}</div>

        <div class="price">Price: <span class="price-old">${productDetail.price}</span> <span
                class="price-new">${productDetail.price}</span>
            <br>
            <span class="price-tax">${productDetail.price}</span><br>
        </div>

        <div class="options">
            <h2>Available Options</h2>
            <br>

            <div class="option" id="option-226">
                <span class="required">*</span>
                <b>Select:</b><br>
                <select name="option[226]">
                    <option value="">--- Please Select ---</option>
                    <option value="15">Red</option>
                    <option value="16">Blue</option>
                </select>
            </div>
            <br>
        </div>

        <div class="cart">
            <div>Qty:          <input type="text" value="1" size="2" name="quantity">
                <input type="hidden" value="30" size="2" name="product_id">
                &nbsp;
                <input type="button" class="button" id="button-cart" value="Add to Cart">
            </div>

            <div><span>&nbsp;&nbsp;&nbsp;- OR -&nbsp;&nbsp;&nbsp;</span></div>

            <div><a onclick="addToWishList('30');">Add to Wish List</a><br>
                <a onclick="addToCompare('30');">Add to Compare</a></div>
        </div>

        <div class="review">
            <div>
                <img alt="0 reviews" src="${resource(dir: 'css/image', file: '')}">&nbsp;&nbsp;<a
                    onclick="$('a[href=\'#tab-review\']').trigger('click');">0 reviews</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
                    onclick="$('a[href=\'#tab-review\']').trigger('click');">Write a review</a>
            </div>

            <div class="share"><!-- AddThis Button BEGIN -->
                <div class="addthis_default_style"><a class="addthis_button_compact at300m" href="#"><span
                        class="at16nc at300bs at15nc at15t_compact at16t_compact"><span
                            class="at_a11y">More Sharing Services</span></span>Share</a> <a
                        class="addthis_button_email at300b" title="Email" href="#"><span
                            class="at16nc at300bs at15nc at15t_email at16t_email"><span
                                class="at_a11y">Share on email</span></span></a><a
                        class="addthis_button_print at300b" title="Print" href="#"><span
                            class="at16nc at300bs at15nc at15t_print at16t_print"><span
                                class="at_a11y">Share on print</span></span></a> <a
                        class="addthis_button_facebook at300b" title="Facebook" href="#"><span
                            class="at16nc at300bs at15nc at15t_facebook at16t_facebook"><span
                                class="at_a11y">Share on facebook</span></span></a> <a
                        class="addthis_button_twitter at300b" title="Tweet" href="#"><span
                            class="at16nc at300bs at15nc at15t_twitter at16t_twitter"><span
                                class="at_a11y">Share on twitter</span></span></a></div>
                <script src="//s7.addthis.com/js/250/addthis_widget.js" type="text/javascript"></script>
                <!-- AddThis Button END -->
            </div>
        </div>
    </div>
</div>

<div id="tabs" class="htabs"><a href="#tab-description">Description</a>
    <g:if test="${productAttributeMap.size()!=0}"><a href="#tab-attribute">Specification</a>
    </g:if>

    <a href="#tab-review">Reviews</a>
    <g:if test="${productDetail.relatedProducts.size()!=0}">
        <a href="#tab-related">Related Products(${productDetail.relatedProducts.size()})</a>;
    </g:if>
</div>

<div class="tab-content" id="tab-description" style="display: block;"><p>
    ${productDetail.description.decodeHTML()}</p>
</div>
<g:if test="${productAttributeMap.size()!=0}">
    <div id="tab-attribute" class="tab-content">
        <table class="attribute">
            <g:each in="${productAttributeMap}" var="productAttributeMapEntry">
                <thead>
                <tr>
                    <td colspan="2">${AttributeGroupDescription.findByAttributeGroupId(productAttributeMapEntry.getKey().id).name}</td>
                </tr>
                </thead>
                <tbody>
                <g:each in="${productAttributeMapEntry.getValue()}" var="productAttribute">
                    <tr>
                        <td>${AttributeDescription.findByAttributeId(productAttribute.attributeId).name}</td>
                        <td>${productAttribute.text}</td>
                    </tr>
                </g:each>
                </tbody>
            </g:each>
        </table>
    </div>
</g:if>
<div id="tab-review" class="tab-content">
    <div id="review"></div>

    <h2 id="review-title">Write a review</h2>
    <b>Your Name:</b><br/>
    <input type="text" name="name" value=""/>
    <br/>
    <br/>
    <b>Your Review:</b>
    <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
    <span style="font-size: 11px;"><span style="color: #FF0000;">Note:</span> HTML is not translated!</span><br/>
    <br/>
    <b>Rating:</b> <span>Bad</span>&nbsp;
    <input type="radio" name="rating" value="1"/>
    &nbsp;
    <input type="radio" name="rating" value="2"/>
    &nbsp;
    <input type="radio" name="rating" value="3"/>
    &nbsp;
    <input type="radio" name="rating" value="4"/>
    &nbsp;
    <input type="radio" name="rating" value="5"/>
    &nbsp;<span>Good</span><br/>
    <br/>
    <b>Enter the code in the box below:</b><br/>
    <input type="text" name="captcha" value=""/>
    <br/>
    <img src="index.php?route=product/product/captcha" alt="" id="captcha"/><br/>
    <br/>

    <div class="buttons">
        <div class="right"><a id="button-review" class="button">Continue</a></div>
    </div>
</div>
<g:if test="${productDetail.relatedProducts.size()!=0}">
    <div id="tab-related" class="tab-content">
        <div class="box-product">
            <div>
                <div class="image"><a
                        href="http://localhost/opencart_v1.5.4.1/upload/index.php?route=product/product&amp;product_id=40"><img
                            src="http://localhost/opencart_v1.5.4.1/upload/image/cache/data/demo/iphone_1-80x80.jpg"
                            alt="iPhone"/></a></div>

                <div class="name"><a
                        href="http://localhost/opencart_v1.5.4.1/upload/index.php?route=product/product&amp;product_id=40">iPhone</a>
                </div>

                <div class="price">
                    $120.68</div>
                <a onclick="addToCart('40');" class="button">Add to Cart</a></div>

            <div>
                <div class="image"><a
                        href="http://localhost/opencart_v1.5.4.1/upload/index.php?route=product/product&amp;product_id=41"><img
                            src="http://localhost/opencart_v1.5.4.1/upload/image/cache/data/demo/imac_1-80x80.jpg"
                            alt="iMac"/></a></div>

                <div class="name"><a
                        href="http://localhost/opencart_v1.5.4.1/upload/index.php?route=product/product&amp;product_id=41">iMac</a>
                </div>

                <div class="price">
                    $119.50</div>
                <a onclick="addToCart('41');" class="button">Add to Cart</a></div>
        </div>
    </div>
</g:if>
<div class="tags"><b>Tags:</b>
    <a href="http://localhost/opencart_v1.5.4.1/upload/index.php?route=product/search&amp;filter_tag="></a>
</div>
</div>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
    overlayClose:true,
    opacity:0.5
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').bind('click', function () {
    $.ajax({
        url:'index.php?route=checkout/cart/add',
        type:'post',
        data:$('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
        dataType:'json',
        success:function (json) {
            $('.success, .warning, .attention, information, .error').remove();

            if (json['error']) {
                if (json['error']['option']) {
                    for (i in json['error']['option']) {
                        $('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
                    }
                }
            }

            if (json['success']) {
                $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');

                $('.success').fadeIn('slow');

                $('#cart-total').html(json['total']);

                $('html, body').animate({ scrollTop:0 }, 'slow');
            }
        }
    });
});
//--></script>
<script type="text/javascript" src="${resource(dir: 'js', file: 'ajaxupload.js')}"></script>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function () {
    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');

    return false;
});

$('#review').load('index.php?route=product/product/review&product_id=30');

$('#button-review').bind('click', function () {
    $.ajax({
        url:'${request.contextPath}/product/writeReview/${productDetail.id}',
        type:'post',
        dataType:'json',
        data:'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
        beforeSend:function () {
            $('.success, .warning').remove();
            $('#button-review').attr('disabled', true);
            $('#review-title').after('<div class="attention"><img src="${resource(dir:'image',file:'loading.gif')}" alt="" /> Please Wait!</div>');
        },
        complete:function () {
            $('#button-review').attr('disabled', false);
            $('.attention').remove();
        },
        success:function (data) {
            if (data['error']) {
                $('#review-title').after('<div class="warning">' + data['error'] + '</div>');
            }

            if (data['success']) {
                $('#review-title').after('<div class="success">' + data['success'] + '</div>');

                $('input[name=\'name\']').val('');
                $('textarea[name=\'text\']').val('');
                $('input[name=\'rating\']:checked').attr('checked', '');
                $('input[name=\'captcha\']').val('');
            }
        }
    });
});
//--></script>
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script>
<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-ui-timepicker-addon.js')}"></script>
<script type="text/javascript"><!--
if ($.browser.msie && $.browser.version == 6) {
    $('.date, .datetime, .time').bgIframe();
}

$('.date').datepicker({dateFormat:'yy-mm-dd'});
$('.datetime').datetimepicker({
    dateFormat:'yy-mm-dd',
    timeFormat:'h:m'
});
$('.time').timepicker({timeFormat:'h:m'});
//--></script>

</body>
</html>