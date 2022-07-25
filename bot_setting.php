
<?php 
    include("header.php");
	
	$servername = "localhost";
	$username = "root";
	$password = "matrix2805";
	$dbname = "botplus";
	 
	$conn = new mysqli($servername, $username, $password, $dbname);
	 
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}

	$seq = $_GET["s"];
	$stg = $_GET["stg"];
	$sql = "SELECT * FROM tb_setup where seq=".$seq." "; 
	$result = $conn->query($sql);
	
	$title="";
	if ($stg=="ema")
	{
		$title = "EMA CROSS"; 
	}		
	
	if ($stg=="bb")
	{
		$title = "Bolling Band"; 
	}
 
?>
	 
 
 
<!---- # START - CONFIG-SECTION # ----->
 <form action="bot_config_update.php" method="get"> 
	<div class="row row-sm mt-8">
		 
		<div class="col-md-12">
			<div class="card custom-card">
				<div class="card-body text-left">
				 
					<div>
						<h6 class="main-content-label tx-20 mb-3 text-danger"><i class="fe fe-settings mr-2"></i> <?php echo $title; ?> </h6>
					</div> 
					
					<input type="hidden" value="config" id="file_type" name="file_type" >

 <?php
	 
if ($result->num_rows > 0) {
  
  while($row = $result->fetch_assoc()) {	
  
	$wait_p  = $row["wait_p"];
	$close_p = $row["close_p"];
	$gap_p   = $row["gap_p"];
	$fsp_p   = $row["fsp_p"];
	$stoploss_p = $row["stoploss_p"];
	$lot_p   = $row["lot_p"];
	$lev_p   = $row["lev_p"];
	$sw_max   = $row["sw_max"];
	$sw_min   = $row["sw_min"];
	$userclose_p  = $row["userclose_p"];
	$order_active = $row["order_active"];
	$over_bolling = $row["over_bolling"];
	$time_frame = $row["time_frame"];
    }
  }
  
  
   
 
 ?>
   <div class="border-top"></div>
		<div class="pt-2"> 
			 <label class="main-content-label tx-13  text-primary "> <i class="fe fe-settings"></i> Strategy Setting </label>
			 
		<?php if ($stg=="ema") { ?>
			<div class="row row-xs align-items-center mg-b-20">
				<div class="col-4">
					<label class="mg-b-0"> wait_p </label>
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<input class="form-control" placeholder="" type="text" value="<?php echo $wait_p; ?>" id="wait_p" name="wait_p" >
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<div class="row" >
					<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('wait_p','+');"  ><i class="fa fa-plus"></i></button>
					<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('wait_p','-');"  ><i class="fa fa-minus"></i></button>
					</div>
				</div>
			</div>
			
			<?php $col_name = "gap_p";  ?>
			<div class="row row-xs align-items-center mg-b-20">
				<div class="col-4">
					<label class="mg-b-0"> <?php echo $col_name; ?> </label>
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<input class="form-control" placeholder="" type="text" value="<?php echo $gap_p; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<div class="row" >
					<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $col_name; ?>','+');"  ><i class="fa fa-plus"></i></button>
					<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $col_name; ?>','-');"  ><i class="fa fa-minus"></i></button>
					</div>
				</div>
			</div>
		
		
			<?php $col_name = "close_p";  ?>
			<div class="row row-xs align-items-center mg-b-20">
				<div class="col-4">
					<label class="mg-b-0"> <?php echo $col_name; ?> </label>
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<input class="form-control" placeholder="" type="text" value="<?php echo $close_p; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<div class="row" >
					<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $col_name; ?>','+');"  ><i class="fa fa-plus"></i></button>
					<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $col_name; ?>','-');"  ><i class="fa fa-minus"></i></button>
					</div>
				</div>
			</div>
		<?php } ?>
		
		<?php if ($stg=="bb") { ?>
			<?php $col_name = "sw_max";  ?>
			<div class="row row-xs align-items-center mg-b-20">
				<div class="col-4">
					<label class="mg-b-0"> <?php echo $col_name; ?> </label>
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<input class="form-control" placeholder="" type="text" value="<?php echo $sw_max; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<div class="row" >
					<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $col_name; ?>','+');"  ><i class="fa fa-plus"></i></button>
					<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $col_name; ?>','-');"  ><i class="fa fa-minus"></i></button>
					</div>
				</div>
			</div>
		 
			<?php $col_name = "sw_min";  ?>
			<div class="row row-xs align-items-center mg-b-20">
				<div class="col-4">
					<label class="mg-b-0"> <?php echo $col_name; ?> </label>
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<input class="form-control" placeholder="" type="text" value="<?php echo $sw_min; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<div class="row" >
					<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $col_name; ?>','+');"  ><i class="fa fa-plus"></i></button>
					<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $col_name; ?>','-');"  ><i class="fa fa-minus"></i></button>
					</div>
				</div>
			</div>
		
		
			<?php $col_name = "over_bolling";  ?>
			<div class="row row-xs align-items-center mg-b-20">
				<div class="col-4">
					<label class="mg-b-0"> <?php echo $col_name; ?> </label>
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<input class="form-control" placeholder="" type="text" value="<?php echo $over_bolling; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<div class="row" >
					<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $col_name; ?>','+');"  ><i class="fa fa-plus"></i></button>
					<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $col_name; ?>','-');"  ><i class="fa fa-minus"></i></button>
					</div>
				</div>
			</div>
		<?php } ?>
	</div>
	
	<div class="border-top"></div>
		<div class="pt-2"> 
			 <label class="main-content-label tx-13  text-primary"> <i class="fe fe-settings"></i> StopLoss</label>
		
		<?php $col_name = "fsp_p";  ?>
		<div class="row row-xs align-items-center mg-b-20">
			<div class="col-4">
				<label class="mg-b-0"> <?php echo $col_name; ?> </label>
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<input class="form-control" placeholder="" type="text" value="<?php echo $fsp_p; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<div class="row" >
				<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $col_name; ?>','+');"  ><i class="fa fa-plus"></i></button>
				<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $col_name; ?>','-');"  ><i class="fa fa-minus"></i></button>
				</div>
			</div>
		</div>
		
		<?php $col_name = "stoploss_p";  ?>
		<div class="row row-xs align-items-center mg-b-20">
			<div class="col-4">
				<label class="mg-b-0"> <?php echo $col_name; ?> </label>
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<input class="form-control" placeholder="" type="text" value="<?php echo $stoploss_p; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<div class="row" >
				<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $col_name; ?>','+');"  ><i class="fa fa-plus"></i></button>
				<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $col_name; ?>','-');"  ><i class="fa fa-minus"></i></button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="border-top"></div>
		<div class="pt-2"> 
			 <label class="main-content-label tx-13  text-primary"> <i class="fe fe-settings"></i> Profit/Risk</label>
		
		<?php $col_name = "lot_p";  ?>
		<div class="row row-xs align-items-center mg-b-20">
			<div class="col-4">
				<label class="mg-b-0"> <?php echo $col_name; ?> </label>
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<input class="form-control" placeholder="" type="text" value="<?php echo $lot_p; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<div class="row" >
				<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $col_name; ?>','+');"  ><i class="fa fa-plus"></i></button>
				<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $col_name; ?>','-');"  ><i class="fa fa-minus"></i></button>
				</div>
			</div>
		</div>
		
		<?php $col_name = "lev_p";  ?>
		<div class="row row-xs align-items-center mg-b-20">
			<div class="col-4">
				<label class="mg-b-0"> <?php echo $col_name; ?> </label>
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<input class="form-control" placeholder="" type="text" value="<?php echo $lev_p; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<div class="row" >
				<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $col_name; ?>','+');"  ><i class="fa fa-plus"></i></button>
				<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $col_name; ?>','-');"  ><i class="fa fa-minus"></i></button>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="border-top"></div>
	<div class="pt-2"> 
		 <label class="main-content-label tx-13  text-primary"> <i class="fe fe-settings"></i> User Action</label>
		 
		<?php $col_name = "time_frame";  ?>
		<div class="row row-xs align-items-center mg-b-20">
			<div class="col-4">
				<label class="mg-b-0"> <?php echo $col_name; ?> </label>
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<input class="form-control" placeholder="" type="text" value="<?php echo $time_frame; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<div class="row" >
				<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $col_name; ?>','+');"  ><i class="fa fa-plus"></i></button>
				<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $col_name; ?>','-');"  ><i class="fa fa-minus"></i></button>
				</div>
			</div>
		</div>
		
		
		<?php $col_name = "userclose_p";  ?>
		<div class="row row-xs align-items-center mg-b-20">
			<div class="col-4">
				<label class="mg-b-0"> <?php echo $col_name; ?> </label>
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<input class="form-control" placeholder="" type="text" value="<?php echo $userclose_p; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<div class="row" >
				<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $col_name; ?>','+');"  ><i class="fa fa-plus"></i></button>
				<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $col_name; ?>','-');"  ><i class="fa fa-minus"></i></button>
				</div>
			</div>
		</div>
		
		<?php $col_name = "order_active";  ?>
		<div class="row row-xs align-items-center mg-b-20">
			<div class="col-4">
				<label class="mg-b-0"> <?php echo $col_name; ?> </label>
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<input class="form-control" placeholder="" type="text" value="<?php echo $order_active; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<div class="row" >
				<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $col_name; ?>','+');"  ><i class="fa fa-plus"></i></button>
				<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $col_name; ?>','-');"  ><i class="fa fa-minus"></i></button>
				</div>
			</div>
		</div>
	</div>
	<input class="form-control" placeholder="" type="hidden" value="<?php echo $seq; ?>" id="seq" name="seq" >

	</form>
				<div class="row text-center" >
					<button class="btn ripple btn-primary col-12 mb-2" type="submit" >Update</button>
					
					<a href="home.php" class="btn ripple btn-dark col-12"   >Cancel</a>
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

 