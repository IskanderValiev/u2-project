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
</body>
</html>
</body>
</html>