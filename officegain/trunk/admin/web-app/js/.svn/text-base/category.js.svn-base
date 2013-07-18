$(document).ready(function () {
    $('#tabs').tabs();
    $('#create').click(function () {
        var check = $('#name').val();
        if (check == "") {
            $('#name').addClass('rederror');
            $('#name').click((function () {
                $('#name').removeClass('rederror');
            }));
        } else {
            $('#categoryForm').submit()
        }
    });
    $('#update').click(function () {
        $('#categoryForm').attr('action', '/admin/category/update');
        $('#categoryForm').submit();
    });
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
                    $('#categoryForm').attr('action', '/admin/category/delete');
                    $('#categoryForm').submit();
                },
                Cancel:function () {
                    $(this).dialog("close");
                }
            }
        });
    }

    $('#imageForm').ajaxForm({
        dataType:"json",
        success:function (json) {
            var html = '<img src="http://localhost/images/category' + '/' + json.id + '/' + json.image + '" width="30" height="30" />';
            $('#imageDiv').html(html);
            $('#imageId').val(json.id);
        }
    });
    $('#imageForm').on('change', function () {
        $('#imageForm').submit();
    });
});
