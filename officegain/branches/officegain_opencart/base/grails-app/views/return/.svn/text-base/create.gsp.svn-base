<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <title>ProductReturns</title>
    <meta name="layout" content="main">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'editor.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'contents.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'js', file: 'contents.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'dialog.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'js/skins/kama', file: 'dialog.css')}" type="text/css">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'ckeditor.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js/plugins/link/dialogs', file: 'link.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js/plugins/link/dialogs', file: 'anchor.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js/plugins/specialchar/lang', file: 'en.js')}"></script>
    <script type="text/javascript"
            src="${resource(dir: 'js/plugins/colordialog/dialogs', file: 'colordialog.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'tabs.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'config.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'en.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'image.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'table.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'default.js')}"></script>
    <link rel="stylesheet" href="${resource(dir: '/js/skins/kama', file: 'editor.css')}" type="text/css">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.ui.datepicker.min.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-ui-timepicker-addon.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js', file: 'productcart.js')}"></script>
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/category">Product Returns</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'order.png')}" title="Category"
                     onclick="location = '${request.contextPath}/category'"/> Product Returns</h1>

            <div class="buttons">
                <a class="button" onclick="$('#form').submit();">Save</a>
                <a class="button" onclick="location = '${request.contextPath}/category'">Cancel</a></div>
        </div>

        <div class="content">
            <div class="htabs" id="tabs">
                <a href="#tab-general" style="display: inline;" class="selected">Returns Details</a>
                <a href="#tab-data" style="display: inline;">Products</a>
            </div>

            <form id="form" enctype="multipart/form-data" method="post" action="save">
                <div id="tab-general" style="display: block;">

                    <div id="language1" style="display: block;">
                        <table class="form">
                            <tbody>
                            <tr>
                                <td><span class="required">*</span> Order Id:</td>
                                <td><input type="text" value="" size="50" name="name"/></td>
                            </tr>
                            <tr>
                                <td><span class="required"></span> Order Date:</td>
                                <td><input type="text" name="date_available" value="" size="12" class="date"/></td>
                            </tr>
                            <tr>
                                <td><span class="required"></span> Customer:</td>
                                <td><input type="text" value="" size="50" name="name"/></td>
                            </tr>
                            <tr>
                                <td><span class="required">*</span> First Name:</td>
                                <td><input type="text" value="" size="50" name="name"/></td>
                            </tr>
                            <tr>
                                <td><span class="required">*</span> Last Name:</td>
                                <td><input type="text" value="" size="50" name="name"/></td>
                            </tr>
                            <tr>
                                <td><span class="required">*</span> E-Mail:</td>
                                <td><input type="text" value="" size="50" name="name"/></td>
                            </tr>
                            <tr>
                                <td><span class="required">*</span> Telephone:</td>
                                <td><input type="text" value="" size="50" name="name"/></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div id="tab-data" style="display: none;">
                    <table class="form">
                        <tbody>
                        <tr>
                            <td><span class="required">*</span> Product:</td>
                            <td><input type="text" value="" size="50" name="name"/></td>
                        </tr>
                        <<tr>
                            <td><span class="required">*</span> Model:</td>
                            <td><input type="text" value="" size="50" name="name"/></td>
                        </tr>
                        <tr>
                            <td><span class="required">*</span> Quantity:</td>
                            <td><input type="text" value="" size="20" name="name"/></td>
                        </tr>
                        <tr>
                            <td>Return Reason:</td>
                            <td><select name="return_reason_id">
                                <option value="0">Dead On Arrival</option>
                                <option value="1">Faulty,please supply deatils</option>
                                <option value="2">Order Error</option>
                                <option value="3">Other,please supply deatils</option>
                                <option value="4">Received Wrong Item</option>
                            </select></td>
                        </tr>
                        <tr>
                            <td>Opened:</td>
                            <td><select name="return_reason_id">
                                <option value="0">Opened</option>
                                <option value="1">Unopened</option>
                            </select></td>
                        </tr>
                        <tr>
                            <td>Comment:</td>
                            <td><textarea rows="5" cols="40" name="metaDescription"></textarea></td>
                        </tr>
                        <tr>
                            <td>Return Action:</td>
                            <td><select name="return_action">
                                <option value="0"></option>
                                <option value="1">Credit Issued</option>
                                <option value="2">Refunded</option>
                                <option value="3">Replacement Sent</option>
                            </select></td>
                        </tr>
                        <tr>
                            <td>Return Status:</td>
                            <td><select name="return_status">
                                <option value="0">Awating Products</option>
                                <option value="1">Complete</option>
                                <option value="1">Pending</option>
                            </select></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
    </div>
