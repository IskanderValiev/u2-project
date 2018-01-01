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
    <link rel="stylesheet" type="text/css" href="/css/slick.css">
    <link rel="stylesheet" type="text/css" href="/css/slick-theme.css">
    <link rel="icon" type="image/ico" href="/favicon.ico">
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
                        <span>8 (843) 500-222</span>
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
                <div class="slides">
                    <div class="slide">
                        <iframe src="//vk.com/video_ext.php?oid=-137147696&id=456239018&hash=bd7f732f7976aa78&hd=2" style="width: 100%; height: 550px;" frameborder="0" allowfullscreen></iframe>
                    </div>
                    <#if (model.events)??>
                    <#list model.events as event>
                        <div class="slide">
                            <a href="/events/${event.id}">
                                <img src="/files/${event.cover.storageFileName}">
                            <div class="slide_text">
                                <h3 class="slide_text_header">${event.title}</h3>
                                <span>${event.date}</span>
                            </div>
                        </a></div>
                    </#list>
                    </#if>
                </div>
                <div class="reserve">
                    <span>Забронировать столик онлайн</span>
                    <form class="reserve-form" method="post" action="/submit/application" id="reserve-form">
                        <table>
                            <tr>
                                <th>Ваше имя:</th>
                                <th>Ваш телефон:</th>
                            </tr>
                            <tr>
                                <td><input type="text" name="personName" required></td>
                                <td><input type="text" name="personPhone" required></td>
                                <#if model.user??>
                                    <td><input type="hidden" name="userId" value="${model.user.id}"></td>
                                </#if>
                            </tr>
                            <tr>
                                <td colspan="2" style="overflow: hidden"><textarea form="reserve-form" rows="3" name="extraInfo" placeholder="Дополнительная информация. (Например, сколько человек)" style="width: 100%; resize: none"></textarea></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" value="Оставить заявку" style="float: right"></td>
                            </tr>
                        </table>
                    </form>
                </div>
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
    <script src="http://yastatic.net/jquery/2.1.3/jquery.min.js"></script>
    <script src="/js/slick/slick.min.js"></script>
    <script src="/js/slider.js"></script>
</body>
</html>