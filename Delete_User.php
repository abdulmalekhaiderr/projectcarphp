<?php

include("config.php");


$UserKey1 = strip_tags(trim($_POST["name_car"]));

if ($UserKey<>""){

$sql_query = "DELETE FROM car WHERE UserKey LIKE '$UserKey1'";
	$dbResult = $conn->query($sql_query);
	if ($dbResult === TRUE) {
		$check = "Delete_OK";
		} else {
		 $check = "Error";
		}
}

$json_re=array();
array_push($json_re,array("success"=>$check));
echo json_encode($json_re);

mysqli_close($conn);

?>
