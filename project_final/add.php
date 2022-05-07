<?php

//if(!empty($_POST))
//{
//    $a = '../uploads/'. uniqid() .'.jpg'; // генерируем уникальное имя для картинки
//    move_uploaded_file($_FILES['photo']['tmp_name'],$a); // берём временный файл картинки и сохраняем по адрксу (с уникальным именем uniqid() )
//
//
//    $pdo = new PDO("mysql:host=localhost; dbname=marlin;","root","");
//    //$sql = "INSERT INTO workers VALUES photo = :photo, login = :login, role = :role, password = :password, email = :email";
//    $sql = "INSERT INTO `workers` (`login`, `email`, `password`, `role`, `photo`) VALUES (:login, :email, :password, :role, :photo)";
//    $statement = $pdo->prepare($sql);
//
//
//    // привязываем параметры к значениям
//    $statement->bindValue(":login",$_POST["login"]);
//    $statement->bindValue(":email",$_POST["email"]);
//    $statement->bindValue(":password",$_POST["password"]);
//    $statement->bindValue(":role",$_POST["role"]);
//    $statement->bindValue(":photo",$_POST["photo"]);
//
//
//    $statement->execute(); //выполняем
//
//}


if(!empty($_POST)) {

    try {
        $a = '../uploads/'. uniqid() .'.jpg'; // генерируем уникальное имя для картинки
        move_uploaded_file($_FILES['photo']['tmp_name'],$a); // берём временный файл картинки и сохраняем по адрксу (с уникальным именем uniqid() )


        $pdo = new PDO("mysql:host=localhost; dbname=marlin;","root","");
        $sql = "INSERT INTO workers (login, email, password, role, photo) VALUES (:login, :email, :password, :role, '$a')";
        $statement = $pdo->prepare($sql);

        // привязываем параметры к значениям
//        $statement->bindValue(":login",$_POST["login"]);
//        $statement->bindValue(":email",$_POST["email"]);
//        $statement->bindValue(":password",$_POST["password"]);
//        $statement->bindValue(":role",$_POST["role"]);
//        $statement->bindValue(":photo",$_POST["photo"]);

        $statement->execute($_POST); //выполняем
        //$affectedRowsNumber = $statement->execute($_POST);

        // если добавлена как минимум одна строка
//        if($affectedRowsNumber > 0 ){
//            echo "Data successfully added: name=" . $_POST["login"];
//        }
    }
    catch (PDOException $e) {
        echo "Database error: " . $e->getMessage();
    }
}

header("Location: /Marlin/project_final/index.php");



