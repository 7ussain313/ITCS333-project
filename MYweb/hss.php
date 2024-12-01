<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>lab5</title>
</head>
<body>
    <form method='post'>
        <input type="checkbox" name="position[]" value="0"> 
        Picture: 
        <select name="picture[]">
            <option value="apple.jpeg">Apple</option>
            <option value="banana.jpeg">Banana</option>
            <option value="mango.jpeg">Mango</option>
            <option value="orange.jpeg">Orange</option>
        </select>
        Width#Height: <input type="text" name="size[]" size='10'> 
        <hr/>
        <input type="checkbox" name="position[]" value="1">
        Picture: 
        <select name="picture[]">
            <option value="apple.jpeg">Apple</option>
            <option value="banana.jpeg">Banana</option>
            <option value="mango.jpeg">Mango</option>
            <option value="orange.jpeg">Orange</option>
        </select>
        Width#Height: <input type="text" name="size[]" size='10'> 
        <hr/>
        <input type="checkbox" name="position[]" value="2">
        Picture: 
        <select name="picture[]">
            <option value="apple.jpeg">Apple</option>
            <option value="banana.jpeg">Banana</option>
            <option value="mango.jpeg">Mango</option>
            <option value="orange.jpeg">Orange</option>
        </select>
        Width#Height: <input type="text" name="size[]" size='10'> 
        <hr/>
        <input type="submit" name="btn" value="View Pictures"> 
    </form>
    <?php
          
           if (!isset($_POST['btn'])) {
               die("Invalid Submission");
           } elseif (!isset($_POST['position'])) {
               die("No Picture Submitted");
           }
       
           foreach ($_POST['position'] as $pos) {
               $p = $_POST['picture'][$pos];
               $sizeInput = $_POST['size'][$pos];
       
               // Check if size input contains the '#' separator
               if (strpos($sizeInput, '#') === false) {
                   echo "Invalid size format for position $pos. Use Width#Height format.<br>";
                   continue;
               }
       
               $size = explode('#', $sizeInput);
       
               // Check if both width and height are set after explode
               if (count($size) != 2 || !is_numeric($size[0]) || !is_numeric($size[1])) {
                   echo "Invalid dimensions for position $pos. Ensure both width and height are numbers.<br>";
                   continue;
               }
       
               echo "<img src='$p' width='{$size[0]}' height='{$size[1]}'/>";
           }
       ?>
       
    
</body>
</html>