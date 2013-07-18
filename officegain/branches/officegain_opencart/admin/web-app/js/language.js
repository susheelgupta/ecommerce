$(document).ready(function () {
    $('#tabs a').tabs();
    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var
            languageIdArray = [];
        $(':checkbox:checked[name^=languageId]').val(function () {
            languageIdArray.push(this.value);
        });
        $('#languageIds').val(languageIdArray.join());
        if (languageIdArray.length > 0) {
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
