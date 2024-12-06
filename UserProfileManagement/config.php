<?php
session_start();
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'it_college_booking'); 
// Check if user is logged in
function checkLogin(): void {
    if (!isset($_SESSION['user_id'])) {
        header("Location: http://localhost/ITCS-333-Course-Project/index.php");
        exit();
    }
}
?>
