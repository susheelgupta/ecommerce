$(document).ready(function () {
    $('#tabs a').tabs();
    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var
            weightClassIdArray = [];
        $(':checkbox:checked[name^=weightClassId]').val(function () {
            weightClassIdArray.push(this.value);
        });
        $('#weightClassIds').val(weightClassIdArray.join());
        if (weightClassIdArray.length > 0) {
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
