<?php
require_once('C:/xampp/htdocs/ITCS333-project/database/connection.php');
session_start();

// Check if the user is an admin
if ($_SESSION['role'] != 'admin') {
    header("Location: login.php");
    exit();
}

// Fetch the list of users along with their department names
$query = "SELECT Users.*, Departments.name AS department_name FROM Users
          LEFT JOIN Departments ON Users.department_id = Departments.id";
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
        echo "<div class='alert alert-success'>User role updated successfully!</div>";
    } else {
        echo "<div class='alert alert-danger'>Error updating user role.</div>";
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">User Management</h1>

        <!-- Button to go back to dashboard -->
        <a href="admin_dashboard.php" class="btn btn-primary mb-3">Back to Dashboard</a>

       

        <!-- Table to display users -->
        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                    <th>Role</th>
                    <th>Department</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody id="user-table">
                <?php foreach ($users as $user) : ?>
                    <tr id="user-<?php echo $user['id']; ?>">
                        <td><?php echo htmlspecialchars($user['firstName'] ?? 'N/A'); ?></td>
                        <td><?php echo htmlspecialchars($user['lastName'] ?? 'N/A'); ?></td>
                        <td><?php echo htmlspecialchars($user['email'] ?? 'N/A'); ?></td>
                        <td><?php echo htmlspecialchars($user['phone_number'] ?? 'N/A'); ?></td>
                        <td>
                            <form action="user_management.php" method="POST" style="display:inline;">
                                <input type="hidden" name="user_id" value="<?php echo $user['id']; ?>">
                                <select name="role" class="form-control form-control-sm" onchange="this.form.submit()">
                                    <option value="user" <?php echo $user['role'] == 'user' ? 'selected' : ''; ?>>User</option>
                                    <option value="admin" <?php echo $user['role'] == 'admin' ? 'selected' : ''; ?>>Admin</option>
                                </select>
                            </form>
                        </td>
                        <td><?php echo htmlspecialchars($user['department_name'] ?? 'N/A'); ?></td>
                        <td>
                            <a href="edit_user.php?id=<?php echo $user['id']; ?>" class="btn btn-warning btn-sm">Edit</a>
                            <button type="button" class="btn btn-danger btn-sm delete-btn" data-id="<?php echo $user['id']; ?>">Delete</button>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

         <!-- Button to add a new user -->
         <a href="add_user.php" class="btn btn-success mb-3">Add New User</a>

    </div>

    <!-- Include Bootstrap JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        $(document).ready(function(){
            // Handle delete button click
            $(".delete-btn").click(function(){
                var userId = $(this).data("id");

                // Confirm the action
                if (confirm("Are you sure you want to delete this user?")) {
                    // Make AJAX request to delete the user
                    $.ajax({
                        url: 'delete_user.php',
                        method: 'POST',
                        data: { user_id: userId },
                        success: function(response) {
                            if (response == 'success') {
                                // Remove the row from the table
                                $("#user-" + userId).remove();
                            } else {
                                alert('Error deleting user.');
                            }
                        }
                    });
                }
            });
        });
    </script>
</body>
</html>
