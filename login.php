<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
require_once "config.php";
require_once "validate.php";
$username = validate($_POST['username']);
$password = validate($_POST['password']);
$sql = "select * from administrator where User_Name='$username' and Password='$password'";
$result = mysqli_query($conn,$sql);
if($result->num_rows > 0){
echo "success";
}else{
echo "failed";
}
}
?>