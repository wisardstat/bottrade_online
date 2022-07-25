
<?php 
    include("header.php");
	
	//****** Get Path Config folder ****/
	$path_config_app = "";
	$php_config = fopen("bot_config_path.txt" , "r") or die("Unable to open file!");
	while(!feof($php_config)) {
		$path_config_app =  fgets($php_config) ;
	}
	fclose($php_config);
	 
	
	$path_config = $path_config_app."bb_Config_3EMA.txt";
	$path_parameter = $path_config_app."bb_temp_parameter.txt";
	 
?>
	
 
	<div class="row row-sm mt-8">
		 
		<div class="col-md-12">
			<div class="card custom-card">
				<div class="card-body">
					<div class="row text-left" >
						<div class="col-8">
							<span> (Auto-Refresh)  <div class="spinner-grow spinner-grow-sm" role="status">
								<span class="sr-only">Loading...</span>
							</div>
							</br> Last Update : <span id="time_update">  10.122 </span>
							</span>
							
						</div>
						<div class="col-4">
							<button class="btn ripple btn-outline-dark col-12" type="button" onclick="Refresh()" >Refresh</button>
						</div>
					</div>
				 

				</div>
				</div><!--card-body -->
			</div><!--card -->
	</div><!--col-12 -->

<div class="col-md " id="card_buy" >
	<div class="card custom-card  bg-primary tx-white">
		<div class="card-body">
			<h3 class="tx-white mg-b-10">ORDER BUY</h3>
			<p class="card-subtitle mg-b-15 tx-white-8">
				ราคาเปิด :  <span id='buy_open_price'> 0 </span>
			</p>
			<p class="card-subtitle mg-b-15 tx-white-8">
				Stop-loss : <span id='buy_stop_price'> 0  </span>
			</p>
			
		</div>
	</div>
</div>


<div class="col-md " id="card_sell" >
	<div class="card custom-card  bg-danger tx-white">
		<div class="card-body">
			<h3 class="tx-white mg-b-10">ORDER SELL</h3>
			<p class="card-subtitle mg-b-15 tx-white-8">
				ราคาเปิด :  <span id='sell_open_price'> 0 </span>
			</p>
			<p class="card-subtitle mg-b-15 tx-white-8">
				Stop-loss : <span id='sell_stop_price'> 0  </span>
			</p>
			
		</div>
	</div>
</div>

<!---- # START - PARAMETER-SECTION # ----->

 <form id="form_parameter" action="bot_config_update.php" method="get"> 
	<div class="row row-sm mt-4">
		 
		<div class="col-md-12">
			<div class="card custom-card">
				<div class="card-body text-left">
				 
					<div>
						<h6 class="main-content-label mb-1"> Work Status / สถานะการทำงาน </h6>
					</div> 
					
					<input class="form-control" placeholder="" type="hidden" value="parameter" id="file_type" name="file_type" >

 <?php
	$myfile = fopen($path_parameter, "r") or die("Unable to open file!");
	 
	while(!feof($myfile)) {
	  $row =  fgets($myfile) ;
	  
	  $arr_row = explode ("=", $row); 
	  $code = $arr_row[0] ;
	  $value = $arr_row[1] ;
	   
	  if (strlen(trim($code ))>0)
	  {  
 ?>

	<div class="row row-xs align-items-center mg-b-20">
	   <div class="col-4">
			<label class="mg-b-0"> <?php echo $code; ?> </label>
		</div>
		<div class="col-4 mg-t-5 mg-md-t-0">
			<input class="form-control" placeholder="" type="text" value="<?php echo $value; ?>" id="<?php echo $code; ?>" name="<?php echo $code; ?>" >
		</div>
		<div class="col-4 mg-t-5 mg-md-t-0">
			<div class="row" >
			<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $code; ?>','+');"  ><i class="fa fa-plus"></i></button>
			<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $code; ?>','-');"  ><i class="fa fa-minus"></i></button>
			</div>
		</div>
	</div>  
  
<?php 
	   }
    }
    fclose($myfile);
?> 
	</form>
				<div class="row text-center" >
				
					<div class="col-12">
						<button class="btn ripple btn-dark col-12" type="submit" >Update</button>
					</div>
					
					<div class="col-12 mt-2">
						<button class="btn ripple btn-outline-primary col-12" type="button" onclick="OrderBuy()" > OPEN-BUY </button>
					</div>
					
					<div class="col-12 mt-2">
						<button class="btn ripple btn-outline-danger col-12" type="button" onclick="OrderSell()" > OPEN-SELL </button>
					</div>
					
					<div class="col-12 mt-2">
						<button class="btn ripple btn-outline-info col-12" type="button" onclick="CloseOrder()"  > CLOSE-ORDER </button>
					</div>
					
				</div>
				 
				
				</div><!--card-body -->
			</div><!--card -->
		</div><!--col-12 -->
	</div> 
<!---- # END - PARAMETER-SECTION # -----> 
 
 
 
<!---- # START - CONFIG-SECTION # ----->
 <form action="bot_config_update.php" method="get"> 
	<div class="row row-sm mt-8">
		 
		<div class="col-md-12">
			<div class="card custom-card">
				<div class="card-body text-left">
				 
					<div>
						<h6 class="main-content-label mb-3"> Config / ตั้งค่าระบบ </h6>
					</div> 
					
					<input type="hidden" value="config" id="file_type" name="file_type" >

 <?php
	$myfile = fopen($path_config , "r") or die("Unable to open file!");
	// Output one line until end-of-file
	 

	while(!feof($myfile)) {
	  $row =  fgets($myfile) ;
	  
	  $arr_row = explode ("=", $row); 
	  $code = $arr_row[0] ;
	  $value = $arr_row[1] ;
	   
	  if (strlen(trim($code ))>0)
	  {  
 ?>

	<div class="row row-xs align-items-center mg-b-20">
		<div class="col-4">
			<label class="mg-b-0"> <?php echo $code; ?> </label>
		</div>
		<div class="col-4 mg-t-5 mg-md-t-0">
			<input class="form-control" placeholder="" type="text" value="<?php echo $value; ?>" id="<?php echo $code; ?>" name="<?php echo $code; ?>" >
		</div>
		<div class="col-4 mg-t-5 mg-md-t-0">
			<div class="row" >
			<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $code; ?>','+');"  ><i class="fa fa-plus"></i></button>
			<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $code; ?>','-');"  ><i class="fa fa-minus"></i></button>
			</div>
		</div>
	</div>  
  
<?php 
	   }
    }
    fclose($myfile);
?> 
	</form>
				<div class="row text-center" >
					<button class="btn ripple btn-dark col-12" type="submit" >Update</button>
				</div>
				</div><!--card-body -->
			</div><!--card -->
		</div><!--col-12 -->
	</div>

<!---- # END - CONFIG-SECTION # ----->




<?php 
    include("footer.php");
?>

<script language="javascript">
	 
	var today = new Date();
	var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
	var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
	var dateTime = date+' '+time;
	$('#time_update').html(dateTime); 
	 
	
	setTimeout(function(){
	   window.location.reload(1);
	}, 60000); // 6 second 

	_buy_f  = $("#buy_f").val();
	_sell_f  = $("#sell_f").val();	
	_op_price = $("#op_price").val();	
	_big_f = $("#big_f").val();	
	
	$('#card_buy').hide();
	$('#card_sell').hide();
	 
	
	if (_buy_f=='1') {
		$('#card_buy').show();  
		$("#buy_open_price").html(_op_price);
		$("#buy_stop_price").html(_big_f);
	}
	if (_sell_f=='1') {
		$('#card_sell').show(); 
		$("#sell_open_price").html(_op_price);
		$("#sell_stop_price").html(_big_f);
	}
	
</script>

<script>
	function add(_id,signal)
	{ 
		_val = $("#"+_id).val(); 
		_number = 1 ;
		
		if (_id=='lot_p')
		{
			_number = parseFloat('0.01')  ;
			
			if (signal=="+")
			{
				_val = parseFloat(_val)+_number ;
			}
			else
			{
				_val = parseFloat(_val)-_number ;
			} 
			
			_val = _val.toFixed(2);
		}
		else
		{ 
			if (signal=="+")
			{
				
				_val = parseInt(_val)  +_number ;
			}
			else
			{
				_val = parseInt(_val)  -_number ;
			}
		}
		
		if (_val<0) {
			_val = 0 ;
		}
		
		$("#"+_id).val(_val );
		
		return false;
	}

	function Refresh()
	{
		 window.location.reload(1);
	}

	function OrderSell()
	{	
		//alert('OKOKO');
		
		$('#order_action').val('2'); 
		const form  = document.getElementById('form_parameter');
		form.submit();
	}
	
	function OrderBuy()
	{	
		//alert('OKOKO');
		
		$('#order_action').val('1'); 
		const form  = document.getElementById('form_parameter');
		form.submit();
	}
	
	function CloseOrder()
	{	
		//alert('OKOKO');
		
		$('#order_action').val('3'); 
		const form  = document.getElementById('form_parameter');
		form.submit();
	}
	

</script>

 