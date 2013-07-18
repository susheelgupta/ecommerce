$(document).ready(function () {
    $('#tabs a').tabs();
    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var
            categoryIdArray = [];
        $(':checkbox:checked[name^=categoryId]').val(function () {
            categoryIdArray.push(this.value);
        });
        $('#categoryIds').val(categoryIdArray.join());
        if (categoryIdArray.length > 0) {
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
