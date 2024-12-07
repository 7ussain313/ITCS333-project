<?php

checkLogin();

class Database {
    private $conn;

    public function __construct() {
        try {
            $this->conn = new PDO(
                "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=utf8",
                DB_USER,
                DB_PASS
            );
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            die("Connection failed: " . $e->getMessage());
        }
    }

    // Get the connection instance
    public function getConnection() {
        return $this->conn;
    }

    // Fetch user details by ID
    public function getUser($userId) {
        $stmt = $this->conn->prepare("SELECT * FROM Users WHERE id = ?");
        $stmt->execute([$userId]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    // Fetch all departments
    public function getDepartments() {
        $stmt = $this->conn->query("SELECT id, name FROM Departments");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Update user details
    public function updateUser($userId, $data) {
        $query = "UPDATE Users SET 
                    firstName = :firstName, 
                    lastName = :lastName, 
                    email = :email, 
                    phone_number = :phone_number, 
                    department_id = :department_id 
                    WHERE id = :userId";

        $stmt = $this->conn->prepare($query);
        $result = $stmt->execute([
            ':firstName' => $data['firstName'],
            ':lastName' => $data['lastName'],
            ':email' => $data['email'],
            ':phone_number' => $data['phone_number'],
            ':department_id' => $data['department_id'],
            ':userId' => $userId
        ]);

        if (!$result) {
            error_log('SQL Error: ' . implode(', ', $stmt->errorInfo()));
        }

        return $result;
    }

    // Update profile picture
    public function updateProfilePicture($userId, $imagePath) {
        try {
            $stmt = $this->conn->prepare("
                UPDATE Users 
                SET profile_picture = ? 
                WHERE id = ?
            ");
            $result = $stmt->execute([$imagePath, $userId]);
    
            if (!$result) {
                error_log('Database error: ' . implode(', ', $stmt->errorInfo()));
            }
            return $result;
        } catch (Exception $e) {
            error_log('Error in updateProfilePicture: ' . $e->getMessage());
            return false;
        }
    }
    
    
}
?>