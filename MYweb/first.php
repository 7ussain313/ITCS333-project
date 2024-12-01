
<?php  
$products = [
  ["name"=> "ios", "price"=>200 , "quantity"=>3] ,
  ["name"=> "android", "price"=>150 , "quantity"=>2],
  ["name"=> "windows", "price"=>170 , "quantity"=>3]

];


function  calculateTotal ($products){
  $total=0;
      foreach($products as $pro){
        
        $total = $total +  $pro[ "price"] * $pro["quantity"];
       
      }
    
      return $total; 
}



?>
    

    <?php $pattern = '/h.l/';
 $text = "hello help hull h&ll";
 preg_match_all($pattern, $text, $matches);
 echo "Text: " . $text . "<br>";
 echo ". (dot): " . implode(', ', $matches[0]) . "<br><br>";
 // \d: Matches any digit (0-9)
 $pattern = '/\d/';
 $text = "There are 123 apples and 456 oranges";
 preg_match_all($pattern, $text, $matches);
 echo "Text: " . $text . "<br>";
 echo "\\d: " . implode(', ', $matches[0]) . "<br><br>";
 // \w: Matches any word character (a-z, A-Z, 0-9, _)
 $pattern = '/\w/';
 $text = "Hello_World 123!";
 preg_match_all($pattern, $text, $matches);
 echo "Text: " . $text . "<br>";
 echo "\\w: " . implode(', ', $matches[0]) . "<br><br>";
 // \s: Matches any whitespace character
 $pattern = '/\s/';
 $text = "Hello World\tTab\nNewline";
 preg_match_all($pattern, $text, $matches);
 echo "Text: " . $text . "<br>";
 echo "\\s: " . count($matches[0]) . " whitespace characters found<br><br>"; ?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<style>  

form{
   
   display: grid;
 justify-content: center;

}



</style>

</head>
  <body>



<ul>
 
  
<?php foreach($products as $pro):  ?>
<?php if(isset($pro["name"] ) && isset( $pro["price"])  ) :?>
<li><?php echo $pro['name'] . " - " . $pro['price'] . " BD"; ?></li>
<?php endif; ?>
<?php endforeach;?>

</ul>

  <p> <?php  echo "Total value of all products: " . calculateTotal($products)  . "BD";    ?>      </p>
  


<h3>Signup</h3>

<form action="includes/formhandler.inc.php" method="post">
    <input type="text" name="username" placeholder="Username">
    <input type="password" name="pwd" placeholder="Password">
    <input type="text" name="email" placeholder="E-Mail">
    <button>Signup</button>
</form>





   

    

  </body>
</html>