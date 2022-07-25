 

Update Successfull

<?php 
   //echo ">>".$_GET["wait_p"];
   $data = get_all_get();
   
   $path = "C:\\AppServ\\www\\New folder\\bb_temp_parameter.txt";
   writefile($path , $data);
   
   echo "<script>window.location = 'bot.php'</script>";
   
   function get_all_get()
   {
        $output = ""; 
        $firstRun = true; 
        foreach($_GET as $key=>$val) { 
        if($key != $parameter) { 
            if(!$firstRun) { 
                $output .= "\n"; 
            } else { 
                $firstRun = false; 
            } 
            $output .= $key."=".$val;
			//echo  $output."\n";
         } 
    } 

    return $output;
   }
   
   function writefile($path_file, $data)
   {    
		$file = fopen($path_file,"w");
		echo fwrite($file,$data); 
		fclose($file);
   }
   
?>