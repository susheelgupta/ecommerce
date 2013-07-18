$(document).ready(function () {
    $('#tabs a').tabs();
    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var
            countryIdArray = [];
        $(':checkbox:checked[name^=countryId]').val(function () {
            countryIdArray.push(this.value);
        });
        $('#countryIds').val(countryIdArray.join());
        if (countryIdArray.length > 0) {
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
