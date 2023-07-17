<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
require_once "config.php";
require_once "validate.php";
$id = intval(validate($_POST['car_id']));
$name = validate($_POST['car_name']);
$model = validate($_POST['carModel']);
$type = validate($_POST['carType']);
$comp = validate($_POST['company']);
$motor = validate($_POST['motor']);
$oil = validate($_POST['oilType']);
$sql = "UPDATE  car SET Id='$id', name_car='$name', type_car='$type', company='$comp', model='$model', machine='$motor', Oil_type= '$oil'";
$result = mysqli_query($conn,$sql);
if($result){
echo "success";
}else{
echo "failed";
}
}
?>
