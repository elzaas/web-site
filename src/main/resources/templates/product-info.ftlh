<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<h4>Подробная информация о товаре</h4>
<#if product??>
    <b>Название товара : </b>${product.title !}<br>
    <b>Описание : </b>${product.description !}<br>
    <b>Цена : </b>${product.price!}<br>
    <b>Город : </b>${product.city!}<br>
    <b>Автор : </b>${product.author!}<br>
    <hr>
    <h3>Создать новый товар</h3>
    <form action="/product/delete/${product.id}" method="post">
        <input type="submit" value="Удалить товар"/>
    </form>
<#else>
    <p>Товар не найден</p>
</#if>
</body>
</html>
