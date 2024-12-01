<?php 

include 'connect.php';

if(isset($_POST['signUp'])){
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
        $result = $conn->query($checkEmail);
        if($result->num_rows > 0){
            echo "Email Address Already Exists!";
        }
        else {
            // Insert the new user into the database
            $insertQuery = "INSERT INTO users(firstName, lastName, email, password) 
                            VALUES ('$firstName', '$lastName', '$email', '$password')";
            if($conn->query($insertQuery) === TRUE){
                header("Location: view.php");
            } else {
                echo "Error: " . $conn->error;
            }
        }
    }
}

if(isset($_POST['signIn'])){
   $email = $_POST['email'];
   $password = $_POST['password'];
   $password = md5($password);
   
   // Check if email and password match
   $sql = "SELECT * FROM users WHERE email='$email' and password='$password'";
   $result = $conn->query($sql);
   if($result->num_rows > 0){
       session_start();
       $row = $result->fetch_assoc();
       $_SESSION['email'] = $row['email'];
       header("Location: homepage.php");
       exit();
   } else {
       echo "Not Found, Incorrect Email or Password";
   }
}
?>
