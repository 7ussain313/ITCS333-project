<?php
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $pwd = $_POST["pwd"];
    $email = $_POST["email"];

    try {
        require_once "dbh.inc.php";

     


        // Prepare SQL statement with placeholders
        $query = "INSERT INTO users (username, pwd, email) VALUES (?, ?, ?)";
        $stmt = $pdo->prepare($query);

        // Execute with bound parameters
        $stmt->execute([$username, $pwd, $email]);

        $pdo = null;  // Close connection
        header("Location: ../first.php");  // Redirect after success
    } catch (PDOException $e) {
        die("Query failed: " . $e->getMessage());
    }
}
?>