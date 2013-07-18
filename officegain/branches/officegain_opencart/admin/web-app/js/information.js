$(document).ready(function () {
    $('#tabs a').tabs();

    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var informationIdArray = [];
        $(':checkbox:checked[name^=informationId]').val(function () {
            informationIdArray.push(this.value);
        });
        $('#informationIds').val(informationIdArray.join());
        if (informationIdArray.length > 0) {
            var check = confirm("Are you sure to delete Information?");
            if (check) {
                $('#deleteForm').submit();
            }
        } else {
            alert("Please select an item");
        }
    }
});
