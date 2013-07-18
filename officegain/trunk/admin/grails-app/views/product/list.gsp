<%@ page import="com.officegain.enigma.admin.AdminUtil; com.officegain.enigma.base.Product" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}"/>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'menu.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
    </div>
<?php if ($success) { ?>
    <div class="success"><?php echo $success; ?></div>
<?php } ?>
    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'report.png')}" alt="" /> Products Viewed Report</h1>
            <div class="buttons"><a onclick="location = '<?php echo $reset; ?>';" class="button"><?php echo $button_reset; ?></a></div>
        </div>
        <div class="content">
            <table class="list">

                <thead>
                <tr>
                    <g:sortableColumn property="name" title="${message(code: 'product.name.label', default: 'Name')}"/>
                    <g:sortableColumn property="quantity"
                                      title="${message(code: 'product.quantity.label', default: 'Quantity')}"/>
                    <g:sortableColumn property="price" title="${message(code: 'product.price.label', default: 'Price')}"/>
                    <g:sortableColumn property="model"
                                      title="${message(code: 'product.model.label', default: 'Model')}"/>

                </tr>
                </thead>
                <tbody class="colorBody">
                <g:each in="${productInstanceList}" status="i" var="productInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td>
                            <table>
                                <tr>
                                    <td style="padding-left: 0">
                                        <g:link style="text-decoration: none;" controller="product" action="show"
                                                id="${productInstance.id}">
                                            <img src="${AdminUtil.productDefaultImageUrl(productInstance)}"
                                                 alt="${productInstance.name}" title="${productInstance.name}"
                                                 height="30" width="30"/>
                                        </g:link>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding-left: 0;">
                                        <g:link controller="product" style="text-decoration: none;color:#666666"
                                                action="show"
                                                id="${productInstance.id}">
                                            ${fieldValue(bean: productInstance, field: "name")}
                                        </g:link>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>${fieldValue(bean: productInstance, field: "quantity")}</td>
                        <td>${fieldValue(bean: productInstance, field: "price")}</td>
                        <td>${fieldValue(bean: productInstance, field: "model")}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </div>
    <div class="pagination">
        <g:paginate total="${productInstanceTotal}"/>
    </div>
</div>

</body>
</html>
