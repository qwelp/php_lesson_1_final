<?php require ('../config.php');

$arUsers = selectAll($pdo, 'users');
$arOrdering = selectAll($pdo, 'ordering');

?>
<h2>Клиенты</h2>
<table border="1">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>email</th>
        <th>phone</th>
    </tr>
    <?foreach ($arUsers as $arItem):
        if(empty($arItem["name"])) continue;
        ?><tr>
        <td><?=$arItem["id"]?></td>
        <td><?=$arItem["name"]?></td>
        <td><?=$arItem["email"]?></td>
        <td><?=$arItem["phone"]?></td>
        </tr>
    <?endforeach;?>
</table>
<br>
<br>
<h2>Заказы</h2>
<table border="1">
    <tr>
        <th>id</th>
        <th>id_user</th>
        <th>address</th>
        <th>comment</th>
        <th>home</th>
        <th>part</th>
        <th>appt</th>
        <th>floor</th>
        <th>payment</th>
        <th>callback</th>
    </tr>
    <?foreach ($arOrdering as $arItem):
        if(empty($arItem["address"])) continue;
        ?><tr>
        <td><?=$arItem["id"]?></td>
        <td><?=$arItem["id_user"]?></td>
        <td><?=$arItem["address"]?></td>
        <td><?=$arItem["comment"]?></td>
        <td><?=$arItem["home"]?></td>
        <td><?=$arItem["part"]?></td>
        <td><?=$arItem["appt"]?></td>
        <td><?=$arItem["floor"]?></td>
        <td><?=$arItem["payment"]?></td>
        <td><?=$arItem["callback"]?></td>
        </tr>
    <?endforeach;?>
</table>