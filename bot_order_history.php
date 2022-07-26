
<?php 
    include("header.php");
	//include 'Class/Database.php';
	
	$db = new DatabaseManage;
	$db->connect();
	 
	$user_id = $_GET["u"];
	$stg = $_GET["stg"];
	$seq = $_GET["s"];
	
	$title=""; 
	$result = $db->selectAllData(" vorderhistory " ,'*'," seq=".$seq." order by  order_date desc ");
?>
	
  <div class="page-header">
		<div>
			<h4 class="main-content-title mg-b-5" id='etitle'>   </h4>
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
	
	<div class="row row-sm mt-8 text-left">
	
		<div class="col-md-4 col-sm-6 col-lg-3">
			<div class="card custom-card">
				<div class="card-body pb-3 tx-robo-b">
				
					<h5 class="tx-16">Total Profit</h5>
					<div class="d-flex">
						<div class="">
							<h4 id="profit_amt" class="text-primary font-weight-bold mb-2 ">0</h4>
							<div class="d-flex ml-auto float-right tx-12">
								Lot = 1 / Leverage =20
							</div>
						</div>
						 
					</div>
				</div>
			</div> 
		</div> 
		
		<div class="col-md-4 col-sm-6 col-lg-3">
			<div class="card custom-card">
				<div class="card-body pb-3 tx-robo-b">
					<h5 class="tx-16">WIN Rate</h5>
					<div class="d-flex">
						<div class=""> 
							<h4 id="win_rate" class="text-primary font-weight-bold mb-2">0%</h4>
							<span class='p-0 tx-12'> 
									Win= <span id="win_cnt"> 0 </span> / Loss = <span id="loss_cnt"> 2 </span>
							</span>
						</div>
						<div class="d-flex ml-auto float-right tx-12">
							<canvas id="btc-market" class="wd-50p wd-100-f ml-auto float-right"></canvas>
						</div>
					</div>
				</div>
			</div> 
		</div> 
	</div><!--/row-->
 
 
<!---- # START - CONFIG-SECTION # -----> 
	<div class="row row-sm mt-8 text-left"> 
	
			<div class="card custom-card col-12 p-2">
				 
				<div class="card-body text-left p-2">
					<div>
						<h5 class="main-content-label mb-1">Order History</h5>
						<p class="text-muted  card-sub-title">ประวัติการทำกำไรของบอท </p>
					</div>
					
					 <div class='table-responsive ' >
						<table class='table text-nowrap tx-12 tx-robo-b '  id="example1" >
							<thead class='text-center'>
								<th>Open <br/> Date</th>
								<th>Order <br/> Type</th>
								<th>Symbol</th>
								<th>Open <br/> Price</th>
								<th>Close <br/> Price</th>
								<th>Price </br> Diff</th>
								<th>Profit </br> Amount</th>
								<th>Last <br/>Update</th>
								<th>Remark</th>
							</thead>
							<tbody>
						

 <?php
 
  $total_profit = 0 ;
  $total_win = 0 ;
  $total_row = 0 ;
  foreach ($result as $row) {

	$total_row += 1;
  
	$order_date  = substr( $row["order_date"],0,16);
	$stg_type = $row["stg_type"];
	$symbol = $row["symbol"];
	$order_type = $row["order_type"];
	$order_status   = $row["order_status"];
	$open_price   = $row["open_price"];
	$close_price = $row["close_price"];
	$last_update   =substr( $row["last_update"],0,16);
	$remark   = $row["remark"];
	$title    = $row["stg_nm"];
	
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
		$profit_txt =' '.$profit.' ';
		if ($status=="WIN")
		{
			$color="text-primary";
			$profit_txt =' '.$profit.'';
		}
	}
	else {
		$profit_txt ='<span class="badge badge-dark tx-10">0</span>';
	}
	
	$lev = 20;
	$lot = 1;
	$profit_amt=0;
	$profit_amt_txt="";
	
	if ($close_price>0){
		
		$coin_val_open = $open_price/$lev ;
		$coin_val_close = $close_price/$lev ;
		$diff_price = abs($open_price-$close_price);
		$diff_coin_val = $coin_val_close-$coin_val_open; 
		
		if ($profit<0)
		{
			$profit_amt = round( (-1)*(($diff_price+$diff_coin_val)*$lot),2);
			$profit_amt_txt ='<span class="badge badge-danger tx-10">'.$profit_amt.'</span>';
		}
		else{
			$profit_amt = round(($diff_price+$diff_coin_val)*$lot,2);
			$profit_amt_txt ='<span class="badge badge-primary tx-10">'.$profit_amt.'</span>';
			$total_win += 1;
		}
	}
	
	$total_profit += $profit_amt;
	
	echo "<tr class='".$color ."'> <td>".$order_date."</td> <td>".$order_type."</td> <td>".$symbol."</td><td class='text-center'>".$open_price."</td><td class='text-center'>".$close_price."</td><td class='text-center'>".$profit_txt."</td><td class='text-center'>".$profit_amt_txt."</td><td>".$last_update."</td><td>".$remark."</td> </tr>";
	
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
	
	$('#etitle').html(" <?php echo $title ;?>");
	$('#profit_amt').html("$ <?php echo $total_profit ;?>");
	
	$('#win_cnt').html(" <?php echo $total_win ;?>");
	$('#loss_cnt').html(" <?php echo $total_row-$total_win ;?>");
	$('#win_rate').html(" <?php echo round(($total_win/$total_row)*100,2) ;?>%");
	
	
</script>

<?php 
    include("footer.php");
?>
 

 