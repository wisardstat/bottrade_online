
<?php 
    include("header.php");
 
?>


	
	 
<?php  
   function get_all_get()
   {	
		$seq = "";
        $output = ""; 
        $firstRun = true; 
        foreach($_GET as $key=>$val) { 
			if($key != $parameter) { 
			
				if ($key!='file_type') {
					
					if($firstRun) { 
						$output .= $key."='".$val."'"; 
						$firstRun = false; 
					}  
					else if ($key=='seq')
					{
						$seq = $val;
					}
					else{
						$output .= " ,". $key."='".$val."' ";
					}
				}
				//echo  $output."\n";
			 } 
		} 
		
    return "update tb_setup set ".$output." where seq=".$seq;
   }
    
	$sql = get_all_get(); 
	//echo $sql;
	
	$servername = "localhost";
	$username = "root";
	$password = "matrix2805";
	$dbname = "botplus";
	 
	$conn = new mysqli($servername, $username, $password, $dbname);
	 
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	} 
	 
	$result ="";
	$bsuccess = false;
	if ($conn->query($sql) === TRUE) {
		$result = '<h4 class="text-center text-primary tx-30 font-weight-bold "> บันทึกข้อมูลเรียบร้อยแล้ว / Save Successfull </h4><p class="tx-gray-700 tx-16">รอสักครู่....... ระบบจะกลับสู่หน้าหลักอัตโนมัติใน 5 วินาที</p>';
		$bsuccess =true;
	} else {
		$result = '<h4 class="text-center text-danger tx-14 "> ' . $sql . " <br/><br/>" . $conn->error .'</h4>';
	}
	
	$title  ="บันทึกการตั้งค่ากลยุทธ์";
?>
	
	<h4 class="text-center tx-gray-600 tx-30 font-weight-bold "> <?php echo $title ; ?> </h4>
	
	<?php echo $result; ?>
	
	<div class="text-center">
		<div class="lds-ripple"><div></div><div></div></div>
	</div>

  <?php if ($bsuccess==true) { ?>
 <script> 
 	setTimeout(function(){
			window.location = 'home.php' 
		}, 10000); 
</script>  
  <?php } ?>

<?php 
    include("footer.php");
  
?>
