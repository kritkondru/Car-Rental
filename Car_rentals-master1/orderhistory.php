<?php
/**
 * Created by PhpStorm.
 * User: jagini
 * Date: 12/12/2018
 * Time: 5:18 PM
 */
include_once("config.php");
// call to function fetchAllUsers() from functions.php
$username = $_SESSION['username'];
$userorders = getUserorders($username);

?>


<html>
<head>
    <title>Display Car</title>
    <link rel="stylesheet" href="style.css">
    <style>
        header{
            width:100%;
            height:40px;
            color:#45A29E;
            background-color: #1F2833;
            font-size:30px;
            text-align:center;
        }
        body{
            background-color: #1F2833;
        }
        footer{
            width:100%;
            height:30px;
            color:#45A29E;
            background-color: #1F2833;
            font-size:20px;
            text-align:right;
        }
    </style>
</head>

<body>
<header>Order History</header><br>
<table>
    <th>Car Name</th>
    <th>Car Number</th>
    <th>Car Brand</th>
    <th>Car Type</th>
    <th>No of Days</th>
    <th>Card Owner</th>
    <th>Card Number</th>
    <th>Amount Paid</th>
    <?php //NOTICE THE USE OF PHP IN BETWEEN HTML

    foreach($userorders as $userdetails){
        ?>

        <tr>
            <td><?php print $userdetails['carname']; ?></td>
            <td><?php print $userdetails['carnumber']; ?></td>
            <td><?php print $userdetails['companyname']; ?></td>
            <td><?php print $userdetails['type']; ?></td>
            <td><?php print $userdetails['noofdays']; ?></td>
            <td><?php print $userdetails['paymentname']; ?></td>
            <td><?php print $userdetails['cardnumber']; ?></td>
            <td><?php print $userdetails['payment']; ?></td>
        </tr>

    <?php } ?>

</table>
<footer>&copy East Coast Rentals</footer>
</body>
</html>
