$(document).ready(function () {
    $('#tabs a').tabs();
    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var
            lengthClassIdArray = [];
        $(':checkbox:checked[name^=lengthClassId]').val(function () {
            lengthClassIdArray.push(this.value);
        });
        $('#lengthClassIds').val(lengthClassIdArray.join());
        if (lengthClassIdArray.length > 0) {
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
