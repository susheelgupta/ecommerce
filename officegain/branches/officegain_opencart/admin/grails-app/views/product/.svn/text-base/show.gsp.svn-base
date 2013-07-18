<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <title>Products</title>
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
    <a href="${request.contextPath}/Product">Product</a>
</div>

<div class="box">
<div class="heading">
    <h1><img alt="" src="${resource(dir: 'images', file: 'product.png')}"> Products</h1>

    <div class="buttons"><a class="button" onclick="$('#form').submit();">Save</a>
        <a class="button" onclick="location = '${request.contextPath}/product';">Cancel</a>
    </div>
</div>

<div class="content">
<div class="htabs" id="tabs">
    <a href="#tab-general" style="display: inline;" class="selected">General</a>
    <a href="#tab-data" style="display: inline;">Data</a>
    <a href="#tab-links" style="display: inline;">Links</a>
    <a href="#tab-attribute" style="display: inline;">Attribute</a>
    <a href="#tab-option" style="display: inline;">Option</a>
    <a href="#tab-discount" style="display: inline;">Discount</a>
    <a href="#tab-special" style="display: inline;">Special</a>
    <a href="#tab-image" style="display: inline;">Image</a>
    <a href="#tab-reward" style="display: inline;">Reward Points</a>
    <a href="#tab-design" style="display: inline;">Design</a>
</div>

