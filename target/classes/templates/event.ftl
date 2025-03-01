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
    <link rel="icon" type="image/ico" href="/favicon.ico">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <!-- include jQuery library -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/css/lightcase.css">
    <script type="text/javascript" src="/js/lightcase.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $('a[data-rel^=lightcase]').lightcase();
        });
    </script>
</head>
<body>
<div class="main">
    <#include "tags/header.ftl">
    <div class="container">
        <hr>
        <div class="content">
            <div class="selected-event">
                <div class="selected-event-image">
                    <img src="/files/${model.event.cover.storageFileName}">
                    <div class="selected-event-text">
                        <span class="selected-event-title">${model.event.title}</span>
                        <br>
                        <span class="selected-event-date">${model.event.date}</span>
                    </div>
                </div>
                <div class="selected-event-description">
                    <span>${model.event.description}</span>
                </div>
                <#if (model.photos)??>
                <div class="photos">
                    <#list model.photos as photo>
                        <div class="photo">
                            <a href="/files/${photo.storageFileName}" data-rel="lightcase:myCollection" data-lc-categories="myCategory1"><img src="/files/${photo.storageFileName}"></a>
                        </div>
                    </#list>
                </div>
                </#if>
            </div>
            <#--<#if (model.photos)??>-->
                <#--<div class="slides">-->
                    <#--<#list model.photos as photo>-->
                        <#--<div class="slide">-->
                            <#--<img src="/files/${photo.storageFileName}">-->
                        <#--</div>-->
                    <#--</#list>-->
                <#--</div>-->
            <#--</#if>-->
        </div>
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
</body>
</html>