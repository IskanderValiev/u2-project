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
            xhr.open("POST", "/admin/events/add", true);
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
            <div class="event-form">
                <form action="/admin/events/add" method="post" id="event-form" enctype="multipart/form-data">
                    <table>
                        <tr>
                            <th>Название:</th>
                            <td><input type="text" name="eventTitle"></td>
                        </tr>
                        <tr>
                            <th>Описание:</th>
                            <td><textarea name="eventDescription" form="event-form" rows="10"></textarea></td>
                        </tr>
                        <tr>
                            <th>Дата:</th>
                            <td>
                                <select name="eventDay">
                                    <option value="0" disabled>Day</option>
                                    <option  value="1">1</option>
                                    <option  value="2">2</option>
                                    <option  value="3">3</option>
                                    <option  value="4">4</option>
                                    <option  value="5">5</option>
                                    <option  value="6">6</option>
                                    <option  value="7">7</option>
                                    <option  value="8">8</option>
                                    <option  value="9">9</option>
                                    <option  value="10">10</option>
                                    <option  value="11">11</option>
                                    <option  value="12">12</option>
                                    <option  value="13">13</option>
                                    <option  value="14">14</option>
                                    <option  value="15">15</option>
                                    <option  value="16">16</option>
                                    <option  value="17">17</option>
                                    <option  value="18">18</option>
                                    <option  value="19">19</option>
                                    <option  value="20">20</option>
                                    <option  value="21">21</option>
                                    <option  value="22">22</option>
                                    <option  value="23">23</option>
                                    <option  value="24">24</option>
                                    <option  value="25">25</option>
                                    <option  value="26">26</option>
                                    <option  value="27">27</option>
                                    <option  value="28">28</option>
                                    <option  value="29">29</option>
                                    <option  value="30">30</option>
                                    <option  value="31">31</option>
                                </select>

                                <select name="eventMonth">
                                    <option value="0" disabled>Month</option>
                                    <option  value="01">Jan</option>
                                    <option  value="02">Feb</option>
                                    <option  value="03">Mar</option>
                                    <option  value="04">Apr</option>
                                    <option  value="05">May</option>
                                    <option  value="06">Jun</option>
                                    <option  value="07">Jul</option>
                                    <option  value="08">Aug</option>
                                    <option  value="09">Sep</option>
                                    <option  value="10">Oct</option>
                                    <option  value="11">Nov</option>
                                    <option  value="12">Dec</option>
                                </select>

                                <select name="eventYear">
                                    <option value="0" disabled>Year</option>
                                    <option  value="2017">2017</option>
                                    <option  value="2016">2016</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>Начало:</th>
                            <td>
                                <select name="eventStartHour">
                                    <option value="00:00">00:00</option>
                                    <option value="01:00">01:00</option>
                                    <option value="02:00">02:00</option>
                                    <option value="03:00">03:00</option>
                                    <option value="04:00">04:00</option>
                                    <option value="05:00">05:00</option>
                                    <option value="06:00">06:00</option>
                                    <option value="07:00">07:00</option>
                                    <option value="08:00">08:00</option>
                                    <option value="09:00">09:00</option>
                                    <option value="10:00">10:00</option>
                                    <option value="11:00">11:00</option>
                                    <option value="12:00">12:00</option>
                                    <option value="13:00">13:00</option>
                                    <option value="14:00">14:00</option>
                                    <option value="15:00">15:00</option>
                                    <option value="16:00">16:00</option>
                                    <option value="17:00">17:00</option>
                                    <option value="18:00">18:00</option>
                                    <option value="19:00">19:00</option>
                                    <option value="20:00">20:00</option>
                                    <option value="21:00">21:00</option>
                                    <option value="22:00">22:00</option>
                                    <option value="23:00">23:00</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th>Фотоотчет:</th>
                            <td><input type="file" name="image" id="image" multiple="multiple">
                            <button onclick="sendImage(($('#image'))[0]['files'][0])" class="dishUploadPhoto">Загрузить фото</button>
                            <input type="hidden" id="image_hidden">
                            <div class="imagename"></div></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Добавить мероприятие"></td>
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
</body>
</html>