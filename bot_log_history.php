
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
	
	$seq = $_GET["s"]; 
	$title=""; 
	$sql = "SELECT * FROM log_history where seq=".$seq."  order by  log_date desc "; 
	$result = $conn->query($sql);
 
?>
	
  <div class="page-header">
		<div>
			<h4 class="main-content-title mg-b-5"> <?php echo $title; ?> </h4>
		</div>
		<div class="d-flex">
			<div class="justify-content-center">
			
				 
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
								<th>Log <br/> Date</th>
								<th>Strategy</th>
								<th>Symbol</th> 
								<th>Remark</th>
							</thead>
							<tbody>
						

 <?php
	 
if ($result->num_rows > 0) {
  
  while($row = $result->fetch_assoc()) {	
  
	$log_date  = substr( $row["log_date"],0,16);
	$stg_type = $row["stg_type"];
	$symbol = $row["symbol"];
	$log_detail = $row["log_detail"]; 
	
	if ($stg_type=='bb'){
		$stg_type ='Bolling Band';
	}
	  
	
	echo "<tr> <td>".$log_date."</td> <td>".$stg_type."</td> <td>".$symbol."</td><td>".$log_detail."</td> </tr>";
	
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
 

 