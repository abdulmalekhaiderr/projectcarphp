<?php
// if(isset($_POST['username'])){
require_once "config.php";
require_once "validate.php";
// $user_name = validate($_POST['username']);
$query=mysqli_query($conn,"SELECT * FROM car");


$result = array();

while($row = mysqli_fetch_array($query)){
array_push($result,array(
'name'=>$row[1],
'company'=>$row[2],
'model1'=>$row[3],
'machine'=>$row[4],
'Oil_type'=>$row[5]

));
}

echo json_encode(array("result"=>$result) );
echo "\n\n";
mysqli_close($conn);
// }
?>
