$(document).ready(function () {
    $('#tabs a').tabs();
    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var
            downloadIdArray = [];
        $(':checkbox:checked[name^=downloadId]').val(function () {
            downloadIdArray.push(this.value);
        });
        $('#downloadIds').val(downloadIdArray.join());
        if (downloadIdArray.length > 0) {
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
