$(document).ready(function () {
    $('#tabs a').tabs();

    $('#delete').click(function () {
        submitDeleteForm();
    });
    function submitDeleteForm() {
        var customerIpBlacklistArray = [];
        $(':checkbox:checked[name^=selected]').val(function () {
            customerIpBlacklistArray.push(this.value);
        });
        $('#Ids').val(customerIpBlacklistArray.join());
        if (customerIpBlacklistArray.length > 0) {
            var check = confirm("Are you sure to delete CustomerIpBlackList?");
            if (check) {
                $('#deleteForm').submit();
            }
        } else {
            alert("Please select an item");
        }
    }
});
