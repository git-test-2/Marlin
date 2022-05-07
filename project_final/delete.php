<?php

    if (isset($_GET['id'])){

        $pdo = new PDO("mysql:host=localhost; dbname=marlin;","root","");
        $sql = "DELETE FROM workers WHERE id = :id ";
        $statement = $pdo->prepare($sql);
        $statement->execute($_GET);

    }

header("Location: /Marlin/project_final/index.php");