<script type="text/javascript"><!--
CKEDITOR.replace('description1', {
});
//--></script>
<script type="text/javascript"><!--
$('input[name=\'related\']').autocomplete({
    delay:0,
    source:function (request, response) {
        $.ajax({
            url:'index.php?route=catalog/product/autocomplete&token=72f34c3a3c5b2ea1738c960e75bbf59c&filter_name=' + encodeURIComponent(request.term),
            dataType:'json',
            success:function (json) {
                response($.map(json, function (item) {
                    return {
                        label:item.name,
                        value:item.product_id
                    }
                }));
            }
        });
    },
    select:function (event, ui) {
        $('#product-related' + ui.item.value).remove();
        $('#product-related').append('<div id="product-related' + ui.item.value + '">' + ui.item.label + '<img src="${resource(dir: 'images',file: 'delete.png')}" /><input type="hidden" name="product_related[]" value="' + ui.item.value + '" /></div>');

        $('#product-related div:odd').attr('class', 'odd');
        $('#product-related div:even').attr('class', 'even');
        return false;
    },
    focus:function (event, ui) {
        return false;
    }
});
$('#product-related div img').live('click', function () {
    $(this).parent().remove();
    $('#product-related div:odd').attr('class', 'odd');
    $('#product-related div:even').attr('class', 'even');
});
//--></script>
<script type="text/javascript"><!--
var attribute_row = 0;
function addAttribute() {
    html = '<tbody id="attribute-row' + attribute_row + '">';
    html += '  <tr>';
    html += '    <td class="left"><input type="text" name="product_attribute[' + attribute_row + '][name]" value="" /><input type="hidden" name="product_attribute[' + attribute_row + '][attribute_id]" value="" /></td>';
    html += '    <td class="left">';
    html += '<textarea name="product_attribute[' + attribute_row + '][product_attribute_description][1][text]" cols="40" rows="5"></textarea><img src="${resource(dir: 'images',file: 'gb.png')}" title="English" align="top" /><br />';
    html += '    </td>';
    html += '    <td class="left"><a onclick="$(\'#attribute-row' + attribute_row + '\').remove();" class="button">Remove</a></td>';
    html += '  </tr>';
    html += '</tbody>';
    $('#attribute tfoot').before(html);
    attributeautocomplete(attribute_row);
    attribute_row++;
}
$.widget('custom.catcomplete', $.ui.autocomplete, {
    _renderMenu:function (ul, items) {
        var self = this, currentCategory = '';
        $.each(items, function (index, item) {
            if (item.category != currentCategory) {
                ul.append('<li class="ui-autocomplete-category">' + item.category + '</li>');

                currentCategory = item.category;
            }

            self._renderItem(ul, item);
        });
    }
});
function attributeautocomplete(attribute_row) {
    $('input[name=\'product_attribute[' + attribute_row + '][name]\']').catcomplete({
        delay:0,
        source:function (request, response) {
            $.ajax({
                url:'index.php?route=catalog/attribute/autocomplete&token=72f34c3a3c5b2ea1738c960e75bbf59c&filter_name=' + encodeURIComponent(request.term),
                dataType:'json',
                success:function (json) {
                    response($.map(json, function (item) {
                        return {
                            category:item.attribute_group,
                            label:item.name,
                            value:item.attribute_id
                        }
                    }));
                }
            });
        },
        select:function (event, ui) {
            $('input[name=\'product_attribute[' + attribute_row + '][name]\']').attr('value', ui.item.label);
            $('input[name=\'product_attribute[' + attribute_row + '][attribute_id]\']').attr('value', ui.item.value);

            return false;
        },
        focus:function (event, ui) {
            return false;
        }
    });
}
$('#attribute tbody').each(function (index, element) {
    attributeautocomplete(index);
});
//--></script>
<script type="text/javascript"><!--
var option_row = 0;
$('input[name=\'option\']').catcomplete({
    delay:0,
    source:function (request, response) {
        $.ajax({
            url:'index.php?route=catalog/option/autocomplete&token=72f34c3a3c5b2ea1738c960e75bbf59c&filter_name=' + encodeURIComponent(request.term),
            dataType:'json',
            success:function (json) {
                response($.map(json, function (item) {
                    return {
                        category:item.category,
                        label:item.name,
                        value:item.option_id,
                        type:item.type,
                        option_value:item.option_value
                    }
                }));
            }
        });
    },
    select:function (event, ui) {
        html = '<div id="tab-option-' + option_row + '" class="vtabs-content">';
        html += '	<input type="hidden" name="product_option[' + option_row + '][product_option_id]" value="" />';
        html += '	<input type="hidden" name="product_option[' + option_row + '][name]" value="' + ui.item.label + '" />';
        html += '	<input type="hidden" name="product_option[' + option_row + '][option_id]" value="' + ui.item.value + '" />';
        html += '	<input type="hidden" name="product_option[' + option_row + '][type]" value="' + ui.item.type + '" />';
        html += '	<table class="form">';
        html += '	  <tr>';
        html += '		<td>Required:</td>';
        html += '       <td><select name="product_option[' + option_row + '][required]">';
        html += '	      <option value="1">Yes</option>';
        html += '	      <option value="0">No</option>';
        html += '	    </select></td>';
        html += '     </tr>';
        if (ui.item.type == 'text') {
            html += '     <tr>';
            html += '       <td>Option Value:</td>';
            html += '       <td><input type="text" name="product_option[' + option_row + '][option_value]" value="" /></td>';
            html += '     </tr>';
        }
        if (ui.item.type == 'textarea') {
            html += '     <tr>';
            html += '       <td>Option Value:</td>';
            html += '       <td><textarea name="product_option[' + option_row + '][option_value]" cols="40" rows="5"></textarea></td>';
            html += '     </tr>';
        }
        if (ui.item.type == 'file') {
            html += '     <tr style="display: none;">';
            html += '       <td>Option Value:</td>';
            html += '       <td><input type="text" name="product_option[' + option_row + '][option_value]" value="" /></td>';
            html += '     </tr>';
        }
        if (ui.item.type == 'date') {
            html += '     <tr>';
            html += '       <td>Option Value:</td>';
            html += '       <td><input type="text" name="product_option[' + option_row + '][option_value]" value="" class="date" /></td>';
            html += '     </tr>';
        }
        if (ui.item.type == 'datetime') {
            html += '     <tr>';
            html += '       <td>Option Value:</td>';
            html += '       <td><input type="text" name="product_option[' + option_row + '][option_value]" value="" class="datetime" /></td>';
            html += '     </tr>';
        }
        if (ui.item.type == 'time') {
            html += '     <tr>';
            html += '       <td>Option Value:</td>';
            html += '       <td><input type="text" name="product_option[' + option_row + '][option_value]" value="" class="time" /></td>';
            html += '     </tr>';
        }
        html += '  </table>';
        if (ui.item.type == 'select' || ui.item.type == 'radio' || ui.item.type == 'checkbox' || ui.item.type == 'image') {
            html += '  <table id="option-value' + option_row + '" class="list">';
            html += '  	 <thead>';
            html += '      <tr>';
            html += '        <td class="left">Option Value:</td>';
            html += '        <td class="right">Quantity:</td>';
            html += '        <td class="left">Subtract Stock:</td>';
            html += '        <td class="right">Price:</td>';
            html += '        <td class="right">Points:</td>';
            html += '        <td class="right">Weight:</td>';
            html += '        <td></td>';
            html += '      </tr>';
            html += '  	 </thead>';
            html += '    <tfoot>';
            html += '      <tr>';
            html += '        <td colspan="6"></td>';
            html += '        <td class="left"><a onclick="addOptionValue(' + option_row + ');" class="button">Add Option Value</a></td>';
            html += '      </tr>';
            html += '    </tfoot>';
            html += '  </table>';
            html += '  <select id="option-values' + option_row + '" style="display: none;">';
            for (i = 0; i < ui.item.option_value.length; i++) {
                html += '  <option value="' + ui.item.option_value[i]['option_value_id'] + '">' + ui.item.option_value[i]['name'] + '</option>';
            }
            html += '  </select>';
            html += '</div>';
        }
        $('#tab-option').append(html);
        $('#option-add').before('<a href="#tab-option-' + option_row + '" id="option-' + option_row + '">' + ui.item.label + '&nbsp;<img src="${resource(dir: 'images',file: 'delete.png')}"alt="" onclick="$(\'#vtab-option a:first\').trigger(\'click\'); $(\'#option-' + option_row + '\').remove(); $(\'#tab-option-' + option_row + '\').remove(); return false;" /></a>');
        $('#vtab-option a').tabs();
        $('#option-' + option_row).trigger('click');
        $('.date').datepicker({dateFormat:'yy-mm-dd'});
        $('.datetime').datetimepicker({
            dateFormat:'yy-mm-dd',
            timeFormat:'h:m'
        });
        $('.time').timepicker({timeFormat:'h:m'});
        option_row++;
        return false;
    },
    focus:function (event, ui) {
        return false;
    }
});
//--></script>
<script type="text/javascript"><!--
var option_value_row = 0;
function addOptionValue(option_row) {
    html = '<tbody id="option-value-row' + option_value_row + '">';
    html += '  <tr>';
    html += '    <td class="left"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][option_value_id]">';
    html += $('#option-values' + option_row).html();
    html += '    </select><input type="hidden" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][product_option_value_id]" value="" /></td>';
    html += '    <td class="right"><input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][quantity]" value="" size="3" /></td>';
    html += '    <td class="left"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][subtract]">';
    html += '      <option value="1">Yes</option>';
    html += '      <option value="0">No</option>';
    html += '    </select></td>';
    html += '    <td class="right"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][price_prefix]">';
    html += '      <option value="+">+</option>';
    html += '      <option value="-">-</option>';
    html += '    </select>';
    html += '    <input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][price]" value="" size="5" /></td>';
    html += '    <td class="right"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][points_prefix]">';
    html += '      <option value="+">+</option>';
    html += '      <option value="-">-</option>';
    html += '    </select>';
    html += '    <input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][points]" value="" size="5" /></td>';
    html += '    <td class="right"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][weight_prefix]">';
    html += '      <option value="+">+</option>';
    html += '      <option value="-">-</option>';
    html += '    </select>';
    html += '    <input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][weight]" value="" size="5" /></td>';
    html += '    <td class="left"><a onclick="$(\'#option-value-row' + option_value_row + '\').remove();" class="button">Remove</a></td>';
    html += '  </tr>';
    html += '</tbody>';
    $('#option-value' + option_row + ' tfoot').before(html);
    option_value_row++;
}
//--></script>
<script type="text/javascript"><!--
var discount_row = 0;
function addDiscount() {
    html = '<tbody id="discount-row' + discount_row + '">';
    html += '  <tr>';
    html += '    <td class="left"><select name="customerGroupId">';
    html += '      <option value="1">Default</option>';
    html += '    </select></td>';
    html += '    <td class="right"><input type="text" name="quantity" value="" size="2" /></td>';
    html += '    <td class="right"><input type="text" name="priority" value="" size="2" /></td>';
    html += '    <td class="right"><input type="text" name="price" value="" /></td>';
    html += '    <td class="left"><input type="text" name="discountDateStart" value="" class="date" /></td>';
    html += '    <td class="left"><input type="text" name="discountDateEnd" value="" class="date" /></td>';
    html += '    <td class="left"><a onclick="$(\'#discount-row' + discount_row + '\').remove();" class="button">Remove</a></td>';
    html += '  </tr>';
    html += '</tbody>';
    $('#discount tfoot').before(html);
    $('#discount-row' + discount_row + ' .date').datepicker({dateFormat:'yy-mm-dd'});
    discount_row++;
}
//--></script>
<script type="text/javascript"><!--
var special_row = 0;

