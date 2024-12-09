<?php
require_once 'config.php';
require_once 'db.php';
require_once('../database/connection.php');

checkLogin();

header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        $db = new Database();

        // Ensure user ID is available
        if (!isset($_SESSION['user_id'])) {
            // echo json_encode(['success' => false, 'message' => 'User not logged in.']);
            exit;
        }

        $userId = $_SESSION['user_id'];
        $data = [
            'firstName' => $_POST['firstName'],
            'lastName' => $_POST['lastName'],
            'email' => $_POST['email'],
            'phone_number' => $_POST['phone'],
            'department_id' => $_POST['department']
        ];

        if ($db->updateUser($userId, $data)) {
            // echo json_encode(['success' => true]);
        } else {
            echo json_encode(['success' => false, 'message' => 'Failed to update profile.']);
        }
    } catch (Exception $e) {
        // echo json_encode(['success' => false, 'message' => $e->getMessage()]);
    }
}
?>