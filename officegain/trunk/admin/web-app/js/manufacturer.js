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
            $('#manufacturerForm').submit();
        }
    });

    $('#update').click(function () {
        $('#manufacturerForm').attr('action', '/admin/manufacturer/update');
        $('#manufacturerForm').submit();
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
                    $('#manufacturerForm').attr('action', '/admin/manufacturer/delete');
                    $('#manufacturerForm').submit();
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
            var html = '<img src="http://localhost/images/manufacturer' + '/' + json.id + '/' + json.image + '" width="30" height="30" />';
            $('#previewDiv').html(html);
            $('#imageId').val(json.id);
        }
    });

    $('#imageForm').on('change', function () {
        $('#imageForm').submit();
    });
});