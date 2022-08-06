
<?php 
    include("header.php");
	//include 'Class/Database.php';
	
	$db = new DatabaseManage;
	$db->connect();
	
	$seq = $_GET["s"]; 
	$result = $db->selectAllData(" vtemp " ,'*'," seq=".$seq."  ");
	$result_setup = $db->selectAllData(" tb_setup " ,'*'," seq=".$seq."  ");
	  
	$big_f="0";
	$stoploss_p = "0";
	foreach ($result as $row)
	{
		$title = $row["stg_nm"]; 
		$big_f  = $row["big_f"]; 
	}
	
	foreach ($result_setup as $rowx)
	{
		$stoploss_p  = $rowx["stoploss_p"]; 
	}
	
?>
	 
 
<!---- # START - CONFIG-SECTION # ----->
 <form action="db_update.php" method="get"> 
 
	<div class="row row-sm ">
		
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="card custom-card">
				<div class="card-body text-left">
				 
					<div>
						<h6 class="main-content-label tx-20 mb-3 text-danger"><i class="fe fe-settings mr-2"></i> <?php echo $title; ?> </h6>
					</div> 
					
					<input type="hidden" value="config" id="file_type" name="file_type" >
					<input type="hidden" value="up_stoploss" id="act" name="act" >
					<input type="hidden" value="<?php echo $title; ?>" id="title" name="title" >

 
   <div class="border-top"></div>
		<div class="pt-2"> 
			 <label class="main-content-label tx-13  text-primary "> <i class="fe fe-settings"></i> Config Stoploss manual </label>
			 
			<input class="form-control" placeholder="" type="hidden" value="<?php echo $seq; ?>" id="s" name="s" >
			
			<?php $col_name = "big_f";  ?>
			<div class="row row-xs align-items-center mg-b-20">
				<div class="col-4">
					<label class="mg-b-0"> Stoploss </label>
				</div>
				<div class="col-4 mg-t-5 mg-md-t-0">
					<input class="form-control" placeholder="" type="text" value="<?php echo $big_f; ?>" id="<?php echo $col_name; ?>" name="<?php echo $col_name; ?>" >
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
					<label class="mg-b-0"> Stoploss </label>
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
	
	 
	

	</form>
				<div class="row">
					<div class="col-md-6 col-sm-12">
						<button class="btn ripple btn-primary col-12 mb-2" type="submit" >Update</button>
					</div>
					<div class="col-md-6 col-sm-12"> 
						 <a href="home.php" class="btn ripple btn-dark col-12"  >Cancel</a>
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
 

</script>

 