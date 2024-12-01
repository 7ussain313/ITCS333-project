<?Php

$dsn = "mysql:host=localhost;dbname=firsthussain";
$dbusername = "root";
$dppassword = "";

try{
    $pdo = new PDO($dsn , $dbusername , $dppassword);
    $pdo->setAttribute(PDO ::ATTR_ERRMODE , PDO ::ERRMODE_EXCEPTION);
} catch( PDOException $e ) {
  
    echo " faild  to connect to the query" . $e->getMessage();
}
