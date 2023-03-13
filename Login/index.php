<?php
session_start();


    include("connect.php");
    include("functions.php");

    $user_data = check_login($con);

?>

<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--<title> Responsive Login and Signup Form </title>-->

        <!-- CSS -->
        <link rel="stylesheet" href="login.css">
                
        <!-- Boxicons CSS -->
        <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
        <title> OralDisecta </title>         
    </head>
    <body>
        <a href = "logout.php"> Logout </a>
        <h1> WELCOME, <?php echo $user_data['name']; ?> </h1>
    </body>
</html>
