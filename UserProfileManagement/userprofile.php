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
    <link rel="stylesheet" href="profile.css">
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
        
        .profile-picture {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 1rem;
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
                <img src="<?php echo htmlspecialchars($user['profile_picture'] ?? 'default-profile.jpg'); ?>" alt="Profile Picture" class="profile-picture">
                <h2 class="profile-name"><?php echo htmlspecialchars($user['firstName'] . ' ' . $user['lastName']); ?></h2>
                <!-- <p class="profile-email"><?php echo htmlspecialchars($user['email']); ?></p> -->
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
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>