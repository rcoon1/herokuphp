<?php

include "db_connect.php";

$new_username = $_GET['username'];
$new_password1 = $_GET['password1'];
$new_password2 = $_GET['password2'];

echo "<h2> Trying to add a new user " . $new_username . " pw= " . $new_password1 . " and " . $new_password2 . "</h2>";

if ($new_password1 != $new_password2) {
    echo "The passwords do not match. Please try again!";
    exit;
}

$sql = "SELECT * FROM users where username = '$new_username'";

$result = $mysqli->query($sql) or die (mysqli_error(mysqli));

if ($result->num_rows > 0 ) {
    echo "The username " . $new_username . " is already in the database. You can't register twice!";
    exit;
}

$sql = "INSERT INTO users (userid, username, password) VALUES (null, '$new_username', '$new_password1')";

$result = 
$mysqli->query($sql) or die (mysqli_error($mysqli));

if ($result) {
    echo "Registration success";
}
else {
    echo "Something went wrong. Not registered.";
}

?>