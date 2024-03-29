<%@ page import="com.officegain.enigma.admin.AdminUtil; com.officegain.enigma.base.Manufacturer" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
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
    </style>
    <enigma:manufacturerTreeViewCss/>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li>
            <g:link style="text-decoration:none" class="create" action="create" id="${id}"
                    controller="manufacturer">New Manufacturer</g:link>
        </li>
        <li>
            <g:link style="text-decoration:none" class="create" action="show" id="${id}"
                    controller="manufacturer">Edit Manufacturer</g:link>
        </li>
        <li>
            <g:link style="text-decoration:none" class="create" action="create"
                    params="[manufacturerId:id,categoryId:'']"
                    controller="product">New Product</g:link>
        </li>
    </ul>
</div>

<div style="float:none">
    <div class="ygtv-highlight"
         style=" float:left;overflow: scroll;width:20%;height:666px;color: #666666;white-space: nowrap;">
        <richui:treeView id="tree" xml="${data}" onLabelClick="getProducts" showRoot="true"/>
        <script type="text/javascript">
            var tree = YAHOO.widget.TreeView.getTree('tree');
            var oContextMenu = new YAHOO.widget.ContextMenu(
                    "mytreecontextmenu",
                    {
                        trigger:"tree",
                        lazyload:true,
                        itemdata:[
                            { text:'Add New Manufacturer', onclick:{ fn:addNode } },
                            { text:"Edit Manufacturer", onclick:{ fn:editNodeLabel } },
                            { text:"Delete Manufacturer", onclick:{ fn:deleteNode } }
                        ]
                    }
            );

            function addNode() {
            }

            function editNodeLabel(id) {
                window.location = "${request.contextPath}/manufacturer/show/" + id;
            }

            function deleteNode(id) {
                tree.removeNode(id);
                tree.draw();
            }
            function getProducts(id) {
                window.location = "${request.contextPath}/manufacturer/list/" + id;
            }
        </script>
    </div>

    <div id="mydiv" style="float:left; width:80% ">
        <g:if test="${flash.message}">
            <div class="message" role="status" style="margin-right:108px;margin-left:0px">${flash.message}</div>
        </g:if>
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
            <g:each in="${productList}" status="i" var="productInstance">
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
                                <td style="padding-left: 0;">
                                    <g:link controller="product" style="text-decoration: none;color:#666666;"
                                            action="show"
                                            id="${productInstance.id}">
                                        ${fieldValue(bean: productInstance, field: "name")}
                                    </g:link>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>${fieldValue(bean: productInstance, field: "price")}</td>
                    <td>${fieldValue(bean: productInstance, field: "quantity")}</td>
                    <td>${fieldValue(bean: productInstance, field: "weight")}</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>

<div class="pagination">
    <g:paginate total="${productCount}" params="[id:id]"/>
</div>
</body>
</html>