<?php
require_once('C:/xampp/htdocs/ITCS-333-Course-Project/database/connection.php');
session_start();  // Ensure session is started here
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
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        header {
            background-color: #007bff;
            color: white;
            padding: 20px 0;
        }
        header h1 {
            margin: 0;
            font-size: 2em;
        }
        nav {
            margin: 20px 0;
        }
        nav a {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        nav a:hover {
            background-color: #0056b3;
        }
        footer {
            margin-top: 20px;
            padding: 10px;
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to the Room Booking System</h1>
    </header>
    <main>
        <?php
        if (isset($_SESSION['email'])) {
            echo '<p>Hello, ' . htmlspecialchars($_SESSION['email']) . '!</p>';
            echo '<nav>';
            echo '<a href="http://localhost/ITCS-333-Course-Project/the-login-and-signup/homepage.php">Go to Homepage</a>';
            echo '<a href="http://localhost/ITCS-333-Course-Project/UserProfileManagement/userprofile.php">Manage Profile</a>';
            echo '<a href="http://localhost/ITCS-333-Course-Project/the-login-and-signup/logout.php">Logout</a>';

            // Check if the user has the 'role' session variable set and if it's 'admin'
            if (isset($_SESSION['role']) && $_SESSION['role'] === 'admin') {
                echo '<a href="http://localhost/ITCS-333-Course-Project/AdminPanel/admin_dashboard.php">Admin Dashboard</a>';
            }
            echo '</nav>';
        } else {
            echo '<nav>';
            echo '<a href="http://localhost/ITCS-333-Course-Project/the-login-and-signup/hi.php">Register / Login</a>';
            echo '</nav>';
        }
        ?>
    </main>
    <footer>
        <p>&copy; <?php echo date('Y'); ?> IT College Room Booking System. All Rights Reserved.</p>
    </footer>
</body>
</html>
