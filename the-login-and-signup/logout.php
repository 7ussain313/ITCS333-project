<?php
session_start();
session_destroy();
header("Location: http://localhost/ITCS-333-Course-Project/index.php");
exit();
?>
