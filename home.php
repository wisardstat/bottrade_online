<?php  
    include("header.php");  
?> 

	<!-- Page Header -->
	<div class="page-header">
		<div class="pt-0 text-left">
			<h2 class="main-content-title tx-24 mg-b-5">Robot Commander</h2>
			<p>  Last Update : <span class="time_update">  10.122  </span></br>
			  (Auto-Refresh) </p>
		</div>
		<div class="d-flex ">
			<div class="justify-content-center"> 
					<button class="btn btn-warning btn-rounded btn-icon" type="button" onclick="Refresh()" >
						<i class="fe fe-refresh-ccw"></i> 
					</button> 
			</div>
		</div>
	</div>
	<!-- End Page Header -->
 
 
	
	

	<div class='load_bot' ></dov>
			 
	
				


<script language="javascript">

	$(document).ready(function(){  
	
		ShowTime();
		LoadBotList();
	}) 
	
	function ShowTime()
	{
		var today = new Date();
		var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
		var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
		var dateTime = date+' '+time;
		
		$('.time_update').html(dateTime); 
	}
	
	function LoadBotList()
	{	
		ShowTime();
		$('.load_bot').html('<div class="text-center"> <div class="spinner-border text-warning" role="status"> <span class="sr-only">Loading...</span></div> </div>');
        var url = "load_home.php"; 
        $.post(url, function (result) {

            if (result != null) {
                $('.load_bot').html(result);
            }
            else {
                alert("Error!!");
            }
        }); 
	}
	 
	function Refresh()
	{
		LoadBotList();
		 //window.location.reload(1);
	}
	
	setTimeout(function(){
		LoadBotList();
	   //window.location.reload(1);
	}, 60000); // 6 second 

</script>


<?php 
    include("footer.php");
?>