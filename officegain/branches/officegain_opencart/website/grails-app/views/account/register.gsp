<%--
  Created by IntelliJ IDEA.
  User: Susheel
  Date: 1/16/13
  Time: 12:51 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page import="com.officegain.enigma.base.Country" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.cookie.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.colorbox.js')}"></script>
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'colorbox.css')}" media="screen"/>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'tabs.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'common.js')}"></script>
    <meta name="layout" content="main"/>

</head>

<body>
<div id="notification"></div>

<div class="warning">
    <g:message code="website.com.officegain.userCreationFailed"></g:message>
</div>

<div id="column-right">
    <div class="box">
        <div class="box-heading">Account</div>

        <div class="box-content">
            <ul>
                <li><a href="#">Login</a> / <a href="#">Register</a></li>
                <li><a href="#">Forgotten Password</a></li>
                <li><a href="#">My Account</a></li>
                <li><a href="#">Wish List</a></li>
                <li><a href="#">Order History</a></li>
                <li><a href="#">Downloads</a></li>
                <li><a href="#">Returns</a></li>
                <li><a href="#">Transactions</a></li>
                <li><a href="#">Newsletter</a></li>
            </ul>
        </div>
    </div>
</div>

<div id="content">
<div class="breadcrumb">
    <a href="#">Home</a>
&raquo; <a href="#">Account</a>
&raquo; <a href="#">Register</a>
</div>

<h1>Register Account</h1>

<p>If you already have an account with us, please login at the <a
        href="${request.contextPath}/login">login page</a>.</p>

<form action="${request.contextPath}/account/saveRegistration" method="post"
      enctype="multipart/form-data">
    <h2>Your Personal Details</h2>

    <div class="content">
        <table class="form">
            <tr>
                <td><span class="required">*</span> First Name:</td>
                <td><input type="text" name="firstname" value=""/>
                </td>
            </tr>
            <tr>
                <td><span class="required">*</span> Last Name:</td>
                <td><input type="text" name="lastname" value=""/>
                </td>
            </tr>
            <tr>
                <td><span class="required">*</span> E-Mail:</td>
                <td><input type="text" name="email" value=""/>
                </td>
            </tr>
            <tr>
                <td><span class="required">*</span> Telephone:</td>
                <td><input type="text" name="telephone" value=""/>
                </td>
            </tr>
            <tr>
                <td>Fax:</td>
                <td><input type="text" name="fax" value=""/></td>
            </tr>
        </table>
    </div>

    <h2>Your Address</h2>

    <div class="content">
        <table class="form">
            <tr>
                <td>Company:</td>
                <td><input type="text" name="company" value=""/></td>
            </tr>
            <tr style="display: none;">
                <td>Business Type:</td>
                <td><input type="radio" name="customer_group_id" value="1" id="customer_group_id1"
                           checked="checked"/>
                    <label for="customer_group_id1">Default</label>
                    <br/>
                </td>
            </tr>
            <tr id="company-id-display">
                <td><span id="company-id-required" class="required">*</span> Company ID:</td>
                <td><input type="text" name="companyId" value=""/>
                </td>
            </tr>
            <tr id="tax-id-display">
                <td><span id="tax-id-required" class="required">*</span> Tax ID:</td>
                <td><input type="text" name="taxId" value=""/>
                </td>
            </tr>
            <tr>
                <td><span class="required">*</span> Address 1:</td>
                <td><input type="text" name="address1" value=""/>
                </td>
            </tr>
            <tr>
                <td>Address 2:</td>
                <td><input type="text" name="address2" value=""/></td>
            </tr>
            <tr>
                <td><span class="required">*</span> City:</td>
                <td><input type="text" name="city" value=""/>
                </td>
            </tr>
            <tr>
                <td><span id="postcode-required" class="required">*</span> Post Code:</td>
                <td><input type="text" name="postcode" value=""/>
                </td>
            </tr>
            <tr>
                <td><span class="required">*</span> Country:</td>
                <td>
                    <g:select optionKey="id" optionValue="name"
                              noSelection="${['0':'--Select Country--']}" name="country_id"
                              from="${com.officegain.enigma.base.Country.list()}"/>
                </td>
            </tr>
            <tr>
                <td><span class="required">*</span> Region / State:</td>
                <td><g:select name="zone_id" from="" value="zone_id"/>
                </td>
            </tr>
        </table>
    </div>

    <h2>Your Password</h2>

    <div class="content">
        <table class="form">
            <tr>
                <td><span class="required">*</span> Password:</td>
                <td><input type="password" name="password" value=""/>
                    <span class="error"><g:message code="website.com.officegain.passwordLengthError"/></span>
                </td>
            </tr>
            <tr>
                <td><span class="required">*</span> Password Confirm:</td>
                <td><input type="password" name="confirm" value=""/>
                </td>
            </tr>
        </table>
    </div>

    <h2>Newsletter</h2>

    <div class="content">
        <table class="form">
            <tr>
                <td>Subscribe:</td>
                <td><input type="radio" name="newsletter" value="1"/>
                    Yes            <input type="radio" name="newsletter" value="0" checked="checked"/>
                    No</td>
            </tr>
        </table>
    </div>

    <div class="buttons">
        <div class="right">I have read and agree to the <a class="colorbox"
                                                           href="#"
                                                           alt="Privacy Policy"><b>Privacy Policy</b>
        </a>                <input type="checkbox" name="agree" value="1"/>
            <input type="submit" value="Continue" class="button" onclick="${request.contextPath}/account/s
            aveRegistration"/>
        </div>
    </div>
