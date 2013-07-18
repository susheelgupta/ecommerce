<%@ page import="com.officegain.enigma.admin.AdminUtil; grails.plugin.searchable.internal.util.StringQueryUtils; com.officegain.enigma.admin.AdminUtil; com.officegain.enigma.base.Product" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'menu.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'container_core.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'menu1.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'yahoo-min.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'event-min.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'connection-min.js')}"></script>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
    <style>
    tr > td:first-child, tr > th:first-child {
        padding-left: 0;
    }

    .ygtvhighlight {
        background-color: blue;
        border: medium none;
        color: #FFFFFF
    }

    .ygtvfocus {
        background-color: blue;
        border: medium none;
        color: #FFFFFF
    }

    .yuimenubar li, .yuimenu li {
        list-style-type: none;
    }

    .yuimenubaritem {
        float: left;
    }

    .yuimenuitemlabel, .yuimenubaritemlabel {
        text-align: left;
        white-space: nowrap;
    }

    .yui-menu-shadow {
        position: absolute;
        visibility: hidden;
        z-index: -1;
    }

    .yui-menu-shadow-visible {
        top: 2px;
        right: -3px;
        left: -3px;
        bottom: -3px;
        visibility: visible;
    }

    .bd {
        background-color: #FFFFFF;
        border: 1px solid #808080;
    }

    .yui-menu-shadow-visible {
        background-color: #000000;
        opacity: 0.12;
    }

    a:link, a:visited, a:hover {
        color: #666666;
        text-decoration: none;
    }

    <style>
.pagination {
        border-top: 0;
        margin: 0;
        padding: 0.3em 0.2em;
        text-align: center;
        -moz-box-shadow: 0 0 3px 1px #AAAAAA;
        -webkit-box-shadow: 0 0 3px 1px #AAAAAA;
        box-shadow: 0 0 3px 1px #AAAAAA;
        background-color: #EFEFEF;
    }

    .pagination a,
    .pagination .currentStep {
        color: #666666;
        display: inline-block;
        margin: 0 0.1em;
        padding: 0.25em 0.7em;
        text-decoration: none;
        -moz-border-radius: 0.3em;
        -webkit-border-radius: 0.3em;
        border-radius: 0.3em;
    }

    .pagination a:hover, .pagination a:focus,
    .pagination .currentStep {
        background-color: #999999;
        color: #ffffff;
        outline: none;
        text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.8);
    }

    .no-borderradius .pagination a:hover, .no-borderradius .pagination a:focus,
    .no-borderradius .pagination .currentStep {
        background-color: transparent;
        color: #444444;
        text-decoration: underline;
    }
    </style>
    <enigma:categoryTreeViewCss/>
</head>

<body>
<div style="float:none">
    <div class="ygtv-highlight"
         style=" float:left;overflow: scroll;width:20%;height:658px;color: #666666;white-space: nowrap;">
        <richui:treeView id="tree" xml="${data}" onLabelClick="getProducts" showRoot="true"/>
        <script type="text/javascript">
            function getProducts(id) {
                var sUrl = "/admin/product/list/" + id;
                document.location.href = sUrl;
                var callback = {
                    success:function (o) {
                        $('#productTable >tbody').empty();
                        var productImageMap = $.parseJSON(o.responseText);
                        $(productImageMap).each(function () {
                            $('#productTable >tbody').append('<tr><td>' + this.product.name + '</td><td>' + this.product.price +
                                    '<img height=25 weight=39 src=' + this.imageUrl + ' />' + '</td><td>' + this.product.quantity +
                                    '</td><td>' + this.product.weight + '</td></tr>');
                        });
                    },
                    failure:function (o) {
                        alert("AJAX doesn't work");
                    }
                }
                return false;
            }
        </script>
    </div>

    <div id="mydiv" style="float:left; width:80% ">
        <table id="productTable">
            <thead class="colorBody">
            <tr>
                <g:sortableColumn property="name"
                                  title="${message(code: 'product.name.label', default: 'Product Name')}"/>
                <g:sortableColumn property="price"
                                  title="${message(code: 'product.price.label', default: 'Product Price')}"/>
                <g:sortableColumn property="quantity"
                                  title="${message(code: 'product.quantity.label', default: 'Product Quantity')}"/>
                <g:sortableColumn property="weight"
                                  title="${message(code: 'product.weight.label', default: 'Product Weight')}"/>
            </tr>
            </thead>
            <tbody class="colorBody">
            <g:each in="${searchResult.results}" status="i" var="productInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <g:link controller="product" action="show" id="${productInstance.id}">
                                        <img src="${AdminUtil.productDefaultImageUrl(productInstance)}"
                                             alt="${productInstance.name}" title="${productInstance.name}"
                                             height="30" width="30"/>
                                    </g:link>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <g:link controller="product" style="text-decoration: none;color:#666666;"
                                            action="show" id="${productInstance.id}">
                                        ${fieldValue(bean: productInstance, field: "name")}
                                    </g:link>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>${productInstance.getCustomerPricing()}</td>
                    <td>${fieldValue(bean: productInstance, field: "quantity")}</td>
                    <td>${fieldValue(bean: productInstance, field: "weight")}</td>
                </tr>
            </g:each>
            </tbody>
        </table>

        <div class="pagination">
            <g:paginate controller="AdminSearch" action="index" total="${searchResult.total}"
                        params="[q: params.q]"/>
        </div>
    </div>
</div>
</body>
</html>
