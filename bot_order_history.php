
<?php 
    include("header2.php");
	
	$servername = "localhost";
	$username = "root";
	$password = "matrix2805";
	$dbname = "botplus";
	 
	$conn = new mysqli($servername, $username, $password, $dbname);
	 
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	
	$user_id = $_GET["u"];
	$stg = $_GET["stg"];
	$seq = $_GET["s"];
	
	$title="";
	if (strtoupper($stg)=="EMA")
	{
		$title = "EMA CROSS"; 
	}		
	
	if (strtoupper($stg)=="BB")
	{
		$title = "Bolling Band"; 
	}
	
	$sql = "SELECT * FROM order_history where seq=".$seq."  order by  order_date desc "; 
	$result = $conn->query($sql);
 
?>
	
  <div class="page-header">
		<div>
			<h4 class="main-content-title mg-b-5"> <?php echo $title; ?> </h4>
		</div>
		<div class="d-flex">
			<div class="justify-content-center">
			
				<a type="button"  href="bot_log_history.php?s=<?php echo $seq; ?>" class="btn btn-warning  my-2 ">
				  <i class="fe fe-search mr-2"></i> Logs info
				</a>
				
				<a type="button"  href="home.php" class="btn btn-warning  my-2 ">
				  <i class="fe fe-arrow-left mr-2"></i> Home
				</a>
			</div>
		</div>
	</div>
 
 
<!---- # START - CONFIG-SECTION # -----> 
	<div class="row row-sm mt-8">
		  
			<div class="card custom-card col-12 p-2">
				 
				<div class="card-body text-left p-2">
					<div>
						<h5 class="main-content-label mb-1">Order History</h5>
						<p class="text-muted  card-sub-title">ประวัติการทำกำไรของบอท </p>
					</div>
				 
					 <div class='table-responsive ' >
						<table class='table text-nowrap tx-12 '  id="example1" >
							<thead>
								<th>Open <br/> Date</th>
								<th>Order <br/> Type</th>
								<th>Symbol</th>
								<th>Open <br/> Price</th>
								<th>Close <br/> Price</th>
								<th>Profit</th>
								<th>Last <br/>Update</th>
								<th>Remark</th>
							</thead>
							<tbody>
						

 <?php
	 
if ($result->num_rows > 0) {
  
  while($row = $result->fetch_assoc()) {	
  
	$order_date  = substr( $row["order_date"],0,16);
	$stg_type = $row["stg_type"];
	$symbol = $row["symbol"];
	$order_type = $row["order_type"];
	$order_status   = $row["order_status"];
	$open_price   = $row["open_price"];
	$close_price = $row["close_price"];
	$last_update   =substr( $row["last_update"],0,16);
	$remark   = $row["remark"];
	
	$status = "";
	$profit = 0.00;
	$color ="";
	if ($close_price>0) {
		if ($order_type=='BUY'){
			$status = "LOSS";
			if ($open_price<$close_price){
				$status = "WIN";
			}
			$profit = $close_price-$open_price;
		}
		else if ($order_type=='SELL'){
			$status = "LOSS";
			if ($open_price>$close_price){
				$status = "WIN";
			}
			$profit = $open_price-$close_price;
		}
		$color ="text-danger";
		$profit_txt ='<span class="badge badge-danger tx-10">'.$profit.'</span>';
		if ($status=="WIN")
		{
			$color="text-primary";
			$profit_txt ='<span class="badge badge-primary tx-10">'.$profit.'</span>';
		}
		 
	}
	else {
		$profit_txt ='<span class="badge badge-dark tx-10">0</span>';
	}
	
	
	
	echo "<tr class='".$color ."'> <td>".$order_date."</td> <td>".$order_type."</td> <td>".$symbol."</td><td>".$open_price."</td><td>".$close_price."</td><td>".$profit_txt."</td><td>".$last_update."</td><td>".$remark."</td> </tr>";
	
    }
  } 
 
 ?>
				</tbody>
				</table>
				</div><!--./table-responsive  --!>
			</div>	
			</div>	
		 
	</div>		 
<!---- # END - CONFIG-SECTION # ----->



<script language="javascript">

$('#example1').DataTable({
		  order: [[0, 'desc']],
		 
	});
	
</script>

<?php 
    include("footer.php");
?>
 

 