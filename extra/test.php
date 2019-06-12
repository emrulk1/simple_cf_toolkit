<!doctype html>
<!--test.php-->
<head>
</head>


<body>
<?php
	$coder1 = 'lazy_coder';
	$response = file_get_contents('http://codeforces.com/api/user.rating?handle='.$coder1);
	$response = json_decode($response, true);
	
	if($response['status']!="OK")
	{
		//echo "username '".$coder1."' does not exist!";
		die("username '".$coder1."' does not exist!");
	}
	else {
		$data = $response['result'];
	}
	//echo $data[0]['contestName']."<br/>";
	$number_Of_Contests = count($data);
	//echo $number_Of_Contests;

	
	try {
			$myPDO = new PDO('mysql:host=localhost;dbname=cf_toolkit_db', 'root', ''); // PDO Driver DSN. Throws A PDOException.
	}
	catch(PDOException $exception){ 
			//return $exception->getMessage(); 
		echo "exception: ".$exception->getMessage()."<br/>";
	} 
		
	echo $number_Of_Contests; 
	?>

</body>

</html>