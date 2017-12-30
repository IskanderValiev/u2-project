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
<body onload="getAllApplications()">
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
                    <#if (model.user)??>
                        <li>${model.user.name}
                            <ul>
                                <li><a href="/profile">Профиль</a></li>
                                <li><a href="#">Мои заявки</a></li>
                                <li><a href="/exit">Выход</a></li>
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
            <div class="applications">
                <div class="application">
                    <table id="application">
                        <thead>
                            <tr>
                                <td>ID</td>
                                <td>Имя</td>
                                <td>Номер телефона</td>
                                <td>Доп. информация</td>
                                <td>Время</td>
                                <td>Удалить</td>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
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
                    <li><a href="/admin/application">Заявки на бронирование</a></li>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        setInterval(getAllApplications, 10000);
    });

    function getAllApplications() {
        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "http://localhost:8080/admin/get/applications",
            dataType: 'json',
//            data: JSON.stringify(reg),
            cache: false,
            timeout: 10000,
            success: function (data) {
                $("#application tbody").empty();
                $.each(data, function (i, applications) {
                    var date = new Date(applications.date);
                    var day = date.getDay();
                    var month = date.getMonth();
                    var year = date.getYear();
                    var hour = date.getHours();
                    var minute = date.getMinutes();
                    var seconds = date.getSeconds();
                    var application = "<tr><td>"+i+"</td><td>"+applications.personName+"</td><td>"+applications.phone+"</td><td>"+applications.extraInfo+"</td><td>"+hour+":"+minute+"</td><td><a href=\"/admin/applications/delete/"+applications.id+"\">Удалить</a></td></tr>";
                    $("#application tbody").append(application)
                });
//                var json = JSON.stringify(data, null, 4);
//                $('#application').html();
                console.log(data);
            }
        })
    }
</script>
</body>
</html>