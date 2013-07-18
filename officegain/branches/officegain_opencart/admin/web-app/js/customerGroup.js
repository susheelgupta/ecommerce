$(document).ready(function () {
    $('#tabs a').tabs();
    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var
            customerGroupIdArray = [];
        $(':checkbox:checked[name^=customerGroupId]').val(function () {
            customerGroupIdArray.push(this.value);
        });
        $('#customerGroupIds').val(customerGroupIdArray.join());
        if (customerGroupIdArray.length > 0) {
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
