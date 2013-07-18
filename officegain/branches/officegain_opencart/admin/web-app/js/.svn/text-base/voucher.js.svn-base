$(document).ready(function () {
    $('#tabs a').tabs();
    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var
            voucherIdArray = [];
        $(':checkbox:checked[name^=voucherId]').val(function () {
            voucherIdArray.push(this.value);
        });
        $('#voucherIds').val(voucherIdArray.join());
        if (voucherIdArray.length > 0) {
            var check = confirm("Delete/Uninstall cannot be undone! Are you sure you want to do this?");
            if (check) {
                $('#deleteForm').submit();
            }
        }
        else {
            alert("Please select an item");
        }
    }
});
