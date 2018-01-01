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
            <div class="">
                <h2>Unity Hall 2</h2>
            </div>
            <div class="contacts">
                <div class="contact">
                    <a href="mailto:iskand.valiev@yandex.ru">
                        <img src="/images/email_logo.png" class="hovicon effect-1 sub-a">
                        <span>unityhall2@gmail.com</span>
                    </a>
                </div>
                <div class="contact">
                    <img src="/images/phone-logo.png">
                    <span>2-500-222</span>
                </div>
                <div class="contact">
                    <a href="https://vk.com/unityhome">
                        <img src="/images/vk-logo2.png">
                        <span>/unityhome</span>
                    </a>
                </div>
                <div class="contact">
                    <a href="https://instagram.com/">
                        <img src="/images/instagram-logo2.png">
                        <span>@unityhall2</span>
                    </a>
                </div>
                <div class="contact">
                    <a href="#address">
                    <img src="/images/location-logo.png">
                    <span>Адрес</span>
                    </a>
                </div>
            </div>
            <hr style="height: 1px; background-color: darkgrey; width: 80%">
            <div class="location">
                <h2><a name="address">Где мы?</a></h2>
                <iframe src="https://yandex.ru/map-widget/v1/-/CBaca0tzTA" frameborder="0" style="width: 80%; height: 500px;"></iframe>
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
</body>
</html>