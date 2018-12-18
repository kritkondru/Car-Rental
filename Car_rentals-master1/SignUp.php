<?php

require_once("config.php");

if (!empty($_POST)) {
    $errors = array();
    $email = trim($_POST["email"]);
    $username = trim($_POST["username"]);
    $firstname = trim($_POST["firstname"]);
    $lastname = trim($_POST["lastname"]);
    $password = trim($_POST["password"]);
    $confirm_pass = trim($_POST["passwordc"]);


    if ($username == "") {
        $errors[] = "enter valid username";
    }

    if ($firstname == "") {
        $errors[] = "enter valid first name";
    }

    if ($lastname == "") {
        $errors[] = "enter valid last name";
    }

    if ($password == "") {
        $errors[] = "enter valid password";
    }

    if ($confirm_pass == "") {
        $errors[] = "enter valid password";
    }

    if ($email == "") {
        $errors[] = "enter valid email address";
    }


    if ($password == "" && $confirm_pass == "") {
        $errors[] = "enter password";
    } else if ($password != $confirm_pass) {
        $errors[] = "password do not match";
    }

    //End data validation
    if (count($errors) == 0) {
        $user = createNewUser($username, $firstname, $lastname, $email, $password);

        if ($user <> 1) {
            $errors[] = "registration error";
        }
    }
    if (count($errors) == 0) {
        $successes[] = "registration successful";
        header("Location: http://localhost/Car_rentals-master1/login.php");
        die();
    }
    else
        print_r($errors);
}

//require_once("header.php");
?>
<html>
<head>
    <title>Insert New Car</title>
    <link rel="stylesheet" href="style.css">
    <style>
        header{
            width:100%;
            height:50px;
            color:#45A29E;
            background-color: #1F2833;
            font-size:30px;
            text-align:center;
        }
        footer{
            width:100%;
            height:30px;
            color:#45A29E;
            background-color: #1F2833;
            font-size:20px;
            text-align:right;
        }

        .button{
            height:50px;
            width:200px;
            color:#66FCF1;
            background-color: black;
            border-color: black;
        }


        .button:hover{
            color:black;
            background-color:white;
            transition: 2s all;
        }
        body{
            background-color: #1F2833;
        }
    </style>
</head>

<body>
<header>Register</header><br>
<div id="wrapper">
    <div id="content">
        <div id="main">
            <div id="regbox">
                <form name="newUser" action="" method="post">
                    <p>
                        <label>User Name:</label>
                        <input type="text" name="username"/>
                    </p>
                    <p>
                        <label>First Name:</label>
                        <input type="text" name="firstname"/>
                    </p>
                    <p>
                        <label>Last Name:</label>
                        <input type="text" name="lastname"/>
                    </p>
                    <p>
                        <label>Password:</label>
                        <input type="password" name="password"/>
                    </p>
                    <p>
                        <label>Confirm:</label>
                        <input type="password" name="passwordc"/>
                    </p>
                    <p>
                        <label>Email:</label>
                        <input type="text" name="email"/>
                    </p>
                   <center> <input type="submit" value="SIGN UP" class="button">
                    <a href="login.php"><input type="button" value="Go Back Login Page" class="button"></a></center>
                </form>
            </div>
        </div>

    </div>
</div>
<footer>&copy East Coast Rentals</footer>
</body>
</html>

