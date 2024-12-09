<?php
require_once('../database/connection.php');
session_start();

// Check if the user is an admin
if ($_SESSION['role'] != 'admin') {
    header("Location: login.php");
    exit();
}

// Get the user ID from the query string
if (!isset($_GET['id'])) {
    echo "User ID not provided.";
    exit();
}

$userId = $_GET['id'];

// Fetch user data
$query = "SELECT * FROM Users WHERE id = :id";
$stmt = $db->prepare($query);
$stmt->bindParam(':id', $userId, PDO::PARAM_INT);
$stmt->execute();
$user = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$user) {
    echo "User not found.";
    exit();
}

// Fetch departments
$departmentsQuery = $db->query("SELECT id, name FROM Departments");
$departments = $departmentsQuery->fetchAll(PDO::FETCH_ASSOC);

// Handle the form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $firstName = $_POST['firstName'] ?? '';
    $lastName = $_POST['lastName'] ?? '';
    $email = $_POST['email'] ?? '';
    $phone = $_POST['phone_number'] ?? '';
    $departmentId = $_POST['department'] ?? '';

    // Validate inputs
    if (empty($firstName) || empty($lastName) || empty($email) || empty($departmentId)) {
        echo "<div class='alert alert-danger'>All fields are required.</div>";
    } else {
        // Update the user information
        $updateQuery = "UPDATE Users SET firstName = :firstName, lastName = :lastName, email = :email, phone_number = :phone, department_id = :departmentId WHERE id = :id";
        $updateStmt = $db->prepare($updateQuery);
        $updateStmt->bindParam(':firstName', $firstName);
        $updateStmt->bindParam(':lastName', $lastName);
        $updateStmt->bindParam(':email', $email);
        $updateStmt->bindParam(':phone', $phone);
        $updateStmt->bindParam(':departmentId', $departmentId);
        $updateStmt->bindParam(':id', $userId);

        if ($updateStmt->execute()) {
            echo "<div class='alert alert-success'>User updated successfully!</div>";
        } else {
            echo "<div class='alert alert-danger'>Error updating user.</div>";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4">Edit User</h1>
    <a href="user_management.php" class="btn btn-primary mb-3">Back to User Management</a>

    <form action="edit_user.php?id=<?php echo htmlspecialchars($userId); ?>" method="POST">
        <div class="mb-3">
            <label for="firstName" class="form-label">First Name</label>
            <input type="text" id="firstName" name="firstName" class="form-control" value="<?php echo htmlspecialchars($user['firstName'] ?? ''); ?>" required>
        </div>
        <div class="mb-3">
            <label for="lastName" class="form-label">Last Name</label>
            <input type="text" id="lastName" name="lastName" class="form-control" value="<?php echo htmlspecialchars($user['lastName'] ?? ''); ?>" required>
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" id="email" name="email" class="form-control" value="<?php echo htmlspecialchars($user['email'] ?? ''); ?>" required>
        </div>
        <div class="mb-3">
            <label for="phone_number" class="form-label">Phone Number</label>
            <input type="text" id="phone_number" name="phone_number" class="form-control" value="<?php echo htmlspecialchars($user['phone_number'] ?? ''); ?>">
        </div>
        <div class="mb-3">
            <label for="department" class="form-label">Department</label>
            <select id="department" name="department" class="form-control" required>
                <option value="">Select Department</option>
                <?php
                foreach ($departments as $department) {
                    $selected = ($user['department_id'] == $department['id']) ? 'selected' : '';
                    echo "<option value='{$department['id']}' {$selected}>{$department['name']}</option>";
                }
                ?>
            </select>
        </div>
        <button type="submit" class="btn btn-success">Update</button>
    </form>
</div>
</body>
</html>
