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
            <span class="upcEvents">Предстоящие события</span>
            <div class="events">
                <#if (model.upcomingEvents)??>
                <#list model.upcomingEvents as upcEvent>
                    <div class="event">
                        <#if (model.user)?? && model.user.role == "ADMIN">
                            <div class="manage">
                                <a href="/admin/events/delete/${upcEvent.id}"><img src="/images/delete.png" class="delete"></a>
                                <a href="/admin/events/edit/${upcEvent.id}"><img src="/images/edit.png" class="edit"></a>
                            </div>
                        </#if>
                        <a href="/events/${upcEvent.id}">
                            <img src="/files/${upcEvent.cover.storageFileName}">
                            <div class="event-text">
                                <span class="event-title">${upcEvent.title}</span>
                                <span class="event-date">${upcEvent.date}</span>
                        </a>
                                <button id="show" class="reserve-btn">Забронировать столик на это мероприятие</button>
                            </div>
                    </div>
                    <#--<dialog>-->
                        <#--<form action="/submit/application" method="post">-->
                            <#--<table>-->
                                <#--<col width="30%">-->
                                <#--<col width="70%">-->
                                <#--<tr>-->
                                    <#--<td><label for="name">Ваше имя<sup>*</sup></label></td>-->
                                    <#--<td><input type="text" name="personName" id="name"></td>-->
                                <#--</tr>-->
                                <#--<tr>-->
                                    <#--<td><label for="phone">Ваш телефон<sup>*</sup></label></td>-->
                                    <#--<td><input type="tel" name="personPhone" id="phone"></td>-->
                                <#--</tr>-->
                                <#--<tr>-->
                                    <#--<td><label for="extraInfo">Доп. информация</label></td>-->
                                    <#--<td><input type="text" name="extraInfo" id="extraInfo"></td>-->
                                <#--</tr>-->
                                <#--<tr>-->
                                    <#--<td></td>-->
                                    <#--<td><input type="submit" value="Отправить заявку" id="close"></td>-->
                                <#--</tr>-->
                            <#--</table>-->
                        <#--</form>-->
                        <#--<button id="close" style="margin-bottom: 0; margin-right: 0">Закрыть</button>-->
                    <#--</dialog>-->
                </#list>
                </#if>
            </div>
            <span class="pastEvents" style="margin-top: 10px; margin-bottom: 10px">Прошедшие события</span>
            <div class="events">
                <#if (model.pastEvents)??>
                <#list model.pastEvents as pastEvent>
                    <div class="event">
                        <a href="/events/${pastEvent.id}">
                            <img src="/files/${pastEvent.cover.storageFileName}">
                            <div class="event-text">
                                <span class="event-title">${pastEvent.title}</span>
                                <span class="event-date">${pastEvent.date}</span>
                            </div>
                        </a>
                    </div>
                </#list>
                </#if>
            </div>
        </div>
        <#if (model.user)??>
            <#if model.user.role == "ADMIN">
                <div class="admin-panel">
                    <div class="add">
                        <ul>
                            <li><a href="/admin/events/add">Добавить мероприятие</a></li>
                        </ul>
                    </div>
                </div>
            </#if>
        </#if>
    </div>
    <#include "tags/footer.ftl">
</div>
<script type="text/javascript">
    var dialog = document.querySelector('dialog');
    document.querySelector('#show').onclick = function() {
        dialog.show(); // открыть диалоговое окно
    };

    document.querySelector('#close').onclick = function() {
        dialog.close(); // закрыть диалоговое окно
    };</script>
</body>
</html>