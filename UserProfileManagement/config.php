<?php
session_start();
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'it_college_booking'); 
// Check if user is logged in
function checkLogin() {
    if (!isset($_SESSION['email'])) {
        header("Location: ../index.php");
        exit();
    }
}
?>
