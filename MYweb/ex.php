<!DOCTYPE html>
<html lang="en">
<head>
    <style>



#content p {
 font-size: 18px;
 font-style: italic;
 }
 div p.highlight {
    text-decoration: none;
 }
 p.highlight {
 color: green;
 text-decoration: underline;
 }
 
 
 p {
 
 color: blue;
 font-size: 50px;
   }
 .highlight {
 color: red;
 font-weight: bold;
 
 }
 


        </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
</head>
<body>

    <form class="f1" action = "formhandler.php" method= "POST">
        <lable for = " username" > USER NAME </lable>
        <input  type="text" id ="username " name = " username " require > <br>
        <lable for="email "> EMAIL</lable>
        <input  type =" email " id ="email " name = " email " >
        <br>
        <lable for ="submit" > SUBMIT </lable>
        <input  type ="submit" id="submit " name ="submit" require>
     </form>
    

     <div id="content">
 <p class="highlight">This is a highlighted paragraph.</p>
 </div>

<?php  

$email = "us_er@example.com"; // The email address to validate

$pattern = '/^[\w\-.]+@[\.\w\-]+.[\.]\w{2,}$/';

 if (preg_match($pattern, $email)) {
 
    echo "Valid email address";
 } else {
 echo "Invalid email address";
 }
    ?>


<a href="https://openai.com" target="_blank">
    <img src="openai-logo.png" alt="OpenAI Logo" width="200" height="100" />
</a>
<footer>
    <div class="footer-container">
        <ul class="footer-links">
            <li><a href="#about">About Us</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="#contact">Contact</a></li>
            <li><a href="#privacy">Privacy Policy</a></li>
            <li><a href="#terms">Terms of Service</a></li>
        </ul>
        <p>&copy; 2024 Your Company Name. All rights reserved.</p>
    </div>
</footer>
  


<table>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>
    <tr>
        <td>John</td>
        <td>Doe</td>
        <td>25</td>
    </tr>
    <tr>
        <td>Jane</td>
        <td>Smith</td>
        <td>30</td>
    </tr>
    <tr>
        <td>Mike</td>
        <td>Johnson</td>
        <td>22</td>
    </tr>
</table>

</body>
</html>
