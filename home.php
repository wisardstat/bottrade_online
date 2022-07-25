<?php 

    include("header.php"); 
	
?>
<br/>
<?php
	$servername = "localhost";
	$username = "root";
	$password = "matrix2805";
	$dbname = "botplus";
	 
	$conn = new mysqli($servername, $username, $password, $dbname);
	 
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}

//echo $_GET["u"]
?>
	<!-- Page Header -->
	<div class="page-header">
		<div class="pt-2 text-left">
			<h2 class="main-content-title tx-24 mg-b-5">Robot Commander</h2>
			<p>  Last Update : <span class="time_update">  10.122  </span></br>
			  (Auto-Refresh) </p>
		</div>
		<div class="d-flex ">
			<div class="justify-content-center"> 
					<button class="btn btn-warning btn-rounded btn-icon" type="button" onclick="Refresh()" >
						<i class="fe fe-refresh-ccw"></i> 
					</button> 
			</div>
		</div>
	</div>
	<!-- End Page Header -->
 

<div class="row row-sm mt-8">
		  
<?php 

$sql = "SELECT *,s.user_id as uid FROM tb_setup s left join tb_temp t on s.seq=t.seq where 1=1 and (trend_sty='Y' or bb_sty='Y')"; 
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  
  while($row = $result->fetch_assoc()) {
	
	$stg_code="";
	$sty = "";
	if ($row["trend_sty"]=="Y")
	{
		$sty = "EMA CROSS";
		$stg_code="ema";
	}		
	
	if ($row["bb_sty"]=="Y")
	{
		$sty = "Bolling Band";
		$stg_code="bb";
	}
	
	$status ="Waiting Signal";
	$badge_color="dark";
	if ($row["wait_f"]=="1")
	{	
		$status ="Waitting...";
		$badge_color="warning";
	}
	else if ($row["sell_f"]=="1")
	{	
		$status ="SELL";
		$badge_color="danger";
	}
	else if ($row["buy_f"]=="1")
	{	
		$status ="BUY";
		$badge_color="success";
	}
	$order_active = $row["order_active"];
	$last_update = $row["last_update"];
	$coin = $row["symbol"];
	
	$response = file_get_contents('https://api.binance.com/api/v3/ticker/price?symbol='.$coin);
	$key = json_decode($response,true);
	$last_price = $key["price"];
	
	$signal_profit = "";
	$profit_display = "";
	$color_profit ="";
	$loading ="";
	if ($row["op_price"]!=0)
	{ 
		$diff_price = ($last_price - $row["op_price"]);
		$diff_percent = (($last_price - $row["op_price"])/($row["op_price"]*1.000))*100;
		$loading = '<div class="text-center "> <div class="spinner-grow spinner-grow-sm text-danger" role="status"> <span class="sr-only">Loading......</span> </div></div>';
		if ($row["buy_f"]=="1") {
			if ($diff_price>0) {
				$signal_profit="+";
				$color_profit="text-primary";
			}
			else if ($diff_price<0){
				$signal_profit="";
				$color_profit="text-danger";
			}
		}
		else if ($row["sell_f"]=="1") {
			if ($diff_price>0) {
				$signal_profit="";
				$color_profit="text-danger";
			}
			else if ($diff_price<0){
				$signal_profit="+";
				$color_profit="text-primary";
			}
		} 
		$profit_display = " (".$signal_profit.abs(round($diff_price,2))." / ".abs(round($diff_percent,2))."% )";
	}
	 
	
	
	$status_show =  "<b class='text-".$badge_color."'> ". $status." </b>";
	
	if ($order_active==0){
		$status_show =  "<b class='text-".$badge_color."'> ". $status." (No Order) </b>";
	}
	
	$button ="  <button class='btn ripple btn-primary mr-2'> Action </button> <button class='btn ripple btn-secondary'> Setting </button>  ";
    #echo " <tr> <td>".$row["seq"]."</td> <td>".$sty ."</td> <td> <span class='badge badge-".$badge_color."'> ".$status ."</span></td> <td>".$button."</td> </tr> ";
	?>
		<div class="col-md-6">
		<div class="card custom-card crypto-card overflow-hidden">
				<div class="card-body pb-4">
						<div class="d-flex mb-3">
							<h5 class="d-flex mb-0"><span class="cryp-icon bg-primary my-auto mr-2 mt-1"><i class="cf cf-eth"></i></span> <b class="text-primary pt-1"> <?php echo $sty; ?> </b> </h5>
							<span class="float-right ml-auto btn btn-success btn-sm tx-14 "> <?php echo $coin ?> </span>
						</div>
						
						 
						<?php if ($row["op_price"]!=0) { ?>
							<div class="pb-3" > <span class="tx-24"> <?php echo $status_show ; ?> </span>  </div>
							<div class="mb-2 text-center tx-16">
								<span class="tx-16 mr-2"> Last Price : <span class="text-info"> <?php echo round($last_price,2); ?> </span> <span class='<?php echo $color_profit;  ?>'> <?php echo $profit_display; ?> </span>  </span> 
								 
							</div>
							<div class="mb-2 text-center tx-18">
								Open : <span class="text-primary mr-2"> <?php echo $row["op_price"]; ?> </span> 
								StopLoss :  <span class="text-danger"><?php echo $row["big_f"]; ?> </span>  
							</div>
							<div class="mb-2 text-center tx-14">
								<span class="tx-gray-600 mr-2"> Last Update :  <?php echo $row["last_update"]; ?> </span> 
								 
							</div>
						
						<?php } else {
							?>
								<div class="pb-0" > <span class="tx-24"> <?php echo $status_show ; ?> </span>  </div>
							<?php
								echo " <div class='pb-2 tx-11 '> <div class='lds-heart text-info'><div></div></div> <br/> <span class='text-primary tx-16'> price : ".round($last_price,2)." </span><br/>  Last Update : ".$row["last_update"]." </div> ";
							}
						?>
						<div class="f-flex mt-3">
						
						

							 
							 <?php if ($row["op_price"]!=0) { ?>
								<a href="bot_close_order.php?stg=<?php echo $sty; ?>&s=<?php echo $row['seq']; ?>" class='btn ripple btn-danger mr-2 mt-2 col-12'> Close Order </button>
							
	 
								 <a href="bot_stoploss.php?s=<?php echo $row["seq"]; ?>&stg=<?php echo $stg_code; ?> " class='btn ripple btn-primary mr-2 mt-4 col-12'> Stoploss </a>
						
							<?php } else { ?>
							
								<?php if ($order_active==1) { ?>
									<a href="bot_order_active.php?active=0&stg=<?php echo $sty; ?>&s=<?php echo $row["seq"]; ?>" class='btn ripple btn-dark mr-2 mt-2 col-12'> Order Sleep </a>
								 <?php } else if ($order_active==0) { ?>
									<a href="bot_order_active.php?active=1&stg=<?php echo $sty; ?>&s=<?php echo $row["seq"]; ?>" class='btn ripple btn-primary mr-2 mt-2 col-12'> Order Active </a>
								 <?php } ?>
							 
								 <a href="bot_setting.php?s=<?php echo $row["seq"]; ?>&stg=<?php echo $stg_code; ?> " class='btn ripple btn-primary mr-2 mt-2 col-12'> Setting </a>
						
							 <?php }  ?>
							 
							<a href="bot_order_history.php?stg=<?php echo $stg_code; ?>&u=<?php echo $row['uid']; ?>&s=<?php echo $row['seq']; ?>" class='btn ripple btn-light mr-2 mt-2 col-12'> History </a>
							
							
						</div>
				</div><!-- ./ card-body -->
		</div><!-- ./ card -->
		</div><!-- ./ col -->
		 
		
	<?php
	 
  } /** while**/
} else {
  echo "0 results";
}
$conn->close();


?>
			 
	</div><!-- ./ row -->
	
				


<script language="javascript">

	$(document).ready(function(){  
	
		var today = new Date();
		var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
		var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
		var dateTime = date+' '+time;
		
		$('.time_update').html(dateTime); 
	  
	}) 
	
	 
	function Refresh()
	{
		 window.location.reload(1);
	}
	
	setTimeout(function(){
	   window.location.reload(1);
	}, 60000); // 6 second 

</script>


<?php 
    include("footer.php");
?>