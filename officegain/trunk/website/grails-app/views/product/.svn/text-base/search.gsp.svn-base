<%@ page import="com.officegain.enigma.website.WebsiteUtil; com.officegain.enigma.base.Product" %>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
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
</head>

<body>
<div class="content scaffold-list" role="main">
    <table>
        <thead>
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
        <tbody>
        <g:each in="${productList}" status="i" var="productInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                <td>
                    <table>
                        <tr>
                            <td>
                                <g:link controller="product" action="show" id="${productInstance.id}">
                                    <img src="${WebsiteUtil.productDefaultImageUrl(productInstance)}"
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
    %{--<div class="pagination">--}%
    %{--<g:paginate next="Forward" prev="Back" max="1" total="${productCount}"/>--}%
    %{--</div>--}%
</div>
</body>
</html>
