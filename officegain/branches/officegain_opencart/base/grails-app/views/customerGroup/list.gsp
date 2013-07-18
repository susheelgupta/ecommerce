<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>customerIpBlacklist</title>
    <meta name="layout" content="main">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'customerGroup.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/customerGroup">Customer Group</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'customer.png')}" alt=""/> Customer Group</h1>

            <div class="buttons">
                <a href="${request.contextPath}/customerGroup/create" class="button">Insert</a>
                <a href="" id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form id="deleteForm" method="post" action="${request.contextPath}/customerGroup/delete"
                  name="customerGroupForm">
                <g:hiddenField name="customerGroupIds" id="customerGroupIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox"
                                   onclick="$('input[name*=\'customerGroupId\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Customer Group Name</td>
                        <td class="right">Sort Order</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <g:each in="${customerGroupDescriptionMap}" var="entry">
                        <tr>
                            <td width="1" style="text-align: center;">
                                <input type="checkbox" value="${entry.getKey().id}" name="customerGroupId"
                                       class="check"/>
                            </td>
                            <td class="left">${entry.getValue().name}</td>
                            <td class="right">${entry.getKey().sortOrder}</td>
                            <td class="right"><a
                                    href="${request.contextPath}/customerGroup/show/${entry.getKey().id}">[Edit]</a>
                            </td>
                        </tr>
                    </g:each>
                </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>
