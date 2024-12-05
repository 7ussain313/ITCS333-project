<?php 
require_once('C:/xampp/htdocs/ITCS 333 Course Project/database/connection.php');

if (isset($_POST['signUp'])) {
    $firstName = $_POST['fName'];
    $lastName = $_POST['lName'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Regular expression to validate email format
    if (!preg_match("/^[0-9]+@stu\.uob\.edu\.bh$/", $email)) {
        echo "Invalid email format. Please use 'anynumber@stu.uob.edu.bh'.";
    } else {
        // Check if email already exists
        $checkEmail = $db->prepare("SELECT * FROM Users WHERE email = ?");
        $checkEmail->execute([$email]);
        if ($checkEmail->rowCount() > 0) {
            echo "Email Address Already Exists!";
        } else {
            // Insert the new user into the database
            $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
            $insertQuery = $db->prepare("INSERT INTO Users (name, email, password) VALUES (?, ?, ?)");
            if ($insertQuery->execute(["$firstName $lastName", $email, $hashedPassword])) {
                header("Location: homepage.php");
                exit();
            } else {
                echo "Error occurred during registration.";
            }
        }
    }
}

if (isset($_POST['signIn'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Verify email and password
    $sql = $db->prepare("SELECT * FROM Users WHERE email = ?");
    $sql->execute([$email]);
    $user = $sql->fetch(PDO::FETCH_ASSOC);

    if ($user && password_verify($password, $user['password'])) {
        session_start();
        $_SESSION['email'] = $user['email'];
        header("Location: homepage.php");
        exit();
    } else {
        echo "Incorrect Email or Password.";
    }
}
?>