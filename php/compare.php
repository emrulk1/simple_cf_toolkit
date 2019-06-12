<html>
	<head>
		<title>Compare</title>
		<link rel = "stylesheet" href="../css/Compare.css">
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
		<?php require 'DB_connection.php';?>	
		
	</head>

	
	<body>	
	
		<div class="jumbotron" id="search">
	   		<br>
	      	<div class="container text-center">
	      		<h1>Let the Comparison Begin :) </h1>
	      		<p></p>
	      		
	      		<div class="row">
				  	
					<form action="compare.php" method="post">
					  	
						<div class="col-lg-6">
						    <div class="input-group">
						      <span class="input-group-addon" id="sizing-addon1">user1 : </span>
						      <input type="text" class="form-control" placeholder="Search for..." name='coder1'>
						    </div><!-- /input-group -->
					  	</div><!-- /.col-lg-6 -->
						
						<div class="col-lg-6">
							<div class="input-group">
							    <span class="input-group-addon" id="sizing-addon1">user2 : </span>
							    <input type="text" class="form-control" placeholder="Search for..." name='coder2'>
							    <span class="input-group-btn">
								<button class="btn btn-default" type="submit">Go!</button>
							    </span>
							</div><!-- /input-group -->
						</div><!-- /.col-lg-6 -->
					</form>
					
				</div><!-- /.row -->
			</div>
	    </div>


	    <div class="container">

				<?php
		            if(!isset($_POST['coder1']) ||  !isset($_POST['coder2']))
		            {
		              	die();
		            }
		    	
					if(isset($_POST['coder1']) && isset($_POST['coder2']) ){
						$coder1=$_POST['coder1'];
                        $coder2=$_POST['coder2'];
				    }
					
					//$myPDO = new Mysql('localhost','cf_toolkit_db', 'root', '');
					//$myPDO->connect();
					// connecting to database using user defined class 'Mysql' in DB_connection.php file which uses PDO
				?>
				
				<?php
					//$url="http://codeforces.com/api/user.info?handles=".$coder1;
					$response = file_get_contents('http://codeforces.com/api/user.rating?handle='.$coder1);
					$response=json_decode($response,true);  //converting it to PHP friendly format
					//values for coder1
					$status1 = $response['status'];
					if($status1=="FAILED" or $status1!="OK")
					{
					  echo "INVALID USERNAME1 ".$coder1;
					   die();
					}
					
						$data1=$response['result'];
						//print_r($data1);
						//echo"<br/><br/>";
						try {
							$tbl_name = 'user1_contests';
							$sql = "DROP TABLE IF EXISTS ".$tbl_name.
									";CREATE TABLE ".$tbl_name."(
									contestId INT UNSIGNED PRIMARY KEY, 
									contestName VARCHAR(50) NOT NULL,
									rank int not null,
									oldRating int not null,
									newRating int not null
									)";
							$myPDO->execute_query($sql); 
							//calling execute_query function of Mysql class in DB_connection.php file
							echo "Table ".$tbl_name." created successfully<br/><br/>";
						}
						catch(PDOException $e){ 
							echo "exception: ".$e->getMessage()."<br/>";
						}
						
						try{
							
							$sql = "INSERT INTO ".$tbl_name."(contestId, contestName, rank, oldRating, newRating)
							VALUES (:contestId, :contestName, :rank, :oldRating, :newRating)";
							
							$stmt = $myPDO->prepared_statement($sql); 
							//calling prepared_statement function of Mysql class in DB_connection.php file
							
							$cnt1 = count($data1);
							echo $coder1."'s current rating point : ".$data1[$cnt1-1]['newRating']."<br/>";
							echo $coder1." participated in the following contests :"."<br/><br/>";
							for($i=0; $i<$cnt1; $i++){
								$contestId = $data1[$i]['contestId'];
								$contestName = $data1[$i]['contestName'];
								$rank = $data1[$i]['rank'];
								$oldRating = $data1[$i]['oldRating'];
								$newRating = $data1[$i]['newRating'];
								
								echo 'contestId : '.$contestId.' contestName : '.$contestName.' rank : '.$rank;
								echo "<br/>";
								$stmt->bindValue(':contestId', $contestId);
								$stmt->bindValue(':contestName', $contestName);
								$stmt->bindValue(':rank', $rank);
								$stmt->bindValue(':oldRating', $oldRating);
								$stmt->bindValue(':newRating', $newRating);
								$stmt->execute();
							}
						}
						catch(PDOException $e){  
							echo "exception: ".$e->getMessage()."<br/>";
						}	
						
						echo "<br/>";
					
					$response = file_get_contents('http://codeforces.com/api/user.rating?handle='.$coder2);
					$response=json_decode($response,true);  //converting it to PHP friendly format
					$status2 = $response['status'];
					//echo $status2."<br/>";
					
					if($status2=="FAILED" or $status2!="OK")
					{
					  echo "INVALID USERNAME2 ".$coder1;
					   die();
					}
					
					$data2=$response['result'];
					try {
							$tbl_name = 'user2_contests';
							$sql = "DROP TABLE IF EXISTS ".$tbl_name.
									";CREATE TABLE ".$tbl_name."(
									contestId INT UNSIGNED PRIMARY KEY, 
									contestName VARCHAR(50) NOT NULL,
									rank int not null,
									oldRating int not null,
									newRating int not null
									)";
							$myPDO->execute_query($sql); 
							//calling execute_query function of Mysql class in DB_connection.php file
							echo "Table ".$tbl_name." created successfully<br/><br/>";
					}
					catch(PDOException $e){ 
								//return $exception->getMessage(); 
							echo "exception: ".$e->getMessage()."<br/>";
					}
					
					try{
							$sql = "INSERT INTO ".$tbl_name."(contestId, contestName, rank, oldRating, newRating)
							VALUES (:contestId, :contestName, :rank, :oldRating, :newRating)" ;
							$stmt = $myPDO->prepared_statement($sql); 
							//$myPDO is a global variable in DB_connection file
							//calling prepared_statement function of Mysql class in DB_connection.php file
							
							$cnt2 = count($data2);
							echo $coder2."'s current rating point : ".$data2[$cnt2-1]['newRating']."<br/>";
							echo $coder2." participated in the following contests :"."<br/><br/>";
							for($i=0; $i<$cnt2; $i++){
								$contestId = $data2[$i]['contestId'];
								$contestName = $data2[$i]['contestName'];
								$rank = $data2[$i]['rank'];
								$oldRating = $data2[$i]['oldRating'];
								$newRating = $data2[$i]['newRating'];
								
								echo 'contestId : '.$contestId.' contestName : '.$contestName.' rank : '.$rank;
								echo "<br/>";
								
								$stmt->bindValue(':contestId', $contestId);
								$stmt->bindValue(':contestName', $contestName);
								$stmt->bindValue(':rank', $rank);
								$stmt->bindValue(':oldRating', $oldRating);
								$stmt->bindValue(':newRating', $newRating);
								$stmt->execute();
							}
						}
						catch(PDOException $e){ 
							echo "exception: ".$e->getMessage()."<br/>";
						}
					?>	
						
							<!-- <div id="max_min_comparison">-->
							<!--now comapring  maxraing, minrating, maxrank, minrank, in html table format -->
							<?php 
								//finding values for user1:
								
								//finding maximum rating of user1
								$stmt = $myPDO->prepared_statement("SELECT max(oldRating) FROM user1_contests");
								$stmt->execute();
								$res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
								//print_r($res[0]['max(oldRating)']);
								$maxOld = $res[0]['max(oldRating)'];
								//echo $res1;
								$stmt = $myPDO->prepared_statement("SELECT max(newRating) FROM user1_contests");
								$stmt->execute();
								$res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
								
								$maxNew = $res[0]['max(newRating)'];
								$maxRating1 = max($maxOld,$maxNew);
								
								//finding minimum rating of user1
								$stmt = $myPDO->prepared_statement("SELECT min(oldRating) FROM user1_contests");
								$stmt->execute();
								$res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
								$minOld = $res[0]['min(oldRating)'];
								
								$stmt = $myPDO->prepared_statement("SELECT min(newRating) FROM user1_contests");
								$stmt->execute();
								$res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
								$minNew = $res[0]['min(newRating)'];
								$minRating1 = min($minOld,$minNew);
								
								//finding maximum rank of user1
								$stmt = $myPDO->prepared_statement("SELECT max(rank) FROM user1_contests");
								$stmt->execute();
								$res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
								$maxRank1 = $res[0]['max(rank)'];
								
								//finding minimum rank of user1
								$stmt = $myPDO->prepared_statement("SELECT min(rank) FROM user1_contests");
								$stmt->execute();
								$res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
								$minRank1 = $res[0]['min(rank)'];
								
								
								//finding values for user2:
								
								//finding maximum rating of user2
								$stmt = $myPDO->prepared_statement("SELECT max(oldRating) FROM user2_contests");
								$stmt->execute();
								$res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
								//print_r($res[0]['max(oldRating)']);
								$maxOld = $res[0]['max(oldRating)'];
								//echo $res1;
								$stmt = $myPDO->prepared_statement("SELECT max(newRating) FROM user2_contests");
								$stmt->execute();
								$res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
								$maxNew = $res[0]['max(newRating)'];
								$maxRating2 = max($maxOld,$maxNew);
								
								//finding minimum rating of user2
								$stmt = $myPDO->prepared_statement("SELECT min(oldRating) FROM user2_contests");
								$stmt->execute();
								$res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
								$minOld = $res[0]['min(oldRating)'];
								
								$stmt = $myPDO->prepared_statement("SELECT min(newRating) FROM user2_contests");
								$stmt->execute();
								$res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
								$minNew = $res[0]['min(newRating)'];
								$minRating2 = min($minOld,$minNew);
								
								//finding maximum rank of user2
								$stmt = $myPDO->prepared_statement("SELECT max(rank) FROM user2_contests");
								$stmt->execute();
								$res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
								$maxRank2 = $res[0]['max(rank)'];
								
								//finding minimum rank of user2
								$stmt = $myPDO->prepared_statement("SELECT min(rank) FROM user2_contests");
								$stmt->execute();
								$res = $stmt->fetchAll(\PDO::FETCH_ASSOC);
								$minRank2 = $res[0]['min(rank)'];
							?>
							
							<div id ="comparison_table">
								<h2> <?php echo 'comparison between '.$coder1.' and '.$coder2.":<br/>"?> </h2>
								<table style="width:100%">
									<tr>
										<th><p><?php echo 'userName   ' ?></p></th>
										<th><p><?php echo 'participated Count  ' ?></p></th> 
										<th><p><?php echo 'Best rank      '  ?></p></th>
										<th><p><?php echo 'Lowest rank     '?></p></th>
										<th><p><?php echo 'maximum rating   '?></p></th>
										<th><p><?php echo 'lowest rating	'?></p></th>
									</tr>
									
									<tr>
										<td><p><?php echo  $coder1 ?></p></td>
										<td><p><?php echo  $cnt1 ?></p></td> 
										<td><p><?php echo  $minRank1?></p></td>
										<td><p><?php echo  $maxRank1?></p></td>
										<td><p><?php echo  $maxRating1?></p></td>
										<td><p><?php echo  $minRating1?></p></td>
									</tr>
									
									<tr>
										<td><p><?php echo  $coder2 ?></p></td>
										<td><p><?php echo  $cnt2 ?></p></td> 
										<td><p><?php echo  $minRank2?></p></td>
										<td><p><?php echo  $maxRank2?></p></td>
										<td><p><?php echo  $maxRating2?></p></td>
										<td><p><?php echo  $minRating2?></p></td>
									</tr>
								</table>
						</div>
	</div>
		
	</body>
</html>