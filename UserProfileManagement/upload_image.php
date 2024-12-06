<?php
require_once 'config.php';
require_once 'db.php';
require_once('C:/xampp/htdocs/ITCS-333-Course-Project/database/connection.php');

checkLogin();

header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['profile_picture'])) {
    try {
        $file = $_FILES['profile_picture'];
        $allowedTypes = ['image/jpeg', 'image/png', 'image/gif'];
        
        if (!in_array($file['type'], $allowedTypes)) {
            throw new Exception('Invalid file type');
        }
        
        $uploadDir = 'uploads/profile_pictures/';
        if (!file_exists($uploadDir)) {
            mkdir($uploadDir, 0777, true);
        }
        
        $fileName = uniqid() . '_' . basename($file['name']);
        $targetPath = $uploadDir . $fileName;
        
        if (move_uploaded_file($file['tmp_name'], $targetPath)) {
            $db = new Database();
            if ($db->updateProfilePicture($_SESSION['user_id'], $targetPath)) {
                echo json_encode([
                    'success' => true,
                    'image_url' => $targetPath
                ]);
            } else {
                echo json_encode([
                    'success' => false,
                    'message' => 'Failed to update database'
                ]);
            }
        } else {
            echo json_encode([
                'success' => false,
                'message' => 'Failed to upload file'
            ]);
        }
    } catch (Exception $e) {
        echo json_encode([
            'success' => false,
            'message' => $e->getMessage()
        ]);
    }
}
?>