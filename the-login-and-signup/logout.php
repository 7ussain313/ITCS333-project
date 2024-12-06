<?php
session_start();
session_destroy();
header("Location: http://localhost/ITCS333-project/index.php");
exit();
?>