<form id="showForm" enctype="multipart/form-data" method="post" action="">
<g:hiddenField name="productIds" id="productIds" value=""/>
<div id="tab-general" style="display: block;">
    <div class="htabs" id="languages">
        <a href="#language1" style="display: inline;" class="selected">
            <img title="English" src="${resource(dir: 'images', file: 'gb.png')}"> English</a>
    </div>

    <div id="language1" style="display: block;">
        <table class="form">
            <tbody>
            <tr>
                <td><span class="required">*</span> Product Name:</td>
                <td><input type="text" value="" size="100" name="name"></td>
            </tr>
            <tr>
                <td>Meta Tag Description:</td>
                <td><textarea rows="5" cols="40" name="metaDescription"></textarea></td>
            </tr>
            <tr>
                <td>Meta Tag Keywords:</td>
                <td><textarea rows="5" cols="40" name="metaKeywords"></textarea></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><textarea id="description1" name="description"></textarea></td>
            </tr>
            <tr>
                <td>Product Tags:<br><span class="help">comma separated</span></td>
                <td><input type="text" size="80" value="" name="tag"></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<div id="tab-data" style="display: none;">
    <table class="form">
        <tbody>
        <tr>
            <td><span class="required">*</span> Model:</td>
            <td><input type="text" value="" name="model"></td>
        </tr>
        <tr>
            <td>SKU:<br><span class="help">Stock Keeping Unit</span></td>
            <td><input type="text" value="" name="sku"></td>
        </tr>
        <tr>
            <td>UPC:<br><span class="help">Universal Product Code</span></td>
            <td><input type="text" value="" name="upc"></td>
        </tr>
        <tr>
            <td>EAN:<br><span class="help">European Article Number</span></td>
            <td><input type="text" value="" name="ean"></td>
        </tr>
        <tr>
            <td>JAN:<br><span class="help">Japanese Article Number</span></td>
            <td><input type="text" value="" name="jan"></td>
        </tr>
        <tr>
            <td>ISBN:<br><span class="help">International Standard Book Number</span></td>
            <td><input type="text" value="" name="isbn"></td>
        </tr>
        <tr>
            <td>MPN:<br><span class="help">Manufacturer Part Number</span></td>
            <td><input type="text" value="" name="mpn"></td>
        </tr>
        <tr>
            <td>Location:</td>
            <td><input type="text" value="" name="location"></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><input type="text" value="" name="price"></td>
        </tr>
        <tr>
            <td>Tax Class:</td>
            <td><select name="tax_class_id">
                <option value="0">--- None ---</option>
                <option value="9">Taxable Goods</option>
                <option value="10">Downloadable Products</option>
            </select></td>
        </tr>
        <tr>
            <td>Quantity:</td>
            <td><input type="text" size="2" value="1" name="quantity"></td>
        </tr>
        <tr>
            <td>Minimum Quantity:<br><span class="help">Force a minimum ordered amount</span></td>
            <td><input type="text" size="2" value="1" name="minimum"></td>
        </tr>
        <tr>
            <td>Subtract Stock:</td>
            <td><select name="subtract">
                <option selected="selected" value="1">Yes</option>
                <option value="0">No</option>
            </select></td>
        </tr>
        <tr>
            <td>Out Of Stock Status:<br><span class="help">Status shown when a product is out of stock</span></td>
            <td><select name="stock_status_id">
                <option value="6">2 - 3 Days</option>
                <option value="7">In Stock</option>
                <option selected="selected" value="5">Out Of Stock</option>
                <option value="8">Pre-Order</option>
            </select></td>
        </tr>
        <tr>
            <td>Requires Shipping:</td>
            <td><input type="radio" checked="checked" value="1" name="shipping">
                Yes <input type="radio" value="0" name="shipping"> No</td>
        </tr>
        <tr>
            <td>SEO Keyword:<br><span
                    class="help">Do not use spaces instead replace spaces with - and make sure the keyword is globally unique.</span>
            </td>
            <td><input type="text" value="" name="keyword"></td>
        </tr>
        <tr>
            <td>Image:</td>
            <td><div class="image"><img id="thumb" alt=""
                                        src="${resource(dir: 'images', file: 'no_image-100x100.jpg')}"><br>
                <input type="hidden" id="image" value="" name="image">
                <a onclick="image_upload('image', 'thumb');">Browse Files</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
                        onclick="$('#thumb').attr('src', '${resource(dir: 'images', file: 'no_image-100x100.jpg')}');
                        $('#image').attr('value', '');">Clear Image</a></div></td>
        </tr>
        <tr>
            <td>Date Available:</td>
            <td><input type="text" name="date_available" value="2012-10-29" size="12" class="date"/></td>
        </tr>
        <tr>
            <td>Dimensions (L x W x H):</td>
            <td><input type="text" size="4" value="" name="length">
                <input type="text" size="4" value="" name="width">
                <input type="text" size="4" value="" name="height"></td>
        </tr>
        <tr>
            <td>Length Class:</td>
            <td><select name="length_class_id">
                <option selected="selected" value="1">Centimeter</option>
                <option value="2">Millimeter</option>
                <option value="3">Inch</option>
            </select></td>
        </tr>
        <tr>
            <td>Weight:</td>
            <td><input type="text" value="" name="weight"></td>
        </tr>
        <tr>
            <td>Weight Class:</td>
            <td><select name="weight_class_id">
                <option selected="selected" value="1">Kilogram</option>
                <option value="2">Gram</option>
                <option value="5">Pound</option>
                <option value="6">Ounce</option>
            </select></td>
        </tr>
        <tr>
            <td>Status:</td>
            <td><select name="status">
                <option selected="selected" value="1">Enabled</option>
                <option value="0">Disabled</option>
            </select></td>
        </tr>
        <tr>
            <td>Sort Order:</td>
            <td><input type="text" size="2" value="1" name="sort_order"></td>
        </tr>
        </tbody></table>
</div>

<div id="tab-links" style="display: none;">
    <table class="form">
        <tbody><tr>
            <td>Manufacturer:</td>
            <td><select name="manufacturer_id">
                <option selected="selected" value="0">--- None ---</option>
                <option value="8">Apple</option>
                <option value="9">Canon</option>
                <option value="5">HTC</option>
                <option value="7">Hewlett-Packard</option>
                <option value="6">Palm</option>
                <option value="10">Sony</option>
            </select></td>
        </tr>
        <tr>
            <td>Categories:</td>
            <a onclick="$(this).parent().find(':checkbox').attr('checked', true);">Select All</a> / <a
                onclick="$(this).parent().find(':checkbox').attr('checked', false);">Unselect All</a></td>
        </tr>
        <tr>
            <td>Stores:</td>
            <td><div class="scrollbox">
                <div class="even">
                    <input type="checkbox" checked="checked" value="0" name="product_store[]">
                    Default</div>
            </div></td>
        </tr>
        <tr>
            <td>Downloads:</td>
            <td><div class="scrollbox">
            </div></td>
        </tr>
        <tr>
            <td>Related Products:<br><span class="help">(Autocomplete)</span></td>
            <td><input type="text" value="" name="related" class="ui-autocomplete-input" autocomplete="off"
                       role="textbox" aria-autocomplete="list" aria-haspopup="true"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><div class="scrollbox" id="product-related">
            </div></td>
        </tr>
        </tbody></table>
