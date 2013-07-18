$(document).ready(function () {
    $('#tabs a').tabs();
    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var
            optionIdArray = [];
        $(':checkbox:checked[name^=optionId]').val(function () {
            optionIdArray.push(this.value);
        });
        $('#optionIds').val(optionIdArray.join());
        if (optionIdArray.length > 0) {
            var check = confirm("Delete/Uninstall cannot be undone! Are you sure you want to do this?");
            if (check) {
                $('#form').submit();
            }
        }
        else {
            alert("Please select an item");
        }
    }
});
