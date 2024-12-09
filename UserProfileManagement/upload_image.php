<?php
require_once 'config.php';
require_once 'db.php';
require_once('../database/connection.php');

checkLogin();

header('Content-Type: application/json');

// Enable error reporting
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['profile_picture'])) {
    try {
        $file = $_FILES['profile_picture'];

        // Debug uploaded file details
        error_log('File details: ' . print_r($file, true));

        // Validate file type
        $allowedTypes = ['image/jpeg', 'image/png', 'image/gif'];
        if (!in_array($file['type'], $allowedTypes)) {
            throw new Exception('Invalid file type. Allowed types: JPEG, PNG, GIF.');
        }

        // Ensure the upload directory exists
        $uploadDir = 'uploads/profile_pictures/';
        if (!file_exists($uploadDir)) {
            if (!mkdir($uploadDir, 0777, true)) {
                throw new Exception('Failed to create upload directory.');
            }
        }

        // Generate a unique file name
        $fileName = uniqid() . '_' . basename($file['name']);
        $targetPath = $uploadDir . $fileName;

        // Attempt to move the uploaded file
        if (move_uploaded_file($file['tmp_name'], $targetPath)) {
            $db = new Database();
            $userId = $_SESSION['user_id'];

            // Update database with the new profile picture path
            if ($db->updateProfilePicture($userId, $targetPath)) {
                echo json_encode([
                    'success' => true,
                    'image_url' => $targetPath,
                ]);
            } else {
                throw new Exception('Failed to update profile picture in the database.');
            }
        } else {
            throw new Exception('Failed to move the uploaded file.');
        }
    } catch (Exception $e) {
        error_log('Error in upload_image.php: ' . $e->getMessage()); // Log the error
        echo json_encode([
            'success' => false,
            'message' => $e->getMessage(),
        ]);
    }
} else {
    echo json_encode([
        'success' => false,
        'message' => 'No file uploaded or invalid request.',
    ]);
}
?>
