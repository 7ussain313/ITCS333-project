<?php
if($_SERVER["REQUEST_METHOD"] == "POST"){
    
    $firstname = htmlspecialchars($_POST["firstname"]);
    $lastname = htmlspecialchars($_POST["lastname"]);
    $bet = htmlspecialchars($_POST["favouritepet"]);

    if(empty($firstname)){
        exit();
    }
    echo "Here is your data:";
    echo "<br>";
    echo $firstname;
    echo "<br>";
    echo $lastname;
    echo "<br>";
    echo $bet;

    // Redirect before any output
    
    // Ensure no further code is executed after redirect

    // If you want to print the data, do so before the header
  
}
?>
