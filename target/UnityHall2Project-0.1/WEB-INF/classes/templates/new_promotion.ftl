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
            <div class="prom-form">
                <form action="/admin/promotions/add" method="post" id="prom-form" enctype="multipart/form-data">
                    <table>
                        <tr>
                            <th>Название:</th>
                            <td><input type="text" name="promName"></td>
                        </tr>
                        <tr>
                            <th>Описание:</th>
                            <td><textarea name="promDesc" form="prom-form" rows="10"></textarea></td>
                        </tr>
                        <tr>
                            <th>Начало (часы):</th>
                            <td>
                                <select name="startHour">
                                    <option value="00:00">00:00</option>
                                    <option value="01:00">01:00</option>
                                    <option value="02:00">02:00</option>
                                    <option value="03:00">03:00</option>
                                    <option value="04:00">04:00</option>
                                    <option value="05:00">05:00</option>
                                    <option value="06:00">06:00</option>
                                    <option value="07:00">07:00</option>
                                    <option value="08:00">08:00</option>
                                    <option value="09:00">09:00</option>
                                    <option value="10:00">10:00</option>
                                    <option value="11:00">11:00</option>
                                    <option value="12:00">12:00</option>
                                    <option value="13:00">13:00</option>
                                    <option value="14:00">14:00</option>
                                    <option value="15:00">15:00</option>
                                    <option value="16:00">16:00</option>
                                    <option value="17:00">17:00</option>
                                    <option value="18:00">18:00</option>
                                    <option value="19:00">19:00</option>
                                    <option value="20:00">20:00</option>
                                    <option value="21:00">21:00</option>
                                    <option value="22:00">22:00</option>
                                    <option value="23:00">23:00</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>Конец (часы):</th>
                            <td><select name="endHour">
                                <option value="00:00">00:00</option>
                                <option value="01:00">01:00</option>
                                <option value="02:00">02:00</option>
                                <option value="03:00">03:00</option>
                                <option value="04:00">04:00</option>
                                <option value="05:00">05:00</option>
                                <option value="06:00">06:00</option>
                                <option value="07:00">07:00</option>
                                <option value="08:00">08:00</option>
                                <option value="09:00">09:00</option>
                                <option value="10:00">10:00</option>
                                <option value="11:00">11:00</option>
                                <option value="12:00">12:00</option>
                                <option value="13:00">13:00</option>
                                <option value="14:00">14:00</option>
                                <option value="15:00">15:00</option>
                                <option value="16:00">16:00</option>
                                <option value="17:00">17:00</option>
                                <option value="18:00">18:00</option>
                                <option value="19:00">19:00</option>
                                <option value="20:00">20:00</option>
                                <option value="21:00">21:00</option>
                                <option value="22:00">22:00</option>
                                <option value="23:00">23:00</option>
                            </select></td>
                        </tr>
                        <tr>
                            <th>Дни:</th>
                            <td><input type="text" name="promDays"></td>
                        </tr>
                        <tr>
                            <th>Фото:</th>
                            <td><input type="file" name="image" id="image" multiple title="загрузите одну или несколько фотографий">
                                <button onclick="sendImage(($('#image'))[0]['files'][0])" class="dishUploadPhoto">Загрузить фото</button>
                                <input type="hidden" id="image_hidden">
                                <div class="imagename"></div></td>
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