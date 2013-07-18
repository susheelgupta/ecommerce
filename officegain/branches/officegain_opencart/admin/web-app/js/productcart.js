$(document).ready(function () {
    $('#tabs a').tabs();

    $('#delete').click(function () {
        submitDeleteForm();
    });
    $('#copy').click(function () {
        copyItem();
    });

    function submitDeleteForm() {
        var productIdArray = [];
        $(':checkbox:checked[name^=productId]').val(function () {
            productIdArray.push(this.value);
        });
        $('#productIds').val(productIdArray.join());
        if (productIdArray.length > 0) {
            var check = confirm("Are you sure to delete products?");
            if (check) {
                $('#deleteForm').attr('action', '/admin/product/delete');
                $('#deleteForm').submit();
            }
        } else {
            alert("Please select an item");
        }
    }

    function copyItem() {
        var productIdArray = [];
        $(':checkbox:checked[name^=productId]').val(function () {
            productIdArray.push(this.value);
        });
        $('#productIds').val(productIdArray.join());
        if (productIdArray.length > 0) {
            var check = confirm("Are you sure to copy products?");
            if (check) {
                $('#deleteForm').attr('action', '/admin/product/show');
                $('#deleteForm').submit();
            }
        } else {
            alert("Please select an item");
        }
    }
});
