
<?php 
 include("header2.php"); 
 //include 'Class/Database.php';
?> 

<br/><br/><br/><br/> 
 

<?php 
   
	
	$db = new DatabaseManage;
	$db->connect();
	
	
	$action = $_GET["act"]; 
	
	$wait_sec = 10000;
	$result ="";
	$result_db = false; 
	
	if ($action=='up_config')
	{
		$title  = $_GET["title"];
		$seq    = $_GET["s"]; 
		// Create SQL Command  
		$seq = ""; 
		$firstRun = true; 
		$field  = "";
		$values ="";
		$have_order_active=0;
		$have_stg_active=0;
		
		foreach($_GET as $key=>$val) { 
			if($key != $parameter) { 
			
				if ($key!='file_type') { 
					if($firstRun) {  
						$firstRun = false; 
					}  
					else if ($key=='seq')
					{
						$seq = $val;
					}
					else if ($key=='order_active')
					{
						if ($val=='on')
						{
							$field .=  $key.",";
						    $values .= "1,";
						}
						$have_order_active=1;
					}
					else if ($key=='stg_active')
					{
						if ($val=='on')
						{
							$field .=  $key.",";
						    $values .= "Y,";
						}
						$have_stg_active=1;
					}
					else if ($key=='title')
					{
						//$seq = $val;
					}
					else{
						 
						$field .=  $key.",";
						$values .= $val.",";
					}
				} 
			 } 
		} 
		
		if ($have_order_active==0)
		{
			$field  .=  "order_active,";
			$values .= "0,";
		}
		if ($have_stg_active==0)
		{
			$field  .=  "stg_active,";
			$values .= "N,";
		}
		 
		$field = substr($field,0,strlen($field)-1);
		$values = substr($values,0,strlen($values)-1);
		 
		$result_db = $db->updateData('tb_setup',$field,$values," seq=".$seq);
		
		if ($result_db)
		{
			$result = "บันทึกข้อมูลการตั้งค่าเรียบร้อยแล้ว".'<p class="tx-gray-600 tx-16">รอสักครู่....... ระบบจะกลับสู่หน้าหลักอัตโนมัติใน 5 วินาที</p>' ;
		}
		else{
			$result =  "Fail!! ไม่สามารถบันทึกข้อมูลได้ ";
		}
	}
	else if ($action=='up_stoploss')
	{
		$title  = $_GET["title"];
		$seq    = $_GET["s"]; 
		$big_f = $_GET["big_f"];
		$stoploss_p = $_GET["stoploss_p"];
		//$sql = " update tb_temp set big_f='".$big_f."' where seq='".$seq."'";  
		$result_db = $db->updateData('tb_temp','big_f',$big_f," seq=".$seq);
		
		$result_db = $db->updateData('tb_setup','stoploss_p',$stoploss_p," seq=".$seq);
		
		if ($result_db)
		{
			$result = "บันทึกข้อมูลการตั้งค่าเรียบร้อยแล้ว".'<p class="tx-gray-600 tx-16">รอสักครู่....... ระบบจะกลับสู่หน้าหลักอัตโนมัติใน 5 วินาที</p>' ;
		}
		else{
			$result =  "Fail!! ไม่สามารถบันทึกข้อมูลได้ ";
		}
	}
	else if ($action=='up_theme')
	{
		$theme  = $_GET["theme"];
		$uid    = $_GET["uid"]; 
		$title  = "ตั้งค่า Theme ใหม่ ";
		$result_db = $db->updateData('tb_users','theme',$theme," user_id=".$uid);
		
		
		if ($result_db)
		{
			$result = "บันทึกข้อมูลการตั้งค่าเรียบร้อยแล้ว".'<p class="tx-gray-600 tx-16">รอสักครู่....... ระบบจะกลับสู่หน้าหลักอัตโนมัติใน 5 วินาที</p>' ;
			$wait_sec = 100;
		}
		else{
			$result =  "Fail!! ไม่สามารถบันทึกข้อมูลได้ ";
		} 
	}
	else if ($action=='up_closeorder')
	{
		$seq    = $_GET["s"]; 
		$title  = $_GET["title"];
		$result_db = $db->updateData('tb_temp','close_order',1," seq=".$seq);
		
		
		if ($result_db)
		{
			$result = "Close Order Complete".'<p class="tx-gray-600 tx-16">รอสักครู่....... ระบบจะกลับสู่หน้าหลักอัตโนมัติใน 5 วินาที</p>' ; 
		}
		else{
			$result =  "Fail!! ไม่สามารถบันทึกข้อมูลได้ ";
		} 
	}
  
?>
	
	<div class='text-center'>
	<img src='assets/img_baac/robot_happy.png'/>
	</div>
	<h4 class="text-center tx-warning tx-30 font-weight-bold tx-baac "> <?php echo $title ; ?> </h4>
	
	
	<h4 class="text-center text-primary tx-30 font-weight-bold tx-baac "> <?php echo $result; ?> </h4>
	
	
	
	<div class="text-center">
		<div class="lds-ripple"><div></div><div></div></div>
	</div>
	 

  <?php if ($result_db==true) { ?>
 <script> 
 	setTimeout(function(){
			window.location = 'home.php' 
		}, <?php echo $wait_sec ; ?>); 
</script>  
  <?php } ?>

<?php 
    include("footer.php");
  
?>
