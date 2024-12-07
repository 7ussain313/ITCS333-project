<?php
require_once 'config.php';
require_once 'db.php';
require_once('C:/xampp/htdocs/ITCS333-project/database/connection.php');

checkLogin();

header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        $db = new Database();

        $userId = $_SESSION['email'];
        
        $data = [
            'fullName' => $_POST['fullName'],
            'email' => $_POST['email'],
            'phone' => $_POST['phone'],
            'department' => $_POST['department']
        ];
        
        if ($db->updateUser($userId, $data)) {
            echo json_encode(['success' => true]);
        } else {
            echo json_encode(['success' => false, 'message' => 'Failed to update profile']);
        }
    } catch (Exception $e) {
        echo json_encode(['success' => false, 'message' => $e->getMessage()]);
    }
}
?>