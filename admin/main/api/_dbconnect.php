<?php
    $host="localhost";
    $uname="root";
    $pass="";
    $database="tapti_final";

    $conn=mysqli_connect($host, $uname, $pass, $database);

    if($conn){
        
    }
    else{
        die("Connection failed !");
    }
?>