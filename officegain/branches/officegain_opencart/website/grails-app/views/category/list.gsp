<%--
  Created by IntelliJ IDEA.
  User: Susheel
  Date: 12/27/12
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>

%{--<%@ page import="org.apache.commons.lang.StringEscapeUtils" contentType="text/html;charset=UTF-8" %>--}%
<html>
<head>
    <title>${categoryDetails.name}</title>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.cookie.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.colorbox.js')}"></script>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'colorbox.css')}" media="screen"/>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'tabs.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'common.js')}"></script>
    %{--<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.nivo.slider.pack.js')}"></script>--}%
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.jcarousel.min.js')}"></script>
    <meta name="layout" content="main"/>
</head>

<body>
<div id="notification"></div>

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

    <div id="banner0" class="banner">
        <div><a href="#"><img
                src="http://localhost/opencart_v1.5.4.1/upload/image/cache/data/demo/hp_banner-182x182.jpg"
                alt="HP Banner" title="HP Banner"/></a></div>
    </div>
    <script type="text/javascript"><!--
    $(document).ready(function () {
        $('#banner0 div:first-child').css('display', 'block');
    });

    var banner = function () {
        $('#banner0').cycle({
            before:function (current, next) {
                $(next).parent().height($(next).outerHeight());
            }
        });
    }

    setTimeout(banner, 2000);
    //--></script>
</div>

<div id="content"><div class="breadcrumb">
    <a href="#">Home</a>
    » <a href="#">Desktops</a>
</div>

    <h1>Desktops</h1>

    <div class="category-info">
        <div class="image"><img alt="Desktops"
                                src="http://localhost/opencart_v1.5.4.1/upload/image/cache/data/demo/compaq_presario-80x80.jpg">
        </div>

        <p>
            Example of category description text</p>
    </div>

    <h2>Refine Search</h2>

    <div class="category-list">
        <ul>
            <li><a href="#">PC</a>
            </li>
            <li><a href="#">Mac</a>
            </li>
        </ul>
    </div>

    <div class="product-filter">
        <div class="display"><b>Display:</b> List <b>/</b> <a onclick="display('grid');">Grid</a></div>

        <div class="limit"><b>Show:</b>
            <select onchange="location = this.value;">
                <option value="#" selected="selected">15</option>
                <option value="#">25</option>
                <option value="#">50</option>
                <option value="#">75</option>
                <option value="3">100</option>
            </select>
        </div>

        <div class="sort"><b>Sort By:</b>
            <select onchange="location = this.value;">
                <option value="#">Default</option>
                <option value="#">Name (A - Z)</option>
                <option value="#">Name (Z - A)</option>
                <option value="#">Price (Low &gt; High)</option>
                <option value="#">Price (High &gt; Low)</option>
                <option value="#">Rating (Highest)</option>
                <option value="#">Rating (Lowest)</option>
                <option value="#">Model (A - Z)</option>
                <option value="#">Model (Z - A)</option>
            </select>
        </div>
    </div>

    <div class="product-compare"><a href="?route=product/compare"
                                    id="compare-total">Product Compare (0)</a></div>

    <div class="product-list">
        <g:each in="${productDescriptionMap}" var="values">
            <div><div class="right"><div class="cart">
                <input type="button" class="button" onclick="addToCart('42');" value="Add to Cart">
            </div>

                <div class="wishlist"><a onclick="addToWishList('42');">Add to Wish List</a></div>

                <div class="compare"><a onclick="addToCompare('42');">Add to Compare</a></div></div>

                <div class="left"><div class="image"><a
                        href="http://localhost/opencart_v1.5.4.1/upload/index.php?route=product/product&amp;path=20&amp;product_id=42"><img
                            alt="Apple Cinema 30&quot;" title="Apple Cinema 30&quot;"
                            src="http://localhost/opencart_v1.5.4.1/upload/image/cache/data/demo/apple_cinema_30-80x80.jpg">
                </a></div>

                    <div class="price">
                        <span class="price-old">${values.getKey().price}</span>
                        <span class="price-new">${values.getKey().price}</span>
                        <br>
                        <span class="price-tax">${values.getKey().price}</span>
                    </div>

                    <div class="name">
                        <a href="${request.contextPath}/product/list/${values.getKey().id}">${values.getValue().name}</a>
                    </div>

                    <div class="description">
                        ${values.getValue().description.decodeHTML().length() > 100 ? values.getValue().description.decodeHTML().substring(0, 100) : values.getValue().description.decodeHTML()}
                    </div>
                </div></div>
        </g:each>
    </div>
    <script type="text/javascript"><!--
    function display(view) {
        if (view == 'list') {
            $('.product-grid').attr('class', 'product-list');

            $('.product-list > div').each(function (index, element) {
                html = '<div class="right">';
                html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
                html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
                html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
                html += '</div>';

                html += '<div class="left">';

                var image = $(element).find('.image').html();

                if (image != null) {
                    html += '<div class="image">' + image + '</div>';
                }

                var price = $(element).find('.price').html();

                if (price != null) {
                    html += '<div class="price">' + price + '</div>';
                }

                html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
                html += '  <div class="description">' + $(element).find('.description').html() + '</div>';

                var rating = $(element).find('.rating').html();

                if (rating != null) {
                    html += '<div class="rating">' + rating + '</div>';
                }

                html += '</div>';


                $(element).html(html);
            });

            $('.display').html('<b>Display:</b> List <b>/</b> <a onclick="display(\'grid\');">Grid</a>');

            $.cookie('display', 'list');
        } else {
            $('.product-list').attr('class', 'product-grid');

            $('.product-grid > div').each(function (index, element) {
                html = '';

                var image = $(element).find('.image').html();

                if (image != null) {
                    html += '<div class="image">' + image + '</div>';
                }

                html += '<div class="name">' + $(element).find('.name').html() + '</div>';
                html += '<div class="description">' + $(element).find('.description').html() + '</div>';

                var price = $(element).find('.price').html();

                if (price != null) {
                    html += '<div class="price">' + price + '</div>';
                }

                var rating = $(element).find('.rating').html();

                if (rating != null) {
                    html += '<div class="rating">' + rating + '</div>';
                }

                html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
                html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
                html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';

                $(element).html(html);
            });

            $('.display').html('<b>Display:</b> <a onclick="display(\'list\');">List</a> <b>/</b> Grid');

            $.cookie('display', 'grid');
        }
    }

    view = $.cookie('display');

    if (view) {
        display(view);
    } else {
        display('list');
    }
    //--></script>

</div>
</body>
</html>