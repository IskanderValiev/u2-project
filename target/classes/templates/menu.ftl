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
        <#--<script type="text/javascript"-->
                <#--src="webjars/jquery/2.2.4/jquery.min.js"></script>-->
        <#--<script type="text/javascript" language="JavaScript">-->
            <#--$(document).ready(function () {-->
                <#--$("#dishForm").submit(function (event) {-->
                    <#--event.preventDefault();-->

                    <#--ajaxRequest();-->
                <#--})-->
            <#--});-->

            <#--function ajaxRequest() {-->
                <#--var category = {};-->
                <#--category["category"] = $("#dishCategory").val();-->
                <#--$.ajax({-->
                    <#--type: "GET",-->
                    <#--contentType: "application/json",-->
                    <#--url: "/menu/category",-->
                    <#--data:JSON.stringify(category),-->
                    <#--success: function (data) {-->
                        <#--var json = "<h3>Dishes</h3><pre>" + JSON.stringify(data, null, 4) + "</pre>";-->
                        <#--$("#dishes").html(json);-->
                        <#--console.log("SUCCESS : ", data);-->
                    <#--},-->
                    <#--error: function (e) {-->

                        <#--var json = "<h4>Ajax Response</h4><pre>"-->
                                <#--+ e.responseText + "</pre>";-->
                        <#--$('#feedback').html(json);-->

                        <#--console.log("ERROR : ", e);-->
                    <#--}-->
                <#--})-->
                <#---->
            <#--}-->
        <#--</script>-->
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
                    <div class="auth-reg">
                        <ul>
                        <#if (model.user??)>
                            <li>${model.user.name}
                                <ul>
                                    <li><a href="#">Профиль</a></li>
                                    <li><a href="#">Мои заявки</a></li>
                                    <li><a href="#">Выход</a></li>
                                </ul>
                            </li>
                        <#else>
                            <li><a href="/authorization/enter">Войти</a></li>
                        </#if>
                        </ul>
                    </div>
                    <div class="social-nets">
                        <a href="https://vk.com/unityhome"><img src="/images/vk_logo.png"></a>
                        <a href="https://instagram.com"><img src="/images/instagram_logo.png"></a>
                        <br>
                        <span style="font-size: 16px">8 (843) 500-222</span>
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
            <#--<ul class="category">-->
                <#--<li><a href="/menu/soups">Супы</a></li>-->
                <#--<li><a href="/menu/desserts">Дессерты</a></li>-->
                <#--<li><a href="/menu/snacks">Закуски</a></li>-->
                <#--<li><a href="/menu/burgers">Бургеры</a></li>-->
                <#--<li><a href="/menu/main">Основные блюда</a></li>-->
                <#--<li><a href="/menu/drinks">Напитки</a></li>-->
            <#--</ul>-->
                <#if (model.dishes)??>
                    <div class="dishes" id="dishes">
                        <#list model.dishes.image as image>
                            <div class="dish">
                                <div class="dishImage">
                                    <img src="/files/${image.storageFileName}">
                                </div>
                                <#--<div class="dishInfo">-->
                                    <#--<div class="dishName">-->
                                        <#--<span>${dish.name}</span>-->
                                    <#--</div>-->
                                    <#--<hr style="height: 1px; background-color: white;">-->
                                    <#--<div class="dishDescription">-->
                                        <#--<span>${dish.description}</span>-->
                                    <#--</div>-->
                                    <#--<div class="dishPrice">-->
                                        <#--<span>${dish.price}₽</span>-->
                                    <#--</div>-->
                                    <#--<div class="dishWeight">-->
                                        <#--<span>${dish.weight}г</span>-->
                                    <#--</div>-->
                                <#--</div>-->
                            </div>
                        </#list>
                    </div>
                <#else>
                    <div class="categories">
                        <div class="category">
                            <a href="/menu/snacks"><img src="/images/snacks.jpg"></a>
                        </div>
                        <div class="category">
                            <a href="/menu/main"><img src="/images/main_courses.jpg"></a>
                        </div>
                        <div class="category">
                            <a href="/menu/salads"><img src="/images/salads.jpg"></a>
                        </div>
                        <div class="category">
                            <a href="/menu/hot_snacks"><img src="/images/hot_snacks.jpg"></a>
                        </div>
                        <div class="category">
                            <a href="/menu/hookahs"><img src="/images/hookahs.jpg"></a>
                        </div>
                    </div>
                </#if>
        </div>
        <#if (model.user)??>
        <#if model.user.role == "ADMIN">
            <div class="admin-panel">
                <div class="add">
                    <ul>
                        <li><a href="/admin/menu/add">Добавить блюдо</a></li>
                    </ul>
                </div>
            </div>
        </#if>
        </#if>
        <hr>
        <div class="footer">

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