<?php
require_once 'config.php';
require_once('../database/connection.php');
require_once('db.php');

checkLogin();

// Get the logged-in user's ID from the session
if (!isset($_SESSION['user_id'])) {
    die("Error: User not logged in.");
}
$userId = $_SESSION['user_id'];

try {
    // Fetch user details from the database
    $db = new Database();
    $user = $db->getUser($userId);
    $departments = $db->getDepartments();

    if (!$user) {
        throw new Exception("User not found.");
    }
} catch (Exception $e) {
    die("Error: " . $e->getMessage());
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile Management - IT College</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../common_styles.css">
    <style>
        .profile-card {
            background: var(--white);
            border-radius: 30px;
            box-shadow: var(--shadow);
            padding: 2rem;
            margin-top: 2rem;
        }
        
        .profile-header {
            text-align: center;
            margin-bottom: 2rem;
        }
        
        .profile-picture-container {
            position: relative;
            width: 150px;
            height: 150px;
            margin: 0 auto 1rem;
            cursor: pointer;
        }
        
        .profile-picture {
            width: 100%;
            height: 100%;
            border-radius: 50%;
            object-fit: cover;
        }
        
        .profile-picture-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border-radius: 50%;
            background: rgba(0, 0, 0, 0.3);
            display: flex;
            justify-content: center;
            align-items: center;
            opacity: 0;
            transition: opacity 0.2s;
        }
        
        .profile-picture-container:hover .profile-picture-overlay {
            opacity: 1;
        }
        
        .profile-picture-overlay i {
            color: white;
            font-size: 1.5rem;
        }
        
        .profile-name {
            font-size: 1.5rem;
            font-weight: 600;
            color: var(--primary);
            margin-bottom: 0.5rem;
        }
        
        .profile-email {
            color: var(--text-muted);
        }
        
        .profile-form {
            max-width: 600px;
            margin: 0 auto;
        }
        
        .form-group {
            margin-bottom: 1.5rem;
        }
        
        .form-label {
            font-weight: 500;
            color: var(--text);
        }
        
        .form-control {
            border-radius: 10px;
            border: 1px solid var(--border);
            padding: 0.75rem;
        }
        
        .form-control:focus {
            border-color: var(--primary);
            box-shadow: 0 0 0 0.2rem rgba(var(--primary-rgb), 0.25);
        }
        
        .btn-update {
            background: linear-gradient(135deg, #FFC67D 0%, #8BC34A 100%);
            border: none;
            padding: 0.75rem 2rem;
            border-radius: 10px;
            font-weight: 500;
            color: white;
            transition: transform 0.3s ease;
        }
        
        .btn-update:hover {
            transform: translateY(-2px);
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="profile-card">
            <div class="profile-header">
                <?php if (isset($_SESSION['error'])): ?>
                    <div class="alert alert-danger">
                        <?php 
                        echo $_SESSION['error'];
                        unset($_SESSION['error']);
                        ?>
                    </div>
                <?php endif; ?>
                
                <?php if (isset($_SESSION['success'])): ?>
                    <div class="alert alert-success">
                        <?php 
                        echo $_SESSION['success'];
                        unset($_SESSION['success']);
                        ?>
                    </div>
                <?php endif; ?>

                <form action="upload_profile_pic.php" method="POST" enctype="multipart/form-data" id="profilePicForm">
                    <div class="profile-picture-container" onclick="document.getElementById('profilePicInput').click();">
                        <img src="<?php echo htmlspecialchars($user['profile_picture'] ?? 'default-profile.jpg'); ?>" alt="Profile Picture" class="profile-picture" id="profilePicPreview">
                        <div class="profile-picture-overlay">
                            <i class="fas fa-camera"></i>
                        </div>
                        <input type="file" name="profile_picture" id="profilePicInput" style="display: none;" accept="image/*">
                    </div>
                </form>

                <h2 class="profile-name"><?php echo htmlspecialchars($user['firstName'] . ' ' . $user['lastName']); ?></h2>

            </div>

            <form class="profile-form" method="POST" action="update_profile.php">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="form-label">First Name</label>
                            <input type="text" class="form-control" name="firstName" value="<?php echo htmlspecialchars($user['firstName']); ?>" required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="form-label">Last Name</label>
                            <input type="text" class="form-control" name="lastName" value="<?php echo htmlspecialchars($user['lastName']); ?>" required>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="form-label">Email</label>
                    <input type="email" class="form-control" name="email" value="<?php echo htmlspecialchars($user['email']); ?>" required>
                </div>

                <div class="form-group">
                    <label class="form-label">Phone Number</label>
                    <input type="tel" class="form-control" name="phone_number" value="<?php echo htmlspecialchars($user['phone_number'] ?? ''); ?>">
                </div>

                <div class="form-group">
                    <label class="form-label">Department</label>
                    <select class="form-control" name="department_name">
                        <option value="">Select Department</option>
                        <?php foreach ($departments as $department): ?>
                            <option value="<?php echo htmlspecialchars($department['name']); ?>" 
                                    <?php echo ($user['department_name'] === $department['name']) ? 'selected' : ''; ?>>
                                <?php echo htmlspecialchars($department['name']); ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>

                <div class="text-center">
                    <button type="submit" class="btn btn-update">Update Profile</button>
                </div>
                <div style="height: 20px;"></div>
            </form>
            <div class="text-center">
     <a href="../index.php" class="btn btn-primary">Home Page</a>
    </div>
        </div>
        
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.getElementById('profilePicInput').addEventListener('change', function(e) {
            if (this.files && this.files[0]) {
                const file = this.files[0];
                
                // Validate file type
                if (!file.type.startsWith('image/')) {
                    alert('Please select an image file');
                    return;
                }
                
                // Validate file size (5MB)
                if (file.size > 5 * 1024 * 1024) {
                    alert('File size should be less than 5MB');
                    return;
                }

                // Show preview
                const reader = new FileReader();
                reader.onload = function(e) {
                    document.getElementById('profilePicPreview').src = e.target.result;
                }
                reader.readAsDataURL(file);

                // Submit form
                document.getElementById('profilePicForm').submit();
            }
        });
    </script>
</body>
</html>