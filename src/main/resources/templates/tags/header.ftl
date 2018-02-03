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