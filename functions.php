<?php

session_start();

$db = 'slotegrator';
$user = 'root';
$pass = 'admin';
$host = 'localhost';
$pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8", $user, $pass);

function authorization($email, $password)
{
    global $pdo;
    $authorization = 'SELECT * FROM users WHERE email = :email AND password = :password';
    $stmt = $pdo->prepare($authorization);
    $stmt->execute(["email" => "$email", "password" => "$password"]);
    $users = $stmt->fetchAll();
    foreach ($users as $user) {
        if (isset($user)) {
            $_SESSION['user_id'] = $user['id'];
            $_SESSION['user_email'] = $user['email'];
            return true;
        } else {
            return false;
        }

    }
}

function checkExistedEmail($email)
{
    global $pdo;
    $checkExistedEmail = 'SELECT email FROM users WHERE email = ?';
    $stmt = $pdo->prepare($checkExistedEmail);
    $stmt->execute(["$email"]);
    $emails = $stmt->fetchAll();
    foreach ($emails as $email) {
        if (isset($email)) {
            return false;
        }
    }
    if (empty($emails)) {
        addUser();
        return true;
    }
}

function addUser()
{
    global $pdo;
    $user_name = $_POST['firstName'];
    $user_surname = $_POST['lastName'];
    $email = $_POST['newEmail'];
    $password = md5($_POST['newPassword']);
    $addUser = 'INSERT INTO users(firstName, lastName, email, password) VALUES (:firstName, :lastName, :email, :password)';
    $stmt = $pdo->prepare($addUser);
    $stmt->execute(["firstName" => "$user_name", "lastName" => "$user_surname", "email" => "$email", "password" => "$password"]);
    $getSession = 'SELECT id, email FROM users WHERE email = ?';
    $stmt = $pdo->prepare($getSession);
    $stmt->execute(["$email"]);
    $newUser = $stmt->fetchAll();
    $_SESSION['user_email'] = $_POST['newEmail'];
    
}

function isAuthorized()
{
    if (!empty($_SESSION['user_email'])) {
        return true;
    } else {
        return false;
    }
}

function checkMoney()
{
    global $pdo;
    $user = $_SESSION["user_email"];
    $checkMoney = "SELECT SUM(prize) FROM prizes WHERE user =" . "'" . $user . "'" . "AND type = 'money'";
    $stmt = $pdo->prepare($checkMoney);
    $stmt->execute();
    $moneySumm = $stmt->fetch();
    $wonAmountMoney = $moneySumm['0'];
    return $wonAmountMoney;
}

function checkItems()
{
    global $pdo;
    $user = $_SESSION['user_email'];
    $checkItems = "SELECT COUNT(*) FROM prizes WHERE user =" . "'" . $user . "'" . "AND type = 'item'";
    $stmt = $pdo->prepare($checkItems);
    $stmt->execute();
    $itemSumm = $stmt->fetch();
    $itemsAmount = $itemSumm['0'];
    return $itemsAmount;
}

function checkBonuses()
{
    global $pdo;
    $user = $_SESSION["user_email"];
    $checkBonuses = "SELECT SUM(prize) FROM prizes WHERE user =" . "'" . $user . "'" . "AND type = 'bonus'";
    $stmt = $pdo->prepare($checkBonuses);
    $stmt->execute();
    $bonusSumm = $stmt->fetch();
    $wonAmountPoints = $bonusSumm['0'];
    return $wonAmountPoints;
}

function gambling()
{
    global $pdo;
    $user = $_SESSION['user_email'];
    $type = rand (1,3);

    if ($type<2) {
        $bonus = rand(100,1000);
        $win = $bonus;
        $_SESSION['prize'] = $win;
        $_SESSION['type'] = 'bonus';
        echo 'You win ' . $win . ' points!';
    } elseif ($type>2 && checkMoney()<200) {
        $money = rand(10,100);
        $win = $money;
        $_SESSION['prize'] = $win;
        $_SESSION['type'] = 'money';
        echo 'You win ' . $win . ' euro!';
    } elseif ($type==2 && checkItems()<5) {
        $getItem = 'SELECT item FROM items ORDER BY RAND() LIMIT 1';
        $stmt = $pdo->prepare($getItem);
        $stmt->execute();
        $prize = $stmt->fetch();
        $win = $prize['item'];
        $_SESSION['prize'] = $win;
        $_SESSION['type'] = 'item';
        echo 'You win ' . $win . ' !';
    } else {
        echo "You reach the limit for prizes";
        die;
    }    
}

function addPrize()
{
    global $pdo;
    $user = $_SESSION['user_email'];
    $prize = $_SESSION['prize'];
    $type = $_SESSION['type'];
    $addPrize = 'INSERT INTO prizes(user, prize, type) VALUES (:user, :prize, :type)';
    $stmt = $pdo->prepare($addPrize);
    $stmt->execute(["user" => "$user", "prize" => "$prize", "type" => "$type"]);
}

function moneyExchange($money)
{
    global $pdo;
    $user = $_SESSION['user_email'];

    $points = $money * 100;
    $addPoints = 'INSERT INTO prizes(user, prize, type) VALUES (:user, :prize, :type)';
    $stmt = $pdo->prepare($addPoints);
    $stmt->execute(["user" => "$user", "prize" => "$points", "type" => "bonus"]);

    $money = (int)('-'.abs($money));
    $substractMoney = 'INSERT INTO prizes(user, prize, type) VALUES (:user, :prize, :type)';
    $stmt = $pdo->prepare($substractMoney);
    $stmt->execute(["user" => "$user", "prize" => "$money", "type" => "money"]);

}

function logout()
{
    session_destroy();
}