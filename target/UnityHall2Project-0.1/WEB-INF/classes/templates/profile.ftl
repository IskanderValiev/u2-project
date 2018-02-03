<#ftl encoding='UTF-8'>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="author" content="Iskander Valiev">
    <title>Unity Hall 2</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <link rel="icon" type="image/ico" href="/favicon.ico">
    <script>
        function sendImage(image) {
            var formData = new FormData();
            formData.append("image", image);
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "/admin/menu/add/dish", true);
            xhr.send(formData);
        }
    </script>
</head>
<body>
<div class="main">
<#include "tags/header.ftl">
    <div class="container">
        <hr>
        <div class="content">
            <div class="profile">
                <table class="profile-info">
                    <tr>
                        <td><label>${model.user.name} ${model.user.surname}</label></td>
                    </tr>
                    <tr style="height: 5px">
                        <td style="height: 2px"><hr></td>
                        <td><div class="edit">
                            <a href="/user/editprofile" style="margin-bottom: 0">edit</a>
                        </div></td>
                    </tr>
                    <tr>
                        <td><label>E-mail: ${model.user.email}</label></td>
                    </tr>
                    <tr>
                        <td><label>Phone: ${model.user.phone}</label></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
<#include "tags/footer.ftl">
</div>
</body>
</html>
</body>
</html>