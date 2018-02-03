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
<#include "tags/header.ftl">
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
<#include "tags/footer.ftl">
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