<?php 
require_once('C:/xampp/htdocs/ITCS-333-Course-Project/database/connection.php');


if (isset($_POST['signUp'])) {
    $firstName = $_POST['fName'];
    $lastName = $_POST['lName'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $password = md5($password);

    // Regular expression to validate email format (anynumber@stu.uob.edu.bh)
    if (!preg_match("/^[0-9]+@stu\.uob\.edu\.bh$/", $email)) {
        echo "Invalid email format. Please use 'anynumber@stu.uob.edu.bh'.";
    } else {
        // Check if email already exists
        $checkEmail = "SELECT * FROM users WHERE email='$email'";
        $result = $db->query($checkEmail);
        if ($result->rowCount() > 0) {
            echo "Email Address Already Exists!";
        } else {
            // Insert the new user into the database
            $insertQuery = "INSERT INTO users (firstName, lastName, email, password) 
                            VALUES ('$firstName', '$lastName', '$email', '$password')";
                            
            if ($db->query($insertQuery) ) {
                // Start a session and set session variables
                session_start();
                $_SESSION['email'] = $email;
                $_SESSION['firstName'] = $firstName;
                $_SESSION['lastName'] = $lastName;

                // Redirect to homepage
                header("Location: http://localhost/ITCS-333-Course-Project/index.php");
                exit();
            } else {
                $errorInfo = $db->errorInfo();
                echo "Error: " . $errorInfo[2];
            }
        }
    }
}

if (isset($_POST['signIn'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];
    $password = md5($password);

    // Check if email and password match
    $sql = "SELECT * FROM users WHERE email = :email AND password = :password";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':email', $email);
    $stmt->bindParam(':password', $password);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
        session_start();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        $_SESSION['email'] = $row['email'];
        $_SESSION['firstName'] = $row['firstName'];
        $_SESSION['lastName'] = $row['lastName'];
        $_SESSION['role'] = $row['role'];
        $_SESSION['user_id'] = $row['id'];
        header("Location: http://localhost/ITCS-333-Course-Project/index.php");

        exit();
    } else {
        echo "Not Found, Incorrect Email or Password";
    }
}
?>
