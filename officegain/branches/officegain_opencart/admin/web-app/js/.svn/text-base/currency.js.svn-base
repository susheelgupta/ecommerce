$(document).ready(function () {
    $('#tabs a').tabs();
    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var
            currencyIdArray = [];
        $(':checkbox:checked[name^=currencyId]').val(function () {
            currencyIdArray.push(this.value);
        });
        $('#currencyIds').val(currencyIdArray.join());
        if (currencyIdArray.length > 0) {
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
