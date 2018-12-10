<?php
/**
 * Created by PhpStorm.
 * User: PraviinM
 * Date: 9/28/15
 * Time: 9:01 PM
 */

//inlude config.php - automatically includes db-settings.php and functions so we have
//already included the code for connection to your mysql server and the functions are already available

include_once("config.php");

// call to function fetchAllUsers() from functions.php
$id= $_GET["id"];

$allusers = getCar($id);

?>
<pre><?php print_r($allusers); ?></pre>

<html>
<head>
    <title>Display Car</title>
    <style>
        header{
            width:100%;
            height:40px;
            color:#45A29E;
            background-color: #1F2833;
            font-size:30px;
            text-align:center;
        }
        #table{
            background-color:  #1F2833 ;
        }
        th{
            color:#66FCF1;;
        }
        td{
            color:#C5C6C7;
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
        body{
            background-color:  #1F2833;
        }

    </style>
</head>

<body>
<header>Rental details</header>
<div id="table">
<table>

    <?php //NOTICE THE USE OF PHP IN BETWEEN HTML

    foreach($allusers as $userdetails){
        ?>
           <?php $car_name =  $userdetails['car_name'];
        $car_number =  $userdetails['car_number'];
        $company_name =  $userdetails['company_name'];
        $rate =  $userdetails['rate'];
        $type = $userdetails['type'];
        ?>


    <?php } ?>

    <form action="payment.php" method="post">
        <table>
            <tr>
                <td><label>Car Name </label></td>
                <td> <input type="text" value="<?php echo $car_name?>"  name="car_name" readonly></td>
            </tr>
            <tr>
                <td> <label>Car Number </label></td>
                <td><input type="text" value="<?php echo $car_number?>" name="car_number" readonly></td>
            </tr>
            <tr>
                <td><label>Company Name </label></td>
                <td><input type="text" value="<?php echo $company_name ?>" name="company_name" readonly></td>
            </tr><tr>
                <td><label>Rate Per Day</label></td>
                <td><input type="text " value="<?php echo $rate?>" name="rate" readonly></td>
            </tr>
            <tr>
                <td> <label>Car Type </label></td>
                <td> <input type="text" value="<?php echo $type?>" name="type" readonly></td>
            </tr>
            <tr>
                <td><label>Select number of day </label></td>
                <td><input type="text" name="noOfDays" ></td>
            </tr>
            <tr>
                <td><label>Select Date</label></td>
                <td><input type="date" ></td>
            </tr>
            <tr>

                <td><input id="button" type="submit"></td>
            </tr>

        </table>
    </form>




</table>
</div>
</body>
</html>
