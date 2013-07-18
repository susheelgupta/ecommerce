<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div id="content">
    <div class="breadcrumb">
        <a href="${request.contextPath}/common/home">Home</a> ::
        <a href="${request.contextPath}/review">Reviews</a>
    </div>

    <div class="box">
        <div class="heading">
            <h1><img src="${resource(dir: 'images', file: 'review.png')}" title="Review"
                     onclick="location = '${request.contextPath}/review'"/> Reviews</h1>

            <div class="buttons">
                <a class="button" onclick="location = '${request.contextPath}/review/create'">Insert</a>
                <a class="button" onclick="$('#form').submit();">Delete</a></div>
        </div>
    </div>

    <div class="content">
        <form id="form" enctype="multipart/form-data" method="post" action="review/delete">
            <table class="list">
                <thead>
                <tr>
                    <td width="1" style="text-align: center;">
                        <input type="checkbox"
                               onclick="$('input[name*=\'selected\']').attr('checked', this.checked);">
                    </td>
                    <td class="left">Product</td>
                    <td class="left">Author</td>
                    <td class="right">Rating</td>
                    <td class="left">Status</td>
                    <td class="left">Date Added</td>
                    <td class="right">Action</td>
                </tr>
                </thead>
            </table>
        </form>
    </div>
</div>
</body>
</html>
