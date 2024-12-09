<?php
require_once 'config.php';
require_once('C:/xampp/htdocs/ITCS333-project/database/connection.php');
require_once('db.php');

session_start();

if (!isset($_SESSION['user_id'])) {
    header('Location: ../index.php');
    exit();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['profile_picture'])) {
    $file = $_FILES['profile_picture'];
    $userId = $_SESSION['user_id'];
    
    // Validate file
    if ($file['error'] !== UPLOAD_ERR_OK) {
        $_SESSION['error'] = "Upload failed. Please try again.";
        header('Location: userprofile.php');
        exit();
    }

    // Validate file type
    $allowedTypes = ['image/jpeg', 'image/png', 'image/gif'];
    if (!in_array($file['type'], $allowedTypes)) {
        $_SESSION['error'] = "Invalid file type. Please upload an image file.";
        header('Location: userprofile.php');
        exit();
    }

    // Validate file size (5MB max)
    if ($file['size'] > 5 * 1024 * 1024) {
        $_SESSION['error'] = "File is too large. Maximum size is 5MB.";
        header('Location: userprofile.php');
        exit();
    }

    // Create uploads directory if it doesn't exist
    $uploadDir = __DIR__ . '/uploads/';
    if (!file_exists($uploadDir)) {
        mkdir($uploadDir, 0777, true);
    }

    // Generate unique filename
    $extension = pathinfo($file['name'], PATHINFO_EXTENSION);
    $filename = 'profile_' . $userId . '_' . uniqid() . '.' . $extension;
    $uploadPath = $uploadDir . $filename;

    // Move uploaded file
    if (move_uploaded_file($file['tmp_name'], $uploadPath)) {
        try {
            $db = new Database();
            $relativePath = 'uploads/' . $filename;
            
            // Get current profile picture
            $user = $db->getUser($userId);
            
            // Update database
            if ($db->updateProfilePicture($userId, $relativePath)) {
                // Delete old profile picture if it exists and is not the default
                if ($user && !empty($user['profile_picture']) && 
                    $user['profile_picture'] !== 'default-profile.jpg' &&
                    file_exists(__DIR__ . '/' . $user['profile_picture'])) {
                    unlink(__DIR__ . '/' . $user['profile_picture']);
                }
                $_SESSION['success'] = "Profile picture updated successfully!";
            } else {
                $_SESSION['error'] = "Failed to update profile picture in database.";
            }
        } catch (Exception $e) {
            $_SESSION['error'] = "An error occurred: " . $e->getMessage();
        }
    } else {
        $_SESSION['error'] = "Failed to save the uploaded file.";
    }
} else {
    $_SESSION['error'] = "No file uploaded.";
}

header('Location: userprofile.php');
exit();
?>
