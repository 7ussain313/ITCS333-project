<?php
require_once('../database/connection.php');
session_start();

// Check if the user is an admin
if (!isset($_SESSION['role']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../the-login-and-signup/hi.php");
    exit();
}

// Fetch the list of users
$query = "SELECT * FROM Users";
$stmt = $db->prepare($query);
$stmt->execute();
$users = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Handle role update
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['role'])) {
    $userId = $_POST['user_id'];
    $role = $_POST['role'];

    $updateQuery = "UPDATE Users SET role = :role WHERE id = :id";
    $updateStmt = $db->prepare($updateQuery);
    $updateStmt->bindParam(':role', $role);
    $updateStmt->bindParam(':id', $userId);

    if ($updateStmt->execute()) {
        $successMessage = "User role updated successfully!";
    } else {
        $errorMessage = "Error updating user role.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management - Admin Panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="../theme.css">
    <style>
        .user-card {
            background: var(--card-background);
            border-radius: var(--border-radius);
            box-shadow: var(--shadow);
            margin-bottom: 1.5rem;
            transition: transform 0.2s;
        }
        .user-card:hover {
            transform: translateY(-5px);
        }
        .role-badge {
            padding: 0.5rem 1rem;
            border-radius: 50px;
            font-size: 0.875rem;
            font-weight: 500;
        }
        .role-badge.admin {
            background-color: var(--primary-color);
            color: white;
        }
        .role-badge.user {
            background-color: var(--secondary-color);
            color: white;
        }
        .user-actions {
            display: flex;
            gap: 0.5rem;
        }
        .btn-edit {
            background-color: var(--secondary-color);
            color: white;
        }
        .btn-delete {
            background-color: #dc3545;
            color: white;
        }
    </style>
</head>
<body>
    <?php include 'admin_navbar.php'; ?>

    <div class="container mt-5">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h1>User Management</h1>
            <a href="add_user.php" class="btn btn-primary">
                <i class="fas fa-plus me-2"></i>Add New User
            </a>
        </div>

        <?php if (isset($successMessage)): ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <?php echo $successMessage; ?>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        <?php endif; ?>

        <?php if (isset($errorMessage)): ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <?php echo $errorMessage; ?>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        <?php endif; ?>

        <div class="row">
            <?php foreach ($users as $user): ?>
                <div class="col-md-6 col-lg-4 mb-4">
                    <div class="user-card p-4">
                        <div class="d-flex justify-content-between align-items-start mb-3">
                            <div class="d-flex align-items-center">
                                <i class="fas fa-user-circle fa-2x me-3" style="color: #FFC67D;"></i>
                                <div>
                                    <h5 class="mb-1"><?php echo htmlspecialchars($user['firstName'] . ' ' . $user['lastName']); ?></h5>
                                    <span class="text-muted"><?php echo htmlspecialchars($user['email']); ?></span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="mb-3">
                            <span class="role-badge <?php echo $user['role']; ?>">
                                <?php echo ucfirst(htmlspecialchars($user['role'])); ?>
                            </span>
                        </div>
                        
                        <div class="user-info mb-3">
                            <p class="mb-1">
                                <i class="fas fa-phone-alt me-2"></i>
                                <?php echo htmlspecialchars($user['phone_number'] ?? 'No phone number'); ?>
                            </p>
                            <p class="mb-1">
                                <i class="fas fa-building me-2"></i>
                                <?php echo htmlspecialchars($user['department_name'] ?? 'No department'); ?>
                            </p>
                        </div>

                        <div class="user-actions">
                            <a href="edit_user.php?id=<?php echo $user['id']; ?>" class="btn btn-edit">
                                <i class="fas fa-edit me-1"></i> Edit
                            </a>
                            <?php if ($user['id'] != $_SESSION['user_id']): ?>
                                <button class="btn btn-delete" onclick="confirmDelete(<?php echo $user['id']; ?>)">
                                    <i class="fas fa-trash-alt me-1"></i> Delete
                                </button>
                            <?php endif; ?>
                            <form method="POST" class="mt-3">
                                <input type="hidden" name="user_id" value="<?php echo $user['id']; ?>">
                                <div class="input-group">
                                    <select name="role" class="form-select rounded-start">
                                        <option value="user" <?php echo $user['role'] === 'user' ? 'selected' : ''; ?>>User</option>
                                        <option value="admin" <?php echo $user['role'] === 'admin' ? 'selected' : ''; ?>>Admin</option>
                                    </select>
                                    <button type="submit" class="btn btn-update">Update Role</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function confirmDelete(userId) {
            if (confirm('Are you sure you want to delete this user?')) {
                fetch('delete_user.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/x-www-form-urlencoded',
                    },
                    body: 'user_id=' + userId
                })
                .then(response => response.text())
                .then(result => {
                    if (result === 'success') {
                        location.reload();
                    } else {
                        alert('Error deleting user');
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('Error deleting user');
                });
            }
        }
    </script>
</body>
</html>