</div>

<div id="tab-attribute" style="display: none;">
    <table class="list" id="attribute">
        <thead>
        <tr>
            <td class="left">Attribute:</td>
            <td class="left">Text:</td>
            <td></td>
        </tr>
        </thead>
        <tfoot>
        <tr>
            <td colspan="2"></td>
            <td class="left"><a class="button" onclick="addAttribute(); " id="attribte">Add Attribute</a></td>
        </tr>
        </tfoot>
    </table>
</div>

<div id="tab-option" style="display: none;">
    <div class="vtabs" id="vtab-option">
        <span id="option-add">
            <input style="width: 130px;" value="" name="option" class="ui-autocomplete-input" autocomplete="off"
                   role="textbox" aria-autocomplete="list" aria-haspopup="true">
            &nbsp;<img title="Add Option" alt="Add Option" src="${resource(dir: 'images', file: 'add.png')}"></span>
    </div>
</div>

<div id="tab-discount" style="display: none;">
    <table class="list" id="discount">
        <thead>
        <tr>
            <td class="left">Customer Group:</td>
            <td class="right">Quantity:</td>
            <td class="right">Priority:</td>
            <td class="right">Price:</td>
            <td class="left">Date Start:</td>
            <td class="left">Date End:</td>
            <td></td>
        </tr>
        </thead>
        <tfoot>
        <tr>
            <td colspan="6"></td>
            <td class="left"><a class="button" onclick="addDiscount();">Add Discount</a></td>
        </tr>
        </tfoot>
    </table>
</div>

<div id="tab-special" style="display: none;">
    <table class="list" id="special">
        <thead>
        <tr>
            <td class="left">Customer Group:</td>
            <td class="right">Priority:</td>
            <td class="right">Price:</td>
            <td class="left">Date Start:</td>
            <td class="left">Date End:</td>
            <td></td>
        </tr>
        </thead>
        <tfoot>
        <tr>
            <td colspan="5"></td>
            <td class="left"><a class="button" onclick="addSpecial();">Add Special</a></td>

        </tr>
        </tfoot>
    </table>
</div>

<div id="tab-image" style="display: none;">
    <table class="list" id="images">
        <thead>
        <tr>
            <td class="left">Image:</td>
            <td class="right">Sort Order:</td>
            <td></td>
        </tr>
        </thead>
        <tfoot>
        <tr>
            <td colspan="2"></td>
            <td class="left"><a class="button" onclick="addImage();">Add Image</a></td>
        </tr>
        </tfoot>
    </table>
</div>

<div id="tab-reward" style="display: none;">
    <table class="form">
        <tbody><tr>
            <td>Points:<br><span
                    class="help">Number of points needed to buy this item. If you don't want this product to be purchased with points leave as 0.</span>
            </td>
            <td><input type="text" value="" name="points"></td>
        </tr>
        </tbody></table>
    <table class="list">
        <thead>
        <tr>
            <td class="left">Customer Group:</td>
            <td class="right">Reward Points:</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td class="left">Default</td>
            <td class="right"><input type="text" value="" name="product_reward[1][points]"></td>
        </tr>
        </tbody>
    </table>
</div>

<div id="tab-design" style="display: none;">
    <table class="list">
        <thead>
        <tr>
            <td class="left">Stores:</td>
            <td class="left">Layout Override:</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td class="left">Default</td>
            <td class="left"><select name="product_layout[0][layout_id]">
                <option value=""></option>
                <option value="6">Account</option>
                <option value="10">Affiliate</option>
                <option value="3">Category</option>
                <option value="7">Checkout</option>
                <option value="8">Contact</option>
                <option value="4">Default</option>
                <option value="1">Home</option>
                <option value="11">Information</option>
                <option value="5">Manufacturer</option>
                <option value="2">Product</option>
                <option value="9">Sitemap</option>
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