<?php
require_once('C:/xampp/htdocs/ITCS333-project/database/create_database.php');
require_once('C:/xampp/htdocs/ITCS333-project/database/connection.php');

session_start();  // Ensure session is started here
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Booking System</title>
    <style>
        /* Reset default margin and padding */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Dark background with a beautiful gradient */
        body {
            font-family: 'Montserrat', sans-serif;
            background: linear-gradient(135deg, #2c3e50 0%, #34495e 100%);
            color: #fff;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            animation: fadeIn 1s ease-in-out;
        }

        /* Stylish and prominent header */
        header {
            text-align: center;
            padding: 60px 20px;
            margin-bottom: 30px;
            background-color: rgba(0, 0, 0, 0.8);
            border-radius: 15px;
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.6);
            transition: all 0.3s ease;
        }

        header:hover {
            transform: scale(1.05);
        }

        header h1 {
            font-size: 4em;
            font-weight: 800;
            color: #e74c3c;
            letter-spacing: 2px;
            text-shadow: 3px 3px 15px rgba(0, 0, 0, 0.5);
        }

        /* Main content section with modern design */
        main {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 25px;
            padding: 50px;
            max-width: 900px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.6);
            transition: all 0.3s ease;
        }

        main:hover {
            transform: scale(1.05);
        }

        .greeting {
            font-size: 1.6em;
            color: #e74c3c;
            margin-bottom: 30px;
            text-transform: uppercase;
            font-weight: 700;
            letter-spacing: 2px;
        }

        nav a {
            background-color: #e74c3c;
            color: #fff;
            text-decoration: none;
            padding: 20px 35px;
            margin: 15px;
            font-size: 1.3em;
            text-transform: uppercase;
            font-weight: 600;
            border-radius: 50px;
            display: inline-block;
            box-shadow: 0 8px 18px rgba(0, 0, 0, 0.4);
            transition: transform 0.3s ease, box-shadow 0.3s ease, background-color 0.3s ease;
        }

        nav a:hover {
            background-color: #c0392b;
            transform: translateY(-8px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.5);
        }

        /* Footer with elegant text */
        footer {
            padding: 20px;
            text-align: center;
            color: #e74c3c;
            background-color: rgba(0, 0, 0, 0.8);
            width: 100%;
            margin-top: auto;
            border-top: 1px solid #e74c3c;
        }

        footer p {
            font-size: 1.2em;
            font-weight: 300;
            letter-spacing: 0.8px;
        }

        /* Smooth fade-in animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            header h1 {
                font-size: 3em;
            }

            main {
                padding: 40px;
            }

            nav a {
                padding: 18px 30px;
                font-size: 1.2em;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Room Booking System</h1>
    </header>
    <main>
        <?php
        if (isset($_SESSION['email'])) {
            echo '<p class="greeting">Hello, <span>' . htmlspecialchars($_SESSION['email']) . '</span>!</p>';
            echo '<nav>';
            echo '<a href="http://localhost/ITCS333-project/browse_rooms.php">book rooms</a>';
            echo '<a href="http://localhost/ITCS333-project/UserProfileManagement/userprofile.php">Manage Profile</a>';
            echo '<a href="http://localhost/ITCS333-project/the-login-and-signup/logout.php">Logout</a>';

            // Admin panel link
            if (isset($_SESSION['role']) && $_SESSION['role'] === 'admin') {
                echo '<a href="http://localhost/ITCS333-project/AdminPanel/admin_dashboard.php">Admin Dashboard</a>';
            }
            echo '</nav>';
        } else {
            echo '<nav>';
            echo '<a href="http://localhost/ITCS333-project/the-login-and-signup/hi.php">Sign Up / Login</a>';
            echo '</nav>';
        }
        ?>
    </main>
    <footer>
        <p>&copy; <?php echo date('Y'); ?> Room Booking System - IT College. All rights reserved.</p>
    </footer>
</body>
</html>
