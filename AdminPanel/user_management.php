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
    <title>User Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Montserrat', sans-serif;
        }
        .user-card {
            background: white;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            margin-bottom: 20px;
            border: none;
        }
        .user-card:hover {
            transform: translateY(-5px);
        }
        .role-badge {
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-size: 0.9rem;
            font-weight: 500;
        }
        .role-badge.admin {
            background-color: #FFC67D;
            color: white;
        }
        .role-badge.user {
            background-color: #8BC34A;
            color: white;
        }
        .btn-update {
            background: linear-gradient(135deg, #FFC67D 0%, #8BC34A 100%);
            border: none;
            color: white;
            padding: 0.5rem 1.5rem;
            border-radius: 20px;
            transition: all 0.3s ease;
        }
        .btn-update:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            color: white;
        }
    </style>
</head>
<body>
    <?php include 'admin_navbar.php'; ?>

    <div class="container mt-4">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h2>User Management</h2>
            <a href="admin_dashboard.php" class="btn btn-update">
                <i class="fas fa-arrow-left me-2"></i>Back to Dashboard
            </a>
        </div>

        <?php if (isset($successMessage)): ?>
            <div class="alert alert-success" role="alert">
                <?php echo $successMessage; ?>
            </div>
        <?php endif; ?>

        <?php if (isset($errorMessage)): ?>
            <div class="alert alert-danger" role="alert">
                <?php echo $errorMessage; ?>
            </div>
        <?php endif; ?>

        <div class="row">
            <?php foreach ($users as $user): ?>
                <div class="col-md-6 col-lg-4">
                    <div class="user-card p-4">
                        <div class="d-flex align-items-center mb-3">
                            <i class="fas fa-user-circle fa-2x me-3" style="color: #FFC67D;"></i>
                            <div>
                                <h5 class="mb-1"><?php echo htmlspecialchars($user['firstName']); ?></h5>
                                <span class="text-muted"><?php echo htmlspecialchars($user['email']); ?></span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <span class="role-badge <?php echo $user['role'] === 'admin' ? 'admin' : 'user'; ?>">
                                <?php echo ucfirst(htmlspecialchars($user['role'])); ?>
                            </span>
                        </div>
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
            <?php endforeach; ?>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
