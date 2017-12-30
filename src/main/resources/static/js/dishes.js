var xmlHttp;

function showDishes(category) {
    if (typeof XMLHttpRequest !== "undefined") {
        xmlHttp = new XMLHttpRequest();
    }

    if (xmlHttp === null) {
        alert("Sorry. Your browser does not support XMLHTTP Request.")
        return;
    }

    var url = "?category=" + category;

}