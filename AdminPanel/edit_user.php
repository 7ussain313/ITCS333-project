<?php
require_once('../database/connection.php');
session_start();

// Check if the user is an admin
if ($_SESSION['role'] != 'admin') {
    header("Location: ../the-login-and-signup/hi.php");
    exit();
}

// Get the user ID from the query string
if (!isset($_GET['id'])) {
    header("Location: user_management.php");
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
    $_SESSION['error'] = "User not found.";
    header("Location: user_management.php");
    exit();
}

// Fetch departments
$departmentsQuery = "SELECT * FROM Departments";
$departmentsStmt = $db->prepare($departmentsQuery);
$departmentsStmt->execute();
$departments = $departmentsStmt->fetchAll(PDO::FETCH_ASSOC);

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $firstName = trim($_POST['firstName']);
    $lastName = trim($_POST['lastName']);
    $email = trim($_POST['email']);
    $phone = trim($_POST['phone_number']);
    $departmentName = trim($_POST['department']);
    $role = trim($_POST['role']);

    // Validate inputs
    if (empty($firstName) || empty($lastName) || empty($email) || empty($departmentName)) {
        $error = "All fields are required.";
    } else if (!preg_match("/^[0-9]+@stu\.uob\.edu\.bh$/", $email)) {
        $error = "Invalid email format. Please use 'studentID@stu.uob.edu.bh'.";
    } else {
        // Update the user information
        $updateQuery = "UPDATE Users SET 
                        firstName = :firstName, 
                        lastName = :lastName, 
                        email = :email, 
                        phone_number = :phone, 
                        department_name = :department_name,
                        role = :role 
                        WHERE id = :id";
        
        $updateStmt = $db->prepare($updateQuery);
        
        try {
            $result = $updateStmt->execute([
                ':firstName' => $firstName,
                ':lastName' => $lastName,
                ':email' => $email,
                ':phone' => $phone,
                ':department_name' => $departmentName,
                ':role' => $role,
                ':id' => $userId
            ]);

            if ($result) {
                $_SESSION['success'] = "User updated successfully!";
                header("Location: user_management.php");
                exit();
            } else {
                $error = "Error updating user.";
            }
        } catch (PDOException $e) {
            $error = "Database error: " . $e->getMessage();
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit User - Admin Panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="../theme.css">
    <style>
        .edit-user-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 2rem;
            background: var(--card-background);
            border-radius: var(--border-radius);
            box-shadow: var(--shadow);
        }
        .form-label {
            font-weight: 500;
            color: var(--text-dark);
        }
        .role-select {
            background-color: var(--input-background);
            border: none;
            border-radius: 10px;
            padding: 0.8rem 1.2rem;
        }
    </style>
</head>
<body>
    <?php include 'admin_navbar.php'; ?>

    <div class="container mt-5">
        <div class="edit-user-container">
            <h1 class="mb-4">Edit User</h1>
            
            <?php if (isset($error)): ?>
                <div class="alert alert-danger"><?php echo $error; ?></div>
            <?php endif; ?>

            <form method="POST" class="needs-validation" novalidate>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="firstName" class="form-label">First Name</label>
                        <input type="text" class="form-control" id="firstName" name="firstName" 
                               value="<?php echo htmlspecialchars($user['firstName']); ?>" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="lastName" class="form-label">Last Name</label>
                        <input type="text" class="form-control" id="lastName" name="lastName" 
                               value="<?php echo htmlspecialchars($user['lastName']); ?>" required>
                    </div>
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" 
                           value="<?php echo htmlspecialchars($user['email']); ?>" required>
                    <div class="form-text">Format: studentID@stu.uob.edu.bh</div>
                </div>

                <div class="mb-3">
                    <label for="phone_number" class="form-label">Phone Number</label>
                    <input type="tel" class="form-control" id="phone_number" name="phone_number" 
                           value="<?php echo htmlspecialchars($user['phone_number']); ?>">
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="department" class="form-label">Department</label>
                        <select id="department" name="department" class="form-control" required>
                            <?php foreach ($departments as $department): ?>
                                <option value="<?php echo htmlspecialchars($department['name']); ?>"
                                    <?php echo ($user['department_name'] == $department['name']) ? 'selected' : ''; ?>>
                                    <?php echo htmlspecialchars($department['name']); ?>
                                </option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="role" class="form-label">Role</label>
                        <select id="role" name="role" class="form-control role-select">
                            <option value="user" <?php echo ($user['role'] == 'user') ? 'selected' : ''; ?>>User</option>
                            <option value="admin" <?php echo ($user['role'] == 'admin') ? 'selected' : ''; ?>>Admin</option>
                        </select>
                    </div>
                </div>

                <div class="mt-4">
                    <button type="submit" class="btn btn-primary">Update User</button>
                    <a href="user_management.php" class="btn btn-secondary ms-2">Cancel</a>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Form validation
        (function() {
            'use strict';
            const forms = document.querySelectorAll('.needs-validation');
            Array.from(forms).forEach(form => {
                form.addEventListener('submit', event => {
                    if (!form.checkValidity()) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        })();
    </script>
</body>
</html>
