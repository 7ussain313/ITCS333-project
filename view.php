<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register & Login</title>
</head>
<body>
    <section id="register">
        <h1 class="form-title">Register</h1>
        <form method="post" action="register.php">
            <label for="fName">First Name</label>
            <input type="text" name="fName" id="fName" placeholder="First Name" required>
            
            <label for="lName">Last Name</label>
            <input type="text" name="lName" id="lName" placeholder="Last Name" required>
            
            <label for="email">Email</label>
            <input type="email" name="email" id="email" placeholder="Email" required>
            
            <label for="password">Password</label>
            <input type="password" name="password" id="password" placeholder="Password" required>
            
            <input type="submit" class="btn" value="Sign Up" name="signUp">
        </form>
    </section>

    <section id="signIn">
        <h1 class="form-title">Sign In</h1>
        <form method="post" action="register.php">
            <label for="email">Email</label>
            <input type="email" name="email" id="email" placeholder="Email" required>
            
            <label for="password">Password</label>
            <input type="password" name="password" id="password" placeholder="Password" required>
            
            <input type="submit" class="btn" value="Sign In" name="signIn">
        </form>
    </section>
</body>
</html>
