
<?php 
    include("header.php");
	//include 'Class/Database.php';
	
	$db = new DatabaseManage;
	$db->connect();
	
	$seq = $_GET["s"];
	$result = $db->selectAllData(" tb_setup " ,'*'," seq=".$seq." ");
	$result_stg = $db->selectAllData(" ref_strategy " ,'*'," 1=1 ");
	
	$title=""; 
?>

<br/>
<!---- # START - CONFIG-SECTION # ----->
 <form action="db_update.php?act=up_config" method="get"> 
	<div class="row row-sm mt-10 tx-baac">
		 <br/>
		<div class="col-md-12 mt-10">
			<div class="card custom-card">
				<div class="card-body text-left">
				 
					<div>
						<h6 class="main-content-label tx-20 mb-3 text-danger tx-robo-b"><i class="fe fe-settings mr-2"></i> <span id='etitle'></span> </h6>
					</div> 
					
					<input type="hidden" value="config" id="file_type" name="file_type" >

 <?php
    $order_active_chk="";
	$stg_active_chk="";
   foreach ($result as $row) { 	
	$title   = $row["setup_name"];
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
	$stg_active = $row["stg_active"];
	$stg_code = $row["stg_code"];
	
	$symbol   = $row["symbol"];
	$setup_name   = $row["setup_name"];
	
	$stg_code = $row["stg_code"];
	$stg = $row["stg_code"];
	
	if ($order_active==1)
	{
		$order_active_chk="checked";
	}
	
	if ($stg_active=="Y")
	{
		$stg_active_chk="checked";
	}
    
  }
  
 ?>
   <div class="border-top"></div>
		<div class="pt-2"> 
			 <label class="main-content-label tx-13  text-primary "> <i class="fe fe-settings"></i> Strategy Setting </label>
			 
 			 <input class="form-control" placeholder="" type="hidden" value="up_config" id="act" name="act" >
			  <input class="form-control" placeholder="" type="hidden" value="" id="title" name="title" >
		
			<?php $col_name = "setup_name";  ?>
			<div class="row row-xs align-items-center mg-b-20">
				<div class="col-4">
					<label class="mg-b-0"> ชื่อบอท / Bot Name </label>
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<input class="form-control" placeholder="" type="text" value="<?php echo $setup_name; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<div class="row" >
					<button class="btn ripple btn-outline-primary btn-icon ml-4 mr-2" onclick="return add('<?php echo $col_name; ?>','+');"  ><i class="fa fa-plus"></i></button>
					<button class="btn ripple btn-outline-primary btn-icon" onclick="return add('<?php echo $col_name; ?>','-');"  ><i class="fa fa-minus"></i></button>
					</div>
				</div>
			</div>
			
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
		
		
		<?php if ($stg=="adx") { ?>
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
		 
		 
		 
		<?php $col_name = "symbol";  ?>
		<div class="row row-xs align-items-center mg-b-20">
			<div class="col-4">
				<label class="mg-b-0"> ชนิดของเหรียญ <br/> Symbol </label>
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<input class="form-control" placeholder="" type="text" value="<?php echo $symbol; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
			</div>
			 
		</div>
		
		<?php $col_name = "stg_code";  ?>
		<div class="row row-xs align-items-center mg-b-20">
			<div class="col-4">
				<label class="mg-b-0"> กลยุทธ์ของบอท <br/> BOT Strategy </label>
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				<div class="form-group">
					<select  class="form-control select "  id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>"   >
					<?php
						foreach ($result_stg as $row) { 
							if ($row['stg_code']==$stg_code)
							{
								echo '<option value="'.$row['stg_code'].'" selected>'.$row['stg_nm'].'</option>';
							}
							else{
								echo '<option value="'.$row['stg_code'].'">'.$row['stg_nm'].'</option>';
							}
						}
					?>
					</select>
				</div>
			</div>
			 
		</div>
		
		 
		<?php $col_name = "time_frame";

			$tf_5mins = "";
			$tf_15mins = "";
			$ts_30mins = "";
			
			switch ($time_frame) {
				case "5":
					$tf_5mins = "selected";
					break;
				case "15":
					$tf_15mins = "selected";
					break;
				case "30":
					$tf_30mins = "selected";
					break;
			}
		?>
		<div class="row row-xs align-items-center mg-b-20">
			<div class="col-4">
				<label class="mg-b-0"> <?php echo $col_name; ?> </label>
			</div>
			<div class="col-6 mg-t-5 mg-md-t-0">
				
				<div class="form-group">
					<select  class="form-control select "  id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>"   >
					   <option value='5' <?php echo $tf_5mins ; ?> >5 minutes</option>
					   <option value='15' <?php echo $tf_15mins ; ?> >15 minutes</option>
					    <option value='30' <?php echo $tf_30mins ; ?> >30 minutes</option>
					</select>
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
				<label class="mg-b-0">  อนุญาติให้มีการซื้อขายบนกระดานเทรด <br/> (order_active) </label>
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				 
				<label class="custom-switch">
					<input type="checkbox"  class="custom-switch-input"  id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" <?php echo $order_active_chk; ?> >
					<span class="custom-switch-indicator"></span>
					 
				</label>
			</div>
		</div>
		
		<?php $col_name = "stg_active";  ?>
		<div class="row row-xs align-items-center mg-b-20">
			<div class="col-4">
				<label class="mg-b-0"> เปิดการทำงานของบอท <br/>(stg_active)  </label>
			</div>
			<div class="col-4 mg-t-5 mg-md-t-0">
				 
				<label class="custom-switch">
					<input type="checkbox"  class="custom-switch-input"  id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" <?php echo $stg_active_chk; ?> >
					<span class="custom-switch-indicator"></span>
					 
				</label>
			</div>
		</div>
		 
		
	</div>
	<input class="form-control" placeholder="" type="hidden" value="<?php echo $seq; ?>" id="seq" name="seq" >

	</form>
				 
					<div class="row text-center mt-5" >
						<div class="col-md-6 col-sm-12">
							<button class="btn ripple btn-primary col-12 mb-2" type="submit" >Update</button>
						</div>
						<div class="col-md-6 col-sm-12">
							<a href="home.php" class="btn ripple btn-dark col-12" >Cancel</a>
						</div>
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
	   $('#etitle').html("<?php echo $title ;?>");
	   $('#title').val("<?php echo $title ;?>");
	
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

 