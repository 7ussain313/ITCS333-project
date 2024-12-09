<?php
require_once 'config.php';
require_once 'db.php';
require_once('../database/connection.php');

checkLogin();

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        $db = new Database();

        // Ensure user ID is available
        if (!isset($_SESSION['user_id'])) {
            die("User not logged in.");
        }

        $userId = $_SESSION['user_id'];
        $data = [
            'firstName' => $_POST['firstName'],
            'lastName' => $_POST['lastName'],
            'email' => $_POST['email'],
            'phone_number' => $_POST['phone_number'],
            'department_name' => $_POST['department_name']
        ];

        if ($db->updateUser($userId, $data)) {
            // Set success message in session
            $_SESSION['success'] = "Your information has been updated successfully.";
        } else {
            // Set error message in session
            $_SESSION['error'] = "Failed to update your profile. Please try again.";
        }
    } catch (Exception $e) {
        $_SESSION['error'] = "An error occurred: " . $e->getMessage();
    }

    // Redirect back to the user profile page
    header("Location: ../UserProfileManagement/userprofile.php");
    exit;
}
?>
