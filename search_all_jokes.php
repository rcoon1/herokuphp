<?php
include "db_connect.php";

$sql = "SELECT JokeID, Joke_question, Joke_answer, user_id FROM Jokes_table";
$result = $mysqli->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<h3>" . $row['Joke_question'] . "</h3>";

        echo "<div><p>" . $row["Joke_answer"] . " submitted by user #" . $row['user_id'] . "</p></div>";
    }
} else {
    echo "0 results";
}
?>