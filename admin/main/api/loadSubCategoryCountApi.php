<?php

include("_session_start.php");
include("_dbconnect.php");

$sql="select * from sub_category where is_deleted=0";
$result=mysqli_query($conn, $sql);

echo mysqli_num_rows($result);

?>