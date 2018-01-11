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
    <div class="header-container" style="width: 100%; margin: auto">
        <div class="container">
            <div class="header">
                <div class="unity-logo">
                    <a href="/"><img src="/images/unity_logo.png"></a>
                </div>
                <div class="menu">
                    <ul>
                        <li><a href="/menu">Меню</a></li>
                        <li><a href="/promotions">Акции</a></li>
                        <li><a href="/events">Мероприятия</a></li>
                        <li><a href="/contacts">Контакты</a></li>
                    </ul>
                </div>
                <#if (model.user)??>
                <div class="auth-reg">
                    <ul>
                        <li>${model.user.name}
                            <ul>
                                <li><a href="/profile">Профиль</a></li>
                                <li><a href="#">Мои заявки</a></li>
                                <li><a href="/exit">Выход</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <#else>
                    <div class="entry">
                        <ul>
                            <li><a href="/authorization/enter">Войти</a></li>
                        </ul>
                    </div>
                </#if>
                <div class="social-nets">
                    <a href="https://vk.com/unityhome"><img src="/images/vk_logo.png"></a>
                    <a href="https://instagram.com"><img src="/images/instagram_logo.png"></a>
                    <br>
                    <span class="phone" style="font-size: 16px">8 (843) 500-222</span>
                </div>
                <div style="clear: both"></div>
            </div>
        </div>
    </div>
    <div class="background2">
        <img src="/images/back2.png">
    </div>
    <div class="background">
        <img src="/images/back1.png">
    </div>
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
    <div class="footer">
        <div class="information">
            <div class="unity-logo-footer">
                <img src="/images/HHHylOAwubk.jpg">
            </div>
            <div class="unity-info">
                <ul>
                    <li style="font-size: 18px">Unity hall 2</li>
                    <li><a href="">О нас</a></li>
                    <li><a href="">Вакансии</a></li>
                    <li><a href="/contacts">Контакты</a></li>
                    <li><a href="https://vk.com/unityhome">ВК</a></li>
                    <li><a href="">Instagram</a></li>
                </ul>
            </div>
            <div class="clients">
                <ul>
                    <li style="font-size: 18px">Клиентам</li>
                    <li><a href="">Бронь столов онлайн</a></li>
                    <li><a href="/menu">Меню</a></li>
                    <li><a href="/events">Мероприятия</a></li>
                    <li><a href="/promotions">Акции</a></li>
                    <li><a href="/authorization/enter">Регистрация</a></li>
                    <li><a href="/authorization/enter">Вход</a></li>
                </ul>
            </div>
            <#if (model.user)?? && model.user.role == "ADMIN">
                <div class="admin">
                    <ul>
                        <li style="font-size: 18px">Сотрудникам</li>
                        <li><a href="/admin/applications">Заявки на бронирование</a></li>
                        <li><a href="/admin/notifications">Оповещения на почту</a></li>
                    </ul>
                </div>
            </#if>
            <div class="unity-contacts">
                <div class="unity-phone-footer">
                    <span>8 (843) 500-222</span>
                </div>
                <div class="unity-address-footer">
                    <span>Чистопольская, 3</span>
                </div>
            </div>
            <div class="copyright">
                <span>© Unity hall 2, 2017</span>
            </div>
        </div>
    </div>
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