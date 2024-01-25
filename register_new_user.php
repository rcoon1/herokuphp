<html>
<head>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<h1>Please Register</h1>


<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

    include "db_connect.php"; 
?>

<form class="form-horizontal" action="process_new_user.php">
<fieldset>

    <div class="form-group">
        <label class="col-md-4 control-label" for="username">Username</label>
            <div class="col-md-5">
                <input id = "username" type="text" name="username" placeholder="your name" class="form-control input-md" required="">
            <p class="help-block">Please enter a username</p>
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-4 control-label" for="password1">Password</label>
            <div class="col-md-5">
                <input id = "password1" type="password" name="password1" placeholder="password" class="form-control input-md" required="">
            <p class="help-block">Please enter a password</p>
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-4 control-label" for="password2">Password</label>
            <div class="col-md-5">
                <input id = "password2" type="password" name="password2" placeholder="password" class="form-control input-md" required="">
            <p class="help-block">Please confirm the password</p>
        </div>
    </div>

    <div class="form-group">
        <label for="submit" class="col-md-4 control-label"></label>
        <div class-"col-md-4">
            <button id="submit" name="submit" class="btn btn-primary">Create new user</button>
        </div>
    </div>
</fieldset>
</form>
 
<?php 
$mysqli->close();
?>

</body>
</html>