</form>


<script type="text/javascript"><!--
$('input[name=\'customer_group_id\']:checked').live('change', function () {
    var customer_group = [];

    customer_group[1] = [];
    customer_group[1]['company_id_display'] = '1';
    customer_group[1]['company_id_required'] = '0';
    customer_group[1]['tax_id_display'] = '0';
    customer_group[1]['tax_id_required'] = '1';


    if (customer_group[this.value]) {
        if (customer_group[this.value]['company_id_display'] == '1') {
            $('#company-id-display').show();
        } else {
            $('#company-id-display').hide();
        }

        if (customer_group[this.value]['company_id_required'] == '1') {
            $('#company-id-required').show();
        } else {
            $('#company-id-required').hide();
        }

        if (customer_group[this.value]['tax_id_display'] == '1') {
            $('#tax-id-display').show();
        } else {
            $('#tax-id-display').hide();
        }

        if (customer_group[this.value]['tax_id_required'] == '1') {
            $('#tax-id-required').show();
        } else {
            $('#tax-id-required').hide();
        }
    }
});

$('input[name=\'customer_group_id\']:checked').trigger('change');
//--></script>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function () {
    $.ajax({
        url:'${request.contextPath}/account/getZoneList/' + $(this).val(),
        dataType:'json',
        beforeSend:function () {
            $('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="${resource(dir: '/css/image',file:'loading.gif')}" alt="" /></span>');
        },
        complete:function () {
            $('.wait').remove();
        },
        success:function (json) {
            if (json['postcode_required'] == '1') {
                $('#postcode-required').show();
            } else {
                $('#postcode-required').hide();
            }

            html = '<option value=""> --- Please Select --- </option>';

            if (json != '') {
                for (i = 0; i < json.length; i++) {
                    html += '<option value="' + json[i]['id'] + '"';

                    if (json[i]['id'] == '') {
                        html += ' selected="selected"';
                    }

                    html += '>' + json[i]['name'] + '</option>';
                }
            } else {
                html += '<option value="0" selected="selected"> --- None --- </option>';
            }

            $('select[name=\'zone_id\']').html(html);
        },
        error:function (xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
    width:640,
    height:480
});
//--></script>
</div>
</body>
</html>