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