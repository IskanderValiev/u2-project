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
<#include "tags/header.ftl">
    <div class="container">
        <hr>
        <div class="content">
            <div class="notifications">
                <div class="notification">
                    <form action="/admin/notification/add" method="post">
                        <table>
                            <col width="30%">
                            <col width="70%">
                            <tr>
                                <td>Тема:</td>
                                <td><input type="text" name="notificationSubject"></td>
                            </tr>
                            <tr>
                                <td>Текст:</td>
                                <td><textarea name="notificationContent" rows="10"></textarea></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" value="Отправить"></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
<#include "tags/footer.ftl">
</div>
<script src="http://yastatic.net/jquery/2.1.3/jquery.min.js"></script>
<script src="/js/slick/slick.min.js"></script>
<script src="/js/slider.js"></script>
</body>
</html>

</body>
</html>