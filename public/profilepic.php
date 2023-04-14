<?php
error_reporting(1);
$servername = "localhost";
$username = "anywhere_wp";
$password = "u6p2psxmJtKI";
$dbname = "anywhereanycity_network";

$user_email = $_REQUEST['email'];
$sql = "SELECT user_picture FROM users where  user_email='$user_email'";
$conn = connection($servername,$username,$password,$dbname);

$result = $conn->query($sql);



if ($result->num_rows > 0) {
	
  // output data of each row
  while($row = $result->fetch_assoc()) 
  {
	  
	  if($row['user_picture']){
		$path = 'https://anywhereanycity.com/network/content/uploads/';
		echo $image =  $path.$row['user_picture'];  
	  }else{
		  die();
	  }
	  
  }

}



function connection($servername,$username,$password,$dbname){
	return $conn = new mysqli($servername, $username, $password, $dbname); 
}  	  
?>