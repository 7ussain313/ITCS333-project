<?php
require_once 'config.php';
require_once 'db.php';
require_once('C:/xampp/htdocs/ITCS-333-Course-Project/database/connection.php');

checkLogin();

header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        $db = new Database();
        
        $data = [
            'fullName' => $_POST['fullName'],
            'email' => $_POST['email'],
            'phone' => $_POST['phone'],
            'department' => $_POST['department']
        ];
        
        if ($db->updateUser($_SESSION['user_id'], $data)) {
            echo json_encode(['success' => true]);
        } else {
            echo json_encode(['success' => false, 'message' => 'Failed to update profile']);
        }
    } catch (Exception $e) {
        echo json_encode(['success' => false, 'message' => $e->getMessage()]);
    }
}
?>