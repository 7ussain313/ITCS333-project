<?php
require_once '../ITCS333-project/database/connection.php';
session_start();

// Check if the user is already logged in
if (isset($_SESSION['user_id'])) {
    // Redirect based on role
    if ($_SESSION['role'] === 'admin') {
        header("Location: /ITCS330_project/admin_dashboard.php");
    } else {
        header("Location: /Project/ITCS333-project/homepage.php");
    }
    exit;
}

$errors = [];
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = htmlspecialchars(trim($_POST['email']));
    $password = $_POST['password'];

    // Validate inputs
    if (empty($email) || empty($password)) {
        $errors[] = "Email and password are required.";
    }

    if (empty($errors)) {
        try {
            // Fetch user from the database
            $stmt = $db->prepare("SELECT * FROM Users WHERE email = :email");
            $stmt->bindParam(':email', $email);
            $stmt->execute();
            $user = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($user && password_verify($password, $user['password'])) {
                // Successful login
                $_SESSION['user_id'] = $user['id'];
                $_SESSION['role'] = $user['role'];
                $_SESSION['name'] = $user['name'];

                // Log the login activity
                $ip_address = $_SERVER['REMOTE_ADDR']; // Get the user's IP address
                $login_stmt = $db->prepare(
                    "INSERT INTO Login_History (user_id, login_time, ip_address) VALUES (:user_id, NOW(), :ip_address)"
                );
                $login_stmt->bindParam(':user_id', $user['id']);
                $login_stmt->bindParam(':ip_address', $ip_address);
                $login_stmt->execute();

                // Redirect based on role
                if ($user['role'] === 'admin') {
                    header("Location: /ITCS330_project/admin_dashboard.php");
                } else {
                    header("Location: /Project/ITCS333-project/homepage.php");
                }
                exit;
            } else {
                $errors[] = "Invalid email or password.";
            }
        } catch (PDOException $ex) {
            $errors[] = "Database error: " . $ex->getMessage();
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }
        form h1 {
            margin-bottom: 20px;
            font-size: 24px;
        }
        input[type="email"], input[type="password"], button {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        button {
            background-color: #007bff;
            color: white;
            font-weight: bold;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #0056b3;
        }
        label {
            display: block;
            font-size: 14px;
            margin-bottom: 10px;
            text-align: left;
        }
        .error {
            background-color: #f8d7da;
            color: #842029;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #f5c2c7;
            border-radius: 5px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form action="login.php" method="POST">
        <h1>Login</h1>
        <?php if (!empty($errors)): ?>
            <div class="error">
                <?php foreach ($errors as $error): ?>
                    <p><?php echo $error; ?></p>
                <?php endforeach; ?>
            </div>
        <?php endif; ?>
        <input type="email" name="email" placeholder="Email Address" required>
        <input type="password" name="password" placeholder="Password" required>
        <label>
            <input type="checkbox" name="remember_me"> Remember Me
        </label>
        <button type="submit">Login</button>
    </form>
</body>
</html>