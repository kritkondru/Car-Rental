<?php

require_once("config.php");
//Prevent the user visiting the logged in page if he/she is already logged in
/*if (isUserLoggedIn()) {
    header("Location: myaccount.php");
    die();
}*/

print_r($_POST);

//Forms posted
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
        print_r($user);
        if ($user <> 1) {
            $errors[] = "registration error";
        }
    }
    if (count($errors) == 0) {
        $successes[] = "registration successful";
    }
}

//require_once("header.php");
?>
<html>
<head>
    <style>
        header{
            width:100%;
            height:40px;
            color:#45A29E;
            background-color: #1F2833;
            font-size:30px;
            text-align:center;
        }
        h2{
            padding-left: 10px;
            color:#66FCF1;
            text-decoration:none;
            font-size:20px;
            text-align:center;
        }

        p{
            padding-left:20px;
            font-size:20px;
            color:#C5C6C7;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        #button{
            height:30px;
            width:100px;
            color:#66FCF1;
            background-color: black;
            border-color: black;
        }
        #button:hover{
            color:black;
            background-color:white;
            transition: 2s all;
        }
        #wrapper{
            background-color:  #1F2833 ;
        }

    </style>
</head>
<body>
<header>East Coast Rentals</header><br>
<div id="wrapper">
    <div id="content">
        <h2>Register</h2>


        <div id="main">

                        <pre>
                            <?php print_r($errors); ?>
                            <?php print_r($successes); ?>
                        </pre>

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
                    <label></label>&nbsp;
                    <br>
                    <input id="button" type="submit" value="Register"/>
                    </p>
                </form>

            </div>
        </div>
        <div id='bottom'></div>
    </div>
</div>
</body>
</html>

