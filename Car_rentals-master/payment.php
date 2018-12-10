<?php
/**
 * Created by PhpStorm.
 * User: romit
 * Date: 09-12-2018
 * Time: 10:23
 */
include_once("config.php");
$car = new car();
$car->car_name = $_POST['car_name'];
$car->car_number = $_POST['car_number'];
$car->company_name = $_POST['company_name'];
$car->rate = $_POST['rate'];
$car->type = $_POST['type'];
$car->noOfDays = $_POST['noOfDays'];

$_SESSION['car'] = $car;
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
<header>Payment Details</header>
<div id="table">
<form action="FinalPage.php" method="post">
        <table>
            <tr>
                <td><label>Name On Card</label></td>
                <td> <input type="text"   name="name"></td>
            </tr>
            <tr>
                <td> <label>Card Number</label></td>
                <td><input type="number"  name="card_number" ></td>
            </tr>
            <tr>
                <td><label>CVV</label></td>
                <td><input type="text" name="cvv" ></td>
            </tr>
            <tr>
                <td><label>Date of Expiry</label></td>
                <td><input type="date"  name="expiry" ></td>
            </tr>
            <tr>
                <td> <label>Amount Payable</label></td>
                <td> <input type="text" value="<?php echo $car->rate*$car->noOfDays ?>" name="payment" readonly></td>
            </tr>

            <tr>
                <td><input id="button" type="submit"></td>
            </tr>

        </table>
    </form>
</div>
</body>
</html>