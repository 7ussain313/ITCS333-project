<?php
require_once 'config.php';
require_once('C:/xampp/htdocs/ITCS333-project/database/connection.php');
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
    <link rel="stylesheet" href="profile.css">
</head>
<body>
    <div class="container">
        <div class="profile-card">
            <div class="profile-header">
                <div class="profile-picture">
                    <img id="profileImage" src="<?php echo $user['profile_picture'] ?? 'images/default-profile.svg'; ?>" alt="Profile Picture">
                    <div class="picture-overlay" onclick="document.getElementById('profilePicInput').click()"></div>
                    <input type="file" id="profilePicInput" hidden accept="image/*">
                </div>
                <div class="profile-info">
                    <h1>Profile Management</h1>
                    <p>Update your personal information and preferences</p>
                </div>
            </div>

            <form id="profileForm">
                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <input type="text" id="firstName" name="firstName" value="<?php echo htmlspecialchars($user['firstName']); ?>" required>
                </div>

                <div class="form-group">
                    <label for="lastName">Last Name</label>
                    <input type="text" id="lastName" name="lastName" value="<?php echo htmlspecialchars($user['lastName'] ?? ''); ?>" required>
                </div>

                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" value="<?php echo htmlspecialchars($user['email']); ?>" required>
                </div>

                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" name="phone" value="<?php echo htmlspecialchars($user['phone_number'] ?? ''); ?>" required>

                </div>

                <div class="form-group">
                    <label for="department">Department</label>
                    <select id="department" name="department" required>
                        <option value="">Select Department</option>
                        <?php
                        // Fetch departments dynamically
                        $departmentsQuery = $db->getConnection()->query("SELECT id, name FROM Departments");
                        while ($department = $departmentsQuery->fetch(PDO::FETCH_ASSOC)) {
                            $selected = ($user['department_id'] == $department['id']) ? 'selected' : '';
                            echo "<option value='{$department['id']}' {$selected}>{$department['name']}</option>";
                        }
                        ?>
                    </select>
                </div>

                <button type="submit" class="btn">Save Changes</button>
            </form>
            <!-- Button to return to index.php -->
            <form action="/ITCS333-project/index.php" method="get">
                <button type="submit" class="btn">Return to Home</button>
            </form>

        </div>
    </div>
    <script src="profile.js"></script>
</body>
</html>