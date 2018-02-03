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
            <div class="new-dish-form">
                <form action="/admin/menu/add/category" method="post" id="new-dish-form" enctype="multipart/form-data">
                    <table>
                        <col width="30%">
                        <col width="70%">
                        <tr>
                            <th>Название:</th>
                            <td><input type="text" name="categoryTitle"></td>
                        </tr>
                        <#--<tr>-->
                            <#--<th>Описание:</th>-->
                            <#--<td><textarea name="dishDescription" form="new-dish-form" rows="10"></textarea></td>-->
                        <#--</tr>-->
                        <#--<tr>-->
                            <#--<th>Категория:</th>-->
                            <#--<td>-->
                                <#--<select name="dishCategory">-->
                                    <#--<option disabled>Выберите категорию</option>-->
                                    <#--<option value="soups">Супы</option>-->
                                    <#--<option value="main">Основные блюда</option>-->
                                    <#--<option value="drinks">Напитки</option>-->
                                    <#--<option value="desserts">Дессерты</option>-->
                                    <#--<option value="burgers">Бургеры</option>-->
                                <#--</select>-->
                            <#--</td>-->
                        <#--</tr>-->
                        <#--<tr>-->
                            <#--<th>Цена:</th>-->
                            <#--<td><input type="text" name="dishPrice"></td>-->
                        <#--</tr>-->
                        <#--<tr>-->
                            <#--<th>Вес:</th>-->
                            <#--<td><input type="text" name="dishWeight"></td>-->
                        <#--</tr>-->
                        <tr>
                            <th>Фото:</th>
                            <td><input type="file" name="image" id="image" multiple title="загрузите одну или несколько фотографий">
                                <button onclick="sendImage(($('#image'))[0]['files'][0])" class="dishUploadPhoto">Загрузить фото</button>
                                <input type="hidden" id="image_hidden">
                                <div class="imagename"></div>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Добавить"></td></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <#include "tags/footer.ftl">
</div>
</body>
</html>