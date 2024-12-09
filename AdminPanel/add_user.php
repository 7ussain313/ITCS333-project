<?php
require_once('C:/xampp/htdocs/ITCS333-project/database/connection.php');
session_start();

// Check if the user is an admin
if ($_SESSION['role'] != 'admin') {
    header("Location: login.php");
    exit();
}

// Handle new user addition
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $email = $_POST['email'];
    $phoneNumber = $_POST['phone_number'];
    $role = $_POST['role'];
    $departmentId = $_POST['department_id'];

    // Validate email format
    if (!preg_match("/^[0-9]+@stu\.uob\.edu\.bh$/", $email)) {
        $error = "Invalid email format. Please use 'anynumber@stu.uob.edu.bh'.";
    } else {
        // Check if email already exists
        $checkEmail = "SELECT * FROM Users WHERE email = :email";
        $stmt = $db->prepare($checkEmail);
        $stmt->bindParam(':email', $email);
        $stmt->execute();

        if ($stmt->rowCount() > 0) {
            $error = "Email Address Already Exists!";
        } else {
            // Insert the new user into the database
            $insertQuery = "INSERT INTO Users (firstName, lastName, email, phone_number, role, department_id) 
                            VALUES (:firstName, :lastName, :email, :phone_number, :role, :department_id)";
            $stmt = $db->prepare($insertQuery);
            $stmt->bindParam(':firstName', $firstName);
            $stmt->bindParam(':lastName', $lastName);
            $stmt->bindParam(':email', $email);
            $stmt->bindParam(':phone_number', $phoneNumber);
            $stmt->bindParam(':role', $role);
            $stmt->bindParam(':department_id', $departmentId);

            if ($stmt->execute()) {
                header("Location: user_management.php");
                exit();
            } else {
                $errorInfo = $db->errorInfo();
                $error = "Error: " . $errorInfo[2];
            }
        }
    }
}

// Fetch departments for the select input
$query = "SELECT * FROM Departments";
$stmt = $db->prepare($query);
$stmt->execute();
$departments = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">Add New User</h1>

        <?php if (isset($error)) : ?>
            <div class="alert alert-danger"><?php echo $error; ?></div>
        <?php endif; ?>

        <form action="add_user.php" method="POST">
            <div class="mb-3">
                <label for="firstName" class="form-label">First Name</label>
                <input type="text" name="firstName" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="lastName" class="form-label">Last Name</label>
                <input type="text" name="lastName" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" name="email" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="phone_number" class="form-label">Phone Number</label>
                <input type="text" name="phone_number" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="role" class="form-label">Role</label>
                <select name="role" class="form-control" required>
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="department_id" class="form-label">Department</label>
                <select name="department_id" class="form-control" required>
                    <?php foreach ($departments as $department) : ?>
                        <option value="<?php echo $department['id']; ?>"><?php echo $department['name']; ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
            <button type="submit" class="btn btn-success">Add User</button>
        </form>

        <a href="user_management.php" class="btn btn-primary mt-3">Back to User Management</a>
    </div>
</body>
</html>
