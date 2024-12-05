<?php
// Start the session at the beginning of the script
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Booking System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Welcome to the Room Booking System</h1>
    <?php
    // Check if the user is logged in or not
    if (isset($_SESSION['email'])) {
        // If logged in, show the homepage link
        echo '<p>Hello, ' . htmlspecialchars($_SESSION['email']) . '</p>';
        echo '<a href="homepage.php">Go to Homepage</a>';
        echo '<a href="logout.php">Logout</a>';
    } else {
        // If not logged in, show the registration and login links
        echo '<a href="view.php">Register / Login</a>';
    }
    ?>
</body>
</html>
