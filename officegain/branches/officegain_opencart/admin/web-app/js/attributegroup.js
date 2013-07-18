$(document).ready(function () {
    $('#tabs a').tabs();

    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var attributeGroupIdArray = [];
        $(':checkbox:checked[name^=attributeGroupId]').val(function () {
            attributeGroupIdArray.push(this.value);
        });
        $('#attributeGroupIds').val(attributeGroupIdArray.join());
        if (attributeGroupIdArray.length > 0) {
            var check = confirm("Are you sure to delete attributeGroup?");
            if (check) {
                $('#deleteForm').submit();
            }
        } else {
            alert("Please select an item");
        }
    }
});
