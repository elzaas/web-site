<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--    <title>BUYSELL</title>-->
<#--</head>-->
<#--<body>-->
<#--<h1>BUYSELL</h1><hr>-->
<#--<hr>-->
<#--<#list products as product>-->
<#--    <div>-->
<#--        <p><b>${product.title}</b>${product.title} | <a href="/product/${product.id}" > Подробнее...</a></p>-->
<#--    </div>-->
<#--</#list>-->
<#--<hr>-->
<#--<h3>-->
<#--    Создать новый товар-->
<#--</h3>-->
<#--<from action = "/product.create/" method = "post" >-->
<#--    Название товара  <input type = "text"  name = " title"/><br><br>-->
<#--    Описание  <input type = "text"  name = " description"/><br><br>-->
<#--    Цена  <input type = "number"  name = " price"/><br><br>-->
<#--    Город  <input type = "text"  name = " city"/><br><br>-->
<#--    Имя  <input type = "text"  name = "author"/><br><br>-->
<#--    <input  type ="submit" value ="Добавить товар"/>-->
<#--</from>-->
<#--</body>-->
<#--</html>-->
<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<h3>Список товаров</h3>
<ul>
    <#list products as product>
        <li>
            <a href="/product/${product.id}">${product.title}</a>
        </li>
    </#list>
</ul>
<hr>
<h3>Создать новый товар</h3>
<form action="/product/create" method="post">
    <label for="title">Название:</label>
    <input type="text" id="title" name="title" required><br>
    <label for="description">Описание:</label>
    <input type="text" id="description" name=
