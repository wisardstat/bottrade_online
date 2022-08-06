 <div class='row'>
<?php
	include 'Class/Database.php';
	 
	$db = new DatabaseManage;
	$db->connect();

	$table = " vsetup_user_temp v left join ref_strategy s on v.stg_code=s.stg_code "; 
	$result = $db->selectAllData($table ,'v.*,s.stg_nm',"  1=1 ");
	$r = 0;
	$img_robot = "happy_robot.png";
	
	foreach ($result as $row){
		$r +=1;
		$img_robot="robot".$r.".png";
		$stg_code=$row["stg_code"];
		$sty = $row["stg_nm"];
		$status ="Waiting Signal";
		$badge_color="dark";
		$setup_name = $row["setup_name"];
		
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
		
		$stg_active = $row["stg_active"];
		$order_active = $row["order_active"];
		$last_update = $row["last_update"];
		$coin = $row["symbol"];
		
		$response = file_get_contents('https://api.binance.com/api/v3/ticker/price?symbol='.$coin);
		$key = json_decode($response,true);
		$last_price = $key["price"];
		//$last_price = 1900;
		
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
					$signal_profit="-";
					$color_profit="text-danger";
				}
			}
			else if ($row["sell_f"]=="1") {
				if ($diff_price>0) {
					$signal_profit="-";
					$color_profit="text-danger";
				}
				else if ($diff_price<0){
					$signal_profit="+";
					$color_profit="text-primary";
				}
			} 
			$profit_display = " <span class='badge badge-".$badge_color."'> ".$signal_profit.abs(round($diff_price,2))." จุด/ ".$signal_profit.abs(round($diff_percent,2))."% </span>";
		}
		 
		
		
		$status_show =  "<b class='text-".$badge_color."'> ". $status." </b>";
		
		if ($order_active==0){
			$status_show =  "<b class='text-".$badge_color."'> ". $status." (No Order) </b>";
		}
		
		$card_style='crypto-card';
		$wait_show = " <div class='pb-2 tx-11 '> <div class='lds-heart text-info'><div></div></div> <br/> <span class='text-primary tx-16'> price : ".round($last_price,2)." </span><br/>  Last Update : ".$row["last_update"]." </div> ";
		if ($stg_active!='Y')
		{
			$card_style='card-blog-overlay ';
			$status_show ='';
			$wait_show = " <div class='pb-2 tx-11 '>  <img src='assets/img_baac/bot_sleep.png' class='' >  <br/>  <span class='tx-18 text-white'> ฉันของีบหน่อยน่ะ  <br/> อยากปลุกฉันให้ไปที่ Setting </span>  </div> ";
		}
		
		$button ="  <button class='btn ripple btn-primary mr-2'> Action </button> <button class='btn ripple btn-secondary'> Setting </button>  ";
    #echo " <tr> <td>".$row["seq"]."</td> <td>".$sty ."</td> <td> <span class='badge badge-".$badge_color."'> ".$status ."</span></td> <td>".$button."</td> </tr> ";
	?>
		<div class="col-lg-4 col-md-6">
		<div class="card custom-card <?php echo $card_style; ?>  overflow-hidden ">
				<div class="card-body pb-4 text-center ht-500 ">
				
						<div class="d-flex ">
							<h5 class="d-flex mb-0"><span class="cryp-icon bg-primary my-auto mr-2 mt-1">
							<i class="cf cf-eth"></i></span> <b class="text-primary pt-1"> <?php echo $sty; ?> </b> </h5>
							<span class="float-right ml-auto btn btn-success btn-sm tx-14 ">  <?php echo $coin ?> </span>
						</div>
						<div>
							<img src='assets/img_baac/<?php echo $img_robot;?>' class='ht-80'/>
						</div>
						 
						<div>
							<span class='tx-24  text-secondary tx-baac'> BOT <?php echo $setup_name; ?> </span>
						</div>
						
						 
						<?php if ($row["op_price"]!=0) { ?>
							<div class="pb-3" >
								<span class="tx-24"> <?php echo $status_show ; ?> </span>  
							</div>
							<div class="mb-2 text-center tx-16">
								<span class="tx-16 mr-2"> Last Price : <span class="text-info tx-robo-b"> <?php echo round($last_price,2); ?> </span> 
									<span class='<?php echo $color_profit;  ?>  tx-16'> <?php echo $profit_display; ?> </span>  </span> 
								 
							</div>
							<div class="mb-2 text-center tx-18">
								Open : <span class="text-primary mr-2 tx-robo-b"> <?php echo $row["op_price"]; ?> </span> 
								StopLoss :  <span class="text-danger tx-robo-b"><?php echo $row["big_f"]; ?> </span>  
							</div>
							<div class="mb-2 text-center tx-14">
								<span class="tx-gray-600 mr-2"> Last Update :  <?php echo $row["last_update"]; ?> </span> 
								 
							</div>
						
						<?php } else {
							?>
								<div class="pb-0" > 
									<span class="tx-24"> <?php echo $status_show ; ?> </span>  
								</div>
					  <?php
								
								echo $wait_show;
							}
						?>
						<div class="col-12 mt-0"> 
							
							<?php if ($row["op_price"]!=0) { ?>
								<div class="row ">
									<div class="col-md-6 col-sm-12  ">
										<a href="db_update.php?act=up_closeorder&title=<?php echo $sty; ?>&s=<?php echo $row['seq']; ?>" class='tx-14 btn ripple btn-danger mt-2 btn-lg btn-block '>
											Close 
										</a>
									</div>
									<div class="col-md-6 col-sm-12   "> 
										 <a href="bot_stoploss.php?s=<?php echo $row["seq"]; ?>&stg=<?php echo $stg_code; ?> " class='tx-14 btn ripple btn-primary mt-2 btn-lg btn-block  '> 
											Stoploss 
										</a> 
									</div>
								</div>
									
								 
							<?php } else { ?>
							 
							 
								 <a href="bot_setting.php?s=<?php echo $row["seq"]; ?>&stg=<?php echo $stg_code; ?> " 
									class='btn ripple btn-outline-primary mr-2 mt-2 col-12'> Setting 
									</a>
						
							 <?php }  ?>
							 
							<a href="bot_order_history.php?stg=<?php echo $stg_code; ?>&u=<?php echo $row['uid']; ?>&s=<?php echo $row['seq']; ?>" 
								class='btn ripple btn-outline-info mr-2 mt-2 col-12'> History 
							</a>
							
							
						</div>
				</div>
				
				<!-- ./ card-body -->
		</div><!-- ./ card -->
		</div><!-- ./ col -->
		 
		
	<?php
	 
  } /** while**/
  

?>

</div>