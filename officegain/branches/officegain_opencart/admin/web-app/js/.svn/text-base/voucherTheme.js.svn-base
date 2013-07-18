$(document).ready(function () {
    $('#tabs a').tabs();

    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var voucherThemeIdArray = [];
        $(':checkbox:checked[name^=voucherThemeId]').val(function () {
            voucherThemeIdArray.push(this.value);
        });
        $('#voucherThemeIds').val(voucherThemeIdArray.join());
        if (voucherThemeIdArray.length > 0) {
            var check = confirm("Are you sure to delete attributeGroup?");
            if (check) {
                $('#deleteForm').submit();
            }
        } else {
            alert("Please select an item");
        }
    }
});
