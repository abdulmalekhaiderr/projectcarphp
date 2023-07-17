<?php


if($_SERVER['REQUEST_METHOD']=='POST'){
require_once "config.php";
require_once "validate.php";
$username = validate($_POST['rename']);
$password = validate($_POST['repassword']);
$email = validate($_POST['remail']);
$sql = "INSERT INTO administrator( User_Name, Password,emai_admin ) VALUES('$username ', '$password','$email')";
$dbResult =mysqli_query($conn,$sql);
//print ($dbResult);
if ($dbResult ) {
  echo "success";

   } else{

 echo "failed";
 }
}
/*if($_SERVER['REQUEST_METHOD']=='POST'){
require_once "config.php";
require_once "validate.php";
//$id = intval(validate($_POST['car_id']));
$name = validate($_POST['rename']);
$model = validate($_POST['remail']);
$type = validate($_POST['repassword']);
//$comp = validate($_POST['company']);
//$motor = validate($_POST['motor']);
//$oil = validate($_POST['oilType']);
$sql = "INSERT INTO car(Id, name_car, type_car, company, model, machine, Oil_type) VALUES('$name', '$type', '$comp', '$model', '$motor', '$oil')";
$result = mysqli_query($conn,$sql);
if($result){
echo "success";
}else{
echo "failed";
}
}*/

/*include("config.php");

date_default_timezone_set("Asia/Muscat");
$RegDate= date("Y/m/d - h:i a");


$UserName = strip_tags(trim($_POST["rename"]));
$Password = strip_tags(trim($_POST["remail"]));
$Email = strip_tags(trim($_POST["repassword"]));
//$ImgCode_Avatar= strip_tags(trim($_POST["ImgCode_Avatar"]));

if ($UserName<>"" && $Password<>"" && $Email<>""){


$dateeCode=date("Ymdhi");
$randomletter = substr(str_shuffle("abcdefghijklmnopqrstuvwxyz"), 0, 5);
$milliseconds = round(microtime(true));
$UserKey = "U".$randomletter.$dateeCode.$milliseconds;


$Avatar = $UserKey.".jpg";
if ($ImgCode_Avatar<>"") {

		$decodimg = base64_decode("$ImgCode_Avatar");
		file_put_contents("Images/".$Avatar,$decodimg);
}
$newPass = md5($Password);
$sql_query = "INSERT INTO administrator (Id, User_Name, Password, Email_admin)VALUES('$UserKey','$UserName','$newPass','$Email')";
	$dbResult = $conn->query($sql_query);
	if ($dbResult === TRUE) {
		$check = "Reg_OK";
		} else {
		 $check = "Error";
		}
}

$json_re=array();
array_push($json_re,array("success"=>$check, "UserKey"=>$UserKey));
echo json_encode($json_re);

mysqli_close($conn);
*/





?>