function addSpecial() {
    html = '<tbody id="special-row' + special_row + '">';
    html += '  <tr>';
    html += '    <td class="left"><select name="product_special[' + special_row + '][customer_group_id]">';
    html += '      <option value="1">Default</option>';
    html += '    </select></td>';
    html += '    <td class="right"><input type="text" name="priority" value="" size="2" /></td>';
    html += '    <td class="right"><input type="text" name="price" value="" /></td>';
    html += '    <td class="left"><input type="text" name="dateStart" value="" class="date" /></td>';
    html += '    <td class="left"><input type="text" name="dateEnd" value="" class="date" /></td>';
    html += '    <td class="left"><a onclick="$(\'#special-row' + special_row + '\').remove();" class="button">Remove</a></td>';
    html += '  </tr>';
    html += '</tbody>';
    $('#special tfoot').before(html);
    $('#special-row' + special_row + ' .date').datepicker({dateFormat:'yy-mm-dd'});
    special_row++;
}
//--></script>
<script type="text/javascript"><!--
function image_upload(field, thumb) {
    $('#dialog').remove();
    $('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=72f34c3a3c5b2ea1738c960e75bbf59c&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
    $('#dialog').dialog({
        title:'Image Manager',
        close:function (event, ui) {
            if ($('#' + field).attr('value')) {
                $.ajax({
                    url:'index.php?route=common/filemanager/image&token=72f34c3a3c5b2ea1738c960e75bbf59c&image=' + encodeURIComponent($('#' + field).attr('value')),
                    dataType:'text',
                    success:function (text) {
                        $('#' + thumb).replaceWith('<img src="' + text + '" alt="" id="' + thumb + '" />');
                    }
                });
            }
        },
        bgiframe:false,
        width:800,
        height:400,
        resizable:false,
        modal:false
    });
}
;
//--></script>
<script type="text/javascript"><!--
var image_row = 0;

function addImage() {
    html = '<tbody id="image-row' + image_row + '">';
    html += '  <tr>';
    html += '    <td class="left"><div class="image"><img src="http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/image/cache/no_image-100x100.jpg" alt="" id="thumb' + image_row + '" /><input type="hidden" name="product_image[' + image_row + '][image]" value="" id="image' + image_row + '" /><br /><a onclick="image_upload(\'image' + image_row + '\', \'thumb' + image_row + '\');">Browse Files</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$(\'#thumb' + image_row + '\').attr(\'src\', \'http://localhost/opencart_v1.5.4.1/opencart_v1.5.4.1/upload/image/cache/no_image-100x100.jpg\'); $(\'#image' + image_row + '\').attr(\'value\', \'\');">Clear Image</a></div></td>';
    html += '    <td class="right"><input type="text" name="product_image[' + image_row + '][sort_order]" value="" size="2" /></td>';
    html += '    <td class="left"><a onclick="$(\'#image-row' + image_row + '\').remove();" class="button">Remove</a></td>';
    html += '  </tr>';
    html += '</tbody>';
    $('#images tfoot').before(html);
    image_row++;
}
//--></script>
<script type="text/javascript"><!--
$('.date').datepicker({dateFormat:'yy-mm-dd'});
$('.datetime').datetimepicker({
    dateFormat:'yy-mm-dd',
    timeFormat:'h:m'
});
$('.time').timepicker({timeFormat:'h:m'});
//--></script>

</div>
</body>
</html>