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
    <#include "tags/header.ftl">
    <div class="container">
        <hr>
        <div class="content">
            <div class="auth-form">
                <h3>Войти в аккаунт</h3>
                <form action="/authorization/enter" method="post">
                    <table>
                        <tr>
                            <th>
                                <label>E-mail:</label>
                            </th>
                            <td><input type="text" name="authEmail"></td>
                        </tr>
                        <tr>
                            <th>
                                <label>Пароль:</label>
                            </th>
                            <td><input type="password" name="authPassword"></td>
                        </tr>
                        <tr>
                            <td><a href="/restore/password" style="color: white"><span style="font-family: Arial, sans-serif; font-size: 12px;">Забыли пароль?</span></a></td>
                            <td><label for="remember-me" style="font-size: 16px; float: right; vertical-align: middle">Запомнить меня</label><input type="checkbox" name="remember-me" id="remember-me" checked style="width: 15%; float: right"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Войти"></td>
                        </tr>
                    </table>
                </form>
            </div>
            <br>
            <#if model.error.isPresent()>
                <h3 style="margin: auto">Логин или пароль введены неправильно</h3>
            </#if>
            <hr style="width: 80%; height: 2px; background-color: white">
            <br>
            <div class="registration">
                <h2>Нет аккаунта? Присоединяйся к нам!</h2>
                <div class="reg-form">
                    <form action="/registration" method="post">
                        <table>
                            <col width="30%">
                            <col width="70%">
                            <tr>
                                <td>Имя:</td>
                                <td><input type="text" name="regName" required></td>
                            </tr>
                            <tr>
                                <td>Фамилия:</td>
                                <td><input type="text" name="regSurname" required></td>
                            </tr>
                            <tr>
                                <td>E-mail:</td>
                                <td><input type="email" name="regEmail" required></td>
                            </tr>
                            <tr>
                                <td>Пароль:</td>
                                <td><input type="password" name="regPassword" required></td>
                            </tr>
                            <tr>
                                <td>Телефон:</td>
                                <td><input type="tel" name="regPhone" required></td>
                            </tr>
                            <tr>
                                <td>Подписка на новости:</td>
                            <#--<td><input type="checkbox" name="regSubscribe" class="checkbox" checked></td>-->
                                <td>
                                    <label class="switch">
                                        <input type="checkbox" name="regSubscribe">
                                        <span class="slider round"></span>
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" value="Зарегистрироваться"></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <br>
                <hr style="width: 100%; height: 1px; background-color: white">
                <br>
                <div class="info">
                    <span><u>Подписка на новости</u> дает возможность первым узнавать новости об акциях и выгодных предложениях.</span>
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