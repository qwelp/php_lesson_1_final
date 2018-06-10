<?php require ('config.php');

parse_str($_POST['input'], $input);

$users = $pdo->prepare("INSERT INTO users(name, email, phone) VALUES(:fname, :femail, :fphone)");
$users->execute(array(
    "fname" => $input["name"],
    "femail" => $input["email"],
    "fphone" => $input["phone"]
));

$id_user = selectIDfromName($pdo, $input["email"]);

$ordering = $pdo->prepare("INSERT INTO 
              ordering(id_user, address, comment, home, part, appt, floor, payment, callback) 
              VALUES(:id_user, :address, :comment, :home, :part, :appt, :floor, :payment, :callback)");
$ordering->execute(array(
    "id_user" => $id_user,
    "address" => $input["street"],
    "comment" => $input["comment"],
    "home" => $input["home"],
    "part" => $input["part"],
    "appt" => $input["appt"],
    "floor" => $input["floor"],
    "payment" => ($input["payment"] == 'on') ? true : false,
    "callback" => ($input["callback"] == 'on') ? true : false
));

$id = $pdo->lastInsertId();

$countOrdering = orderNew($pdo, $input["email"]);

if($countOrdering > 1) {
    $firstOrderdering = "Спасибо - это ваш первый заказ";
} else {
    $firstOrderdering = "Спасибо! Это уже $countOrdering заказ";
}

$email = "qwelp@mail.ru";
$subject = "Заказ $id";
$msg = "Ваш заказ будет доставлен по адресу<br>
Улица {$input["street"]}, Дом {$input["home"]}, Корпус {$input["part"]},
 Квартира {$input["appt"]}, Этаж {$input["floor"]}<br> 
 DarkBeefBurger за 500 рублей, 1 шт<br>$firstOrderdering";
$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= "Content-type: text/html; charset=utf-8 \r\n";
mail($email, $subject, $msg, $headers);