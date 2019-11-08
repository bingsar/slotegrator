<?php

require_once 'functions.php';

if (!isAuthorized()) {
    header('Location: index.php');
    die;
}

if (!empty($_POST['addPrize'])) {
    addPrize();
}

if (!empty($_POST['moneyExchange'])) {
    if (checkMoney()>=$_POST['moneyExchange']) {
        moneyExchange($_POST['moneyExchange']);
    } else {
        $minimalPoints[] = 'Not enough points';
    }
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Private cabinet</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .container {
            margin-top:20px;
        }
        .margin-top-input{
            margin-top:20px;
        }
    </style>
</head>
<body>

    <div class="container">
            <div class="row">    
                <div class="col">
                    <div class="card">
                        <div class="card-header">
                            Private cabinet
                        </div>
                        <div class="card-body">
                            <h5 class="card-title">Push the button, <?php echo $_SESSION['user_email'] ?> !</h5>

                            <form method="POST">
                                <input class="btn btn-primary" name="game" type="submit" value="TRY YOUR LUCK!">
                            </form>

                            <p class="card-text">Your achievements:</p>
                            <ul>
                                <li>Amount of euro: <?php echo checkMoney(); ?></li>
                                <li>Amount of items: <?php echo checkItems(); ?></li>
                                <li>Amount of points: <?php echo checkBonuses(); ?></li>
                            </ul>

                            <form method="POST">
                                <p class="card-text">You can change euro to points</p>
                                <div class="input-group mb-3">
                                    <input type="number" class="form-control" name="moneyExchange" min="1" placeholder="Amount of points" aria-label="Recipient's username" aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                    <button class="btn btn-outline-secondary" type="submit">Change</button>
                                    </div>
                                </div>
                                <small class="form-text text-muted">Rate is 1 euro = 100 points</small>
                                <?php if (isset($minimalMoney)) { foreach ($minimalMoney as $minMoney): ?>
                                    <li><?= $minMoney ?></li>
                                <?php endforeach; } ?>
                            </form>

                        </div>
                        <div class="card-footer text-muted">
                        <a class="btn btn-secondary" href="logout.php" role="button">Logout</a>
                        </div>
                    </div>

                </div>
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <?php
                                if (!empty($_POST['game'])) {
                                    gambling();
                            ?>
                                <form method="POST">
                                    <div class="row margin-top-input">
                                        <div class="col">
                                            <input class="btn btn-primary" name="addPrize" type="submit" value="Keep Prize">
                                        </div>
                                        <div class="col">
                                            <input class="btn btn-secondary" name="loosePrize" type="submit" value="Loose Prize">
                                        </div>
                                    </div>
                                </form>
                            <?php } else { echo '<-- Try your luck!'; }?>
                        </div>
                    </div>
                </div>
            </div>    
        <br>
    </div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>