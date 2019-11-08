<?php

require_once 'functions.php';

$wrongLogin = [];

$existedLogin = [];

if (!empty($_POST['email']) && !empty($_POST['password'])) {
    if (authorization($_POST['email'], md5($_POST['password']))) {
        header("Location: /cabinet.php");
        die;
    } else {
        $wrongLogin[] = 'Wrong login or password';
    }
}

if (!empty($_POST['newEmail'])) {
    if (checkExistedEmail($_POST['newEmail'])) {
        header("location: cabinet.php");
        die;
    } else {
        $existedLogin[] = 'This email already exsist';
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Authorization</title>

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

    <ul class="nav nav-tabs" id="myTab" role="tablist">
      <li class="nav-item">
        <a class="nav-link active" id="signin-tab" data-toggle="tab" href="#signin" role="tab" aria-controls="signin" aria-selected="true">Sign in</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="signup-tab" data-toggle="tab" href="#signup" role="tab" aria-controls="signup" aria-selected="false">Sign up</a>
      </li>
    </ul>

    <div class="tab-content" id="myTabContent">
        
        <div class="tab-pane fade show active" id="signin" role="tabpanel" aria-labelledby="signin-tab">
      
            <form method="POST" class="margin-top-input">

                <ul>
                    <?php foreach ($wrongLogin as $error): ?>
                        <li><?= $error ?></li>
                    <?php endforeach; ?>
                </ul>
                <ul>
                    <?php if (isset($existedLogin)) { foreach ($existedLogin as $error): ?>
                        <li><?= $error ?></li>
                    <?php endforeach; } ?>
                </ul>

                <div class="form-group">
                  <label for="email">Email address</label>
                  <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                </div>
                <div class="form-group">
                  <label for="password">Password</label>
                  <input type="password" class="form-control" name="password" id="password" placeholder="Password" required="">
                </div>
                <button type="submit" class="btn btn-primary">Sign in</button>
            </form>

        </div>
        
        <div class="tab-pane fade" id="signup" role="tabpanel" aria-labelledby="signup-tab">
      
            <form method="POST" class="margin-top-input">

                <label for="firstName">Fill in your information</label>
                <div class="form-row">
                    <div class="col">
                        <input type="text" name="firstName" id="firstName" class="form-control" placeholder="First name" required="">
                    </div>
                    <div class="col">
                        <input type="text" name="lastName" id="lastName" class="form-control" placeholder="Last name">
                    </div>
                </div>
                <div class="form-group col-md-6 margin-top-input">
                    <label for="newEmail">Email</label>
                    <input type="email" class="form-control" name="newEmail" id="newEmail" aria-describedby="emailHelp" placeholder="Email" required="" oninvalid="this.setCustomValidity('Please Enter valid email')" oninput="setCustomValidity('')"></input>
                </div>
                <div class="form-group col-md-6">
                    <label for="newPassword">Password</label>
                    <input type="password" class="form-control" name="newPassword" id="newPassword" placeholder="Password" required>
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>

            </form>

        </div>
    </div>

</div>  

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>