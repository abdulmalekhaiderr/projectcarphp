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
$sql = "INSERT INTO car(Id, name_car, type_car, company, model, machine, Oil_type) VALUES('$id', '$name', '$type', '$comp', '$model', '$motor', '$oil')";
$result = mysqli_query($conn,$sql);
if($result){
echo "success";
}else{
echo "failed";
}
}
?>