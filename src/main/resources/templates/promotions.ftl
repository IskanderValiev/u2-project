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
            <div class="promotions">
                <#list model.promotions as promotion>
                    <div class="promotion">
                        <div class="promotion-image">
                            <img src="/files/${promotion.image.storageFileName}">
                        </div>
                        <div class="promotion-info">
                            <div class="promotion-name">
                                <span>${promotion.name}</span>
                            </div>
                            <div class="promotion-description">
                                <span>${promotion.description}</span>
                            </div>
                            <div class="promotion-time">
                                <span>Часы: ${promotion.startHour}-${promotion.endHour}</span>
                            </div>
                            <div class="promotion-days">
                                <span>Дни: ${promotion.days}</span>
                            </div>
                        </div>
                    </div>
                </#list>
            </div>
        </div>
        <#if (model.user)??>
            <#if model.user.role == "ADMIN">
                <div class="admin-panel">
                    <div class="add">
                        <ul>
                            <li><a href="/admin/promotions/add">Добавить акцию</a></li>
                        </ul>
                    </div>
                </div>
            </#if>
        </#if>
    </div>
<#include "tags/footer.ftl">
</div>
</body>
</html>