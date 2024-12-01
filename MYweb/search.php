<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $usersearch = $_POST["usersearch"];

    try {
        require_once "includes/dbh.inc.php";

        // Prepare SQL statement with placeholders
        $query = "SELECT * FROM users WHERE username = :usersearch";
        $stmt = $pdo->prepare($query);
        
        // Bind the parameter and execute the statement
        $stmt->bindParam(":usersearch", $usersearch);
        $stmt->execute();

        // Fetch all results
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

        $pdo = null;  // Close connection
        
    } catch (PDOException $e) {
        die("Query failed: " . $e->getMessage());
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<?php
if (empty($results)) {
    echo "NOT FOUND";
} else {
    var_dump($results);
}
?>

</body>
</html>
