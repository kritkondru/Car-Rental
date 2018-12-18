<?php
/**
 * Created by PhpStorm.
 * User: jagin
 * Date: 12/15/2018
 * Time: 2:40 AM
 */
session_start();
session_unset();
session_destroy();
header( "Location: index.php" );