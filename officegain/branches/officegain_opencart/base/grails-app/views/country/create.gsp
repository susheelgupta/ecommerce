<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/country">Country</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'country.png')}" title="Country"
                     onclick="location = '${request.contextPath}/country'"/> Country</h1>

            <div class="buttons">
                <a class="button" onclick="$('#form').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/country'">Cancel</a></div>
        </div>

        <div class="content">
            <form id="form" method="post" action="save">
                <div id="tab-general">
                    <table class="form">
                        <tr>
                            <td><span class="required">*</span> Country Name:</td>
                            <td><input type="text" value="" name="name"></td>
                        </tr>
                        <tr>
                            <td>ISO Code (2):</td>
                            <td><input type="text" value="" name="isoCode2"></td>
                        </tr>
                        <tr>
                            <td>ISO Code (3):</td>
                            <td><input type="text" value="" name="isoCode3"></td>
                        </tr>
                        <tr>
                            <td>Address Format:<br><span class="help">
                                First Name = {firstname}<br>
                                Last Name = {lastname}<br>
                                Company = {company}<br>
                                Address 1 = {address_1}<br>
                                Address 2 = {address_2}<br>
                                City = {city}<br>
                                Postcode = {postcode}<br>
                                Zone = {zone}<br>
                                Zone Code = {zone_code}<br>
                                Country = {country}</span></td>
                            <td><g:textArea rows="5" cols="40" name="addressFormat"/></td>
                        </tr>
                        <tr>
                            <td>Postcode Required:</td>
                            <td><input type="radio" value="1" name="postcodeRequired"> Yes
                                <input type="radio" checked="checked" value="0" name="postcodeRequired"> No
                            </td>
                        </tr>
                        <tr>
                            <td>Status:</td>
                            <td>
                                <select name="status">
                                    <option selected="selected" value="1">Enabled</option>
                                    <option value="0">Disabled</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>