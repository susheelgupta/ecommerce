<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>product</title>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'productcart.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/product">Product</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'product.png')}" alt=""/> Products</h1>

            <div class="buttons">
                <a href="${request.contextPath}/product/insert" class="button">Insert</a>
                <a href="#" id="copy" class="button">Copy</a>
                <a href="#" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form action="${request.contextPath}/product/delete" method="post" id="deleteForm" name="productForm">
                <g:hiddenField name="productIds" id="productIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox" class="check"
                                   onclick="$('input[name*=\'productId\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="center">Id</td>
                        <td class="left">Product  Name</td>
                        <td class="left">Model</td>
                        <td class="left">Quantity</td>
                        <td class="left">Price</td>
                        <td class="left">Status</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                <tr class="filter">
                    <td></td>
                    <td></td>
                    <td><input type="text" name="filter_name" value=""></td>
                    <td><input type="text" name="filter_model" value=""/></td>
                    <td align="left"><input type="text" name="filter_price" value="" size="8"/></td>
                    <td align="right"><input type="text" name="filter_quantity" value="" style="text-align: right;"/>
                    </td>
                    <td><select name="filter_status">
                        <option value="*"></option>
                        <option value="">Enable</option>
                        <option value="">Disable</option>
                    </select></td>
                    <td align="right"><a onclick="filter();" class="button">Filter</a></td>

                    <g:each in="${productDescriptionMap}" var="values">
                        <tr>
                            <td style="text-align: center;"><input type="checkbox" name="productId" class="check"
                                                                   value="${values.getKey().id}"/></td>
                            <td class="center">${values.getKey().id}</td>
                            <td class="left">${values.getValue().name}</td>
                            <td class="left">${values.getKey().model}</td>
                            <td class="left">${values.getKey().quantity}</td>
                            <td class="left">${values.getKey().price}</td>
                            <td class="left">${values.getKey().status}</td>
                            <td class="right"><a href="${request.contextPath}/product/update">[Edit]</a></td>
                        </tr>
                    </g:each>
                </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>