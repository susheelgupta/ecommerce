var removeImages = new Array();
$(document).ready(function () {
    $('#tabs').tabs();

    $('#create').click(function () {
        setValidImageIds();
        var ok = checkDuplicateCustomerPricing();
        if (ok) {
            checkValidity();
        }
    });

    $('#update').click(function () {
        setValidImageIds();
        $('#productForm').attr('action', '/admin/product/update');
        var ok = checkDuplicateCustomerPricing();
        if (ok) {
            checkValidity();
        }
    });
    function newCustomerPrice() {
        $('.newProductPrice').each(function () {
            var newTemp = $(this).val();
            if (newTemp == "" && !$(this).hasClass('hidden')) {
                if (!$(this).hasClass('rederror')) {
                    $(this).addClass('rederror');
                }
                $(this).click(function () {
                    $(this).removeClass('rederror');
                })
            }
        });
    }

    function checkDuplicateCustomerPricing() {
        var obj = {};
        var error = false;
        var errorMessages = new Array();

        $('.checkDuplicate option:selected').each(function () {
            var index = $(this).val();
            if (index && index != null) {
                if (index == 0) {
                    if (!$(this).parent().hasClass('rederror')) {
                        $(this).parent().addClass('rederror');
                    }
                    $(this).parent().change(function () {
                        $(this).removeClass('rederror');
                    })
                    errorMessages.push('Please choose any customer');
                    error = true;
                }
                if (obj[index]) {
                    if (!$(this).parent().hasClass('rederror')) {
                        $(this).parent().addClass('rederror');
                    }
                    $(this).parent().change(function () {
                        $(this).removeClass('rederror');
                    })
                    var customerName = $(this).text();
                    errorMessages.push(customerName + 'Already added ');
                    error = true;
                } else {
                    obj[index] = index;
                }
            }
        });
        if (error) {
            var appendStr = '';
            for (var m = 0; m < errorMessages.length; m++) {
                appendStr = appendStr + errorMessages[m] + "\n";
            }
            alert(appendStr);
        }
        newCustomerPrice();
        return !error;
    }

    function setValidImageIds() {
        var arrayStr = '';
        var arrayremove = '';

        var productImages = new Array();
        $('.productImageClass').each(function () {
            productImages.push($(this).val());
        });
        arrayStr = productImages[0];
        for (var i = 1; i < productImages.length; i++) {

            arrayStr = arrayStr + ',' + productImages[i];
        }
        if (removeImages.length > 0) {
            arrayremove = removeImages[0];
            for (var i = 1; i < removeImages.length; i++) {

                arrayremove = arrayremove + ',' + removeImages[i];
            }
        }
        $('#imageIdsArray').val(arrayStr);
        $('#imageRemoveArray').val(arrayremove);
    }

    function checkValidity() {
        var flag = true;
        $('.validity').each(function () {
            var checkval = $(this).val();
            if (checkval == "") {
                flag = false;
                $(this).addClass('rederror');
                $(this).click(function () {
                    $(this).removeClass('rederror');
                });
            }
        });
        if (flag) {
            $('#productForm').submit();
        }
    }


    $('#delete').click(function () {
        confirmationdialog();
    });

    function confirmationdialog() {
        $("#dialog-confirm").dialog({
            resizable:false,
            height:140,
            modal:true,
            buttons:{
                "Ok":function () {
                    $(this).dialog("close");
                    $('#productForm').attr('action', '/admin/product/delete');
                    $('#productForm').submit();
                },
                Cancel:function () {
                    $(this).dialog("close");
                }
            }
        });
    }

    initializeForm();
    $('#btnAdd').click(function () {
        var num = $('.clonedInput').length;
        var newNum = new Number(num + 1);
        var form = $('.clonedInput:first').clone().removeAttr('id');
        form.find('input:checkbox').attr('checked', false);
        form.find('input[type=file]').val('');
        form.find('div').html('');
        form.ajaxForm({
            dataType:"json",
            success:function (json) {
                try {
                    var url = form.find('div').find('img').attr('src').split('/');
                    replacedImageId = url[5];
                    removeImages.push(replacedImageId);
                } catch (e) {
                }
                var html = ' <input type="hidden" class="productImageClass"  name="productImageId" value=' + json.id + '> ' +
                    '<img src="http://localhost/images/product' + '/' + json.id + '/' + json.image + '" width="30" height="30" />';
                form.find('#previewDiv').html(html);
            }
        });

        var imageFileInput = form.find('input[type=file]');
        imageFileInput.on('change', function () {
            form.submit();
        });


        $('.clonedInput:last').after(form);
        addCheckboxFunctionality();
        addImageRemoveButtonFunction();
    });
});
function initializeForm() {

    $('form[name=uploadImageForm]').each(function () {
        var form = $(this);
        form.find('input[name=imageRemoveButton]').removeAttr('disabled');
        form.ajaxForm({
            dataType:"json",
            success:function (json) {
                try {
                    var url = form.find('div').find('img').attr('src').split('/');
                    replacedImageId = url[5];
                    removeImages.push(replacedImageId);
                } catch (e) {
                }
                var html = '<input type="hidden" class="productImageClass"  name="productImageId" value=' + json.id + '>' +
                    '<img src="http://localhost/images/product' + '/' + json.id + '/' + json.image + '" width="30" height="30" />';
                form.find('div').html(html);
            }
        })
    });
    $("form[name=uploadImageForm]").each(function () {
        var imageFileInput = $(this).find('input[type=file]');
        imageFileInput.on('change', function () {
            $(this).submit();
        });
    });
    addCheckboxFunctionality();
    addImageRemoveButtonFunction();
    $('#buttonAdd').click(function () {
        var num = $('.hiddenElement').clone().removeClass('hiddenElement').appendTo('#copy');
        $(num).find('option:selected').val(0);
        $(num).find('.hidden').removeClass('hidden');
        addremovehandler();
    });
    addremovehandler();// to be called at initialization
    function addremovehandler() {
        $('.removePrice').click(function () {
            $(this).parentsUntil('tbody').remove();
        });
    }
}

function addImageRemoveButtonFunction() {
    $('input[name=imageRemoveButton]').click(function () {
        if ($('input[name=imageRemoveButton]').length < 2) {
            return;
        }
        var formToRemove = $(this).parent().parent().parent().parent().parent();
        var xImageUrl = formToRemove.find('div').find('img').attr('src');
        if (xImageUrl) {
            var url = xImageUrl.split('/');
            var removedImageId = url[5];
            removeImages.push(removedImageId);
        }
        formToRemove.remove();
    });
}

function addCheckboxFunctionality() {
    $('#tabs-4').find("input:checkbox").click(function () {
        var group = "input:checkbox[name='" + $(this).attr("name") + "']";
        var oldSelectedImageId = '';
        var oldImages = $('#tabs-4').find(group).not($(this));
        oldImages.each(function () {
            if ($(this).attr("checked")) {
                var temp = $(this).parent().parent().find('div').find('img').attr('src');
                if (temp) {
                    var url = temp.split('/');
                    oldSelectedImageId = url[5];
                }
            }
        });
        $('#tabs-4').find(group).not($(this)).attr("checked", false);
        $(this).attr("checked", true);
        var temp = $(this).parent().parent().find('div').find('img').attr('src');
        if (temp) {
            var newUrl = temp.split('/');
            var newSelectedImageId = newUrl[5];

        }
        $.ajax({  url:"/admin/product/updateImage",
                type:"POST",
                data:'oldImageId=' + oldSelectedImageId + '&newImageId=' + newSelectedImageId,
                dataType:'json'}, function () {
            }
        );
    });
}