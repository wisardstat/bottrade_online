
<?php 
    include("header.php");
	
?> 
	 
<?php  
	$servername = "localhost";
	$username = "root";
	$password = "matrix2805";
	$dbname = "botplus"; 
	$conn = new mysqli($servername, $username, $password, $dbname);
	
    $seq = $_GET["seq"];
	$stg = $_GET["stg"];
	$big_f = $_GET["big_f"];
	
	$sql = " update tb_temp set big_f='".$big_f."' where seq='".$seq."'"; 
	$remark ="Update Stoploss Success!! "; 
	 
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	} 
	
	$result ="";
	$bsuccess = false;
	if ($conn->query($sql) === TRUE) {
		$result = '<h4 class="text-center text-primary tx-30 font-weight-bold "> '.$remark.' </h4><p class="tx-gray-700 tx-16">รอสักครู่....... ระบบจะกลับสู่หน้าหลักอัตโนมัติใน 5 วินาที</p>';
		$bsuccess =true;
	} else {
		$result = '<h4 class="text-center text-danger tx-14 "> ' . $sql . " <br/><br/>" . $conn->error .'</h4>';
	}
	
	$title = $stg;
?>
	
	<h4 class="text-center tx-gray-600 tx-20 font-weight-bold "> <?php echo $title ; ?> </h4>
	
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
