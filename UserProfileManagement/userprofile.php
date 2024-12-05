<?php
require 'config.php';
require 'db.php';

checkLogin();

$db = new Database();
$user = $db->getUser($_SESSION['user_id']);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile Management - IT College</title>
    <link rel="stylesheet" href="css/profile.css">
</head>
<body>
    <div class="container">
        <div class="profile-card">
            <div class="profile-header">
                <div class="profile-picture">
                    <img id="profileImage" src="<?php echo $user['profile_picture'] ?? 'images/default-profile.svg'; ?>" alt="Profile Picture">
                    <div class="picture-overlay" onclick="document.getElementById('profilePicInput').click()">
                        
                    </div>
                    <input type="file" id="profilePicInput" hidden accept="image/*">
                </div>
                <div class="profile-info">
                    <h1>Profile Management</h1>
                    <p>Update your personal information and preferences</p>
                </div>
            </div>

            <form id="profileForm">
                <div class="form-group">
                    <label for="fullName">Full Name</label>
                    <input type="text" id="fullName" name="fullName" value="<?php echo htmlspecialchars($user['full_name']); ?>" required>
                </div>

                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" value="<?php echo htmlspecialchars($user['email']); ?>" required>
                </div>

                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" value="<?php echo htmlspecialchars($user['phone']); ?>">
                </div>

                <div class="form-group">
                    <label for="department">Department</label>
                    <select id="department" name="department">
                        <option value="">Select Department</option>
                        <option value="cs" <?php echo $user['department'] == 'cs' ? 'selected' : ''; ?>>Computer Science</option>
                        <option value="is" <?php echo $user['department'] == 'is' ? 'selected' : ''; ?>>Information Systems</option>
                        <option value="se" <?php echo $user['department'] == 'ce' ? 'selected' : ''; ?>>Computer Engineering</option>
                    </select>
                </div>

                <button type="submit" class="btn">Save Changes</button>
            </form>
        </div>
    </div>
    <script src="js/profile.js"></script>
</body>
</html>