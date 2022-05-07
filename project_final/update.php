<?php

if(!empty($_FILES['photo']['tmp_name'])){ //если не пустой массив с именем картинки
    $a = '../uploads/'. uniqid() .'.jpg'; // генерируем уникальное имя для картинки
    move_uploaded_file($_FILES['photo']['tmp_name'],$a); // берём временный файл картинки и сохраняем по адрксу (с уникальным именем uniqid() )
    $pdo = new PDO("mysql:host=localhost; dbname=marlin;","root","");
    $sql = "UPDATE workers SET photo = '$a', login = :login, role = :role, password = :password, email = :email  WHERE id = :id ";
    $statement = $pdo->prepare($sql);
    $statement->execute($_POST); //всё берём с глобального массива
} else {
    $pdo = new PDO("mysql:host=localhost; dbname=marlin;","root","");
    $sql = "UPDATE workers SET login = :login, role = :role, password = :password, email = :email  WHERE id = :id ";
    $statement = $pdo->prepare($sql);
    $statement->execute($_POST); //всё берём с глобального массива
}

//$id = $_POST['id'];

header("Location: /Marlin/project_final/index.php");





//
//$a = '../uploads/'. uniqid() .'.jpg';
//
//if (move_uploaded_file($_FILES['photo']['tmp_name'],$a)){
//        $pdo = new PDO("mysql:host=localhost; dbname=marlin;","root","");
//        $sql = "UPDATE workers SET photo = '$a', login = :login, role = :role, password = :password, email = :email  WHERE id = :id ";
//        $statement = $pdo->prepare($sql);
//        $statement->execute($_POST); //всё берём с глобального массива
//    } else {
//        $pdo = new PDO("mysql:host=localhost; dbname=marlin;","root","");
//        $sql = "UPDATE workers SET login = :login, role = :role, password = :password, email = :email  WHERE id = :id ";
//        $statement = $pdo->prepare($sql);
//        $statement->execute($_POST); //всё берём с глобального массива
//    }



//move_uploaded_file($_FILES['photo']['tmp_name'],'../uploads/image_1228.jpg');
//$a = '../uploads/'. uniqid() .'.jpg';
//move_uploaded_file($_FILES['photo']['tmp_name'],$a);
// $_FILES['photo'] - ['photo'] - имя строки input, ['tmp_name'] - верменное хранение файла
// uniqid() - генерирует случайное число что не повторяется
// ../uploads/ - путь к папке где лежат картинки


//basename — Возвращает последний компонент имени из указанного пути
//$myimg = '../uploads/' . basename($_FILES['uploadfile']['name']);
//if (move_uploaded_file($_FILES['photo']['tmp_name'], $myimg)) {
//    // сохраняем путь в базу
//}

//поставить условие что если не менял аву, то не трогать аву в базе   !!!!!!!!!!!!!!!!!1
//перед if (move_uploaded_file($_FILES['photo']['tmp_nam ... поставь условие, что если не пришла картинка то не трогать бд

// https://www.youtube.com/watch?v=KYyajEOdPP8 - загрузка картинок и проверка


