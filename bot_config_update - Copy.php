
<?php 
    include("header.php");
	$file_config_bot = "bb_Config_3EMA.txt";
	$file_parameter_bot = "bb_temp_parameter.txt";
  
?>


	
	 
<?php 
   //****** Get Path Config folder ****/
	$path_config_app = "";
	$php_config = fopen("bot_config_path.txt" , "r") or die("Unable to open file!");
	while(!feof($php_config)) {
		$path_config_app =  fgets($php_config) ;
	}
	fclose($php_config);
	
   $file_type = $_GET["file_type"];
   $save_file = "";
   $title ="";
   
   if ($file_type=='config'){
	   $save_file = $file_config_bot;
	   $title  = "Update Config BOT";
   }
   else if ($file_type=='parameter'){
	   $save_file = $file_parameter_bot;
	   $title  = "Update Parameter BOT";
   }
	
   $data = get_all_get();
   $path = $path_config_app.$save_file;
   writefile($path , $data);
   function get_all_get()
   {
        $output = ""; 
        $firstRun = true; 
        foreach($_GET as $key=>$val) { 
        if($key != $parameter) { 
		
			if ($key!='file_type') {
				if(!$firstRun) { 
					$output .= "\n"; 
				} else { 
					$firstRun = false; 
				} 
				$output .= $key."=".$val;
			}
			//echo  $output."\n";
         } 
    } 

    return $output;
   }
   
   function writefile($path_file, $data)
   {    
		$file = fopen($path_file,"w");
		fwrite($file,$data); 
		fclose($file);
   }
   
?>
	
	<h4 class="text-center tx-gray-600 tx-30 font-weight-bold "> <?php echo $title ; ?> </h4>
	<h4 class="text-center text-primary tx-30 font-weight-bold ">Save Successfull</h4>
	<p class="tx-gray-700 tx-16">รอสักครู่....... ระบบจะกลับสู่หน้าหลักอัตโนมัติใน 5 วินาที</p>
	<div class="text-center">
		<div class="lds-ripple"><div></div><div></div></div>
	</div>

   
 <script> 
	setTimeout(function(){
			window.location = 'bot.php' 
		}, 10000); 
	</script>  
 

<?php 
    include("footer.php");
  
?>
