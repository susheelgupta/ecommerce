<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <title>customerGroup</title>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/customer">Customer</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'customer.png')}" alt=""/> Customer</h1>

            <div class="buttons">
                <a href="#" class="button">Approve</a>
                <a class="button" onclick="location = '${request.contextPath}/customer/create'">Insert</a>
                <a id="delete" class="button">Delete</a>
            </div>
        </div>

        <div class="content">
            <form action="${request.contextPath}/customer/delete" method="post" id="deleteForm" name="customerForm">
                <g:hiddenField name="customerIds" id="customerIds" value=""/>
                <table class="list">
                    <thead>
                    <tr>
                        <td width="1" style="text-align: center;">
                            <input type="checkbox" class="check"
                                   onclick="$('input[name*=\'customerId\']').attr('checked', this.checked);"/>
                        </td>
                        <td class="left">Customer  Name</td>
                        <td class="left">E-Mail</td>
                        <td class="left">Customer Group</td>
                        <td class="left">Status</td>
                        <td class="left">Approved</td>
                        <td class="left">IP</td>
                        <td class="left">Date Added</td>
                        <td class="right">Login into Store</td>
                        <td class="right">Action</td>
                    </tr>
                    </thead>
                    <tr class="filter">
                        <td></td>
                        <td><input type="text" name="filter_name" value=""></td>
                        <td><input type="text" name="filter_email" value=""></td>
                        <td><select name="filter_customer_group_id">
                            <option value="*"></option>
                            <option value="">Default</option>
                            <option value="">abfbfabd</option>
                        </select></td>
                        <td><select name="filter_status">
                            <option value="*"></option>
                            <option value="">Enable</option>
                            <option value="">Disable</option>
                        </select></td>
                        <td><select name="filter_approved">
                            <option value="*"></option>
                            <option value="">Yes</option>
                            <option value="">No</option>
                        </select></td>
                        <td><input type="text" name="filter_ip" value=""></td>
                        <td align="right"><input type="text" name="filter_date_added" value="" size="12"
                                                 style="text-align: right;"/>
                        </td>
                        <td></td>
                        <td align="right"><a onclick="filter();" class="button">Filter</a></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>