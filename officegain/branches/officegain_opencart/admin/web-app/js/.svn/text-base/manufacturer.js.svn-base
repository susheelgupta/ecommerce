$(document).ready(function () {
    $('#tabs a').tabs();
    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var
            manufacturerIdArray = [];
        $(':checkbox:checked[name^=manufacturerId]').val(function () {
            manufacturerIdArray.push(this.value);
        });
        $('#manufacturerIds').val(manufacturerIdArray.join());
        if (manufacturerIdArray.length > 0) {
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
