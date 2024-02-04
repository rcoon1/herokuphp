<?php
include "db_connect.php";

$sql = "SELECT JokeID, Joke_question, Joke_answer, user_id, username, google_name FROM Jokes_table JOIN users ON jokes_table.user_id = users.id";
$result = $mysqli->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<h3>" . $row['Joke_question'] . "</h3>";

        echo "<div><p>" . $row["Joke_answer"] . " submitted by user #" . $row['userid'] . " whose name is " . $row['username'] . $row['google_name'] . "</p></div>";
    }
} else {
    echo "0 results";
}
?>