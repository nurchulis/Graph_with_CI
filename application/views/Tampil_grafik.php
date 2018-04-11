<!DOCTYPE html> 
  <head> 
  <title>Rata Rata Data Makul Di KRS</title>  
    <!--Load the AJAX API--> 
    <link rel="stylesheet" type="text/css" href="./assets/css/bootstrap.css">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script> 
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> 
    <script type="text/javascript"> 
     
    // Load the Visualization API and the piechart package. r
    google.charts.load('current', {'packages':['corechart']}); 
       
    // Set a callback to run when the Google Visualization API is loaded. 
    google.charts.setOnLoadCallback(drawChart); 
       
    function drawChart() { 

      var jsonData = $.ajax({ 
          url: "<?php echo base_url() . 'index.php/Tampil_grafik/getdata' ?>", 
          dataType: "json", 
          async: false 
          }).responseText; 
           
      // Create our data table out of JSON data loaded from server. 
      

      var data = new google.visualization.DataTable(jsonData); 
	
	 var options = {
	 	 backgroundColor: "#2ecc71",
          title: 'Grafik Mata Kuliah Yang diambil', 
          pieHole: 0.4,
          width: 400,
          height: 300,
          
        };

       // Instantiate and draw our chart, passing in some options. 
      var chart = new google.visualization.PieChart(document.getElementById('chart_div')); 
      chart.draw(data,options); 
    } 
 
    </script> 
    <script type="text/javascript"> 
     
    // Load the Visualization API and the piechart package. r
    google.charts.load('current', {'packages':['corechart']}); 
       
    // Set a callback to run when the Google Visualization API is loaded. 
    google.charts.setOnLoadCallback(drawChart); 
       
    function drawChart() { 
      var jsonData = $.ajax({ 
          url: "<?php echo base_url() . 'index.php/Tampil_grafik/getdata2' ?>", 
          dataType: "json", 
          async: false 
          }).responseText; 
           
      // Create our data table out of JSON data loaded from server. 
      var data = new google.visualization.DataTable(jsonData); 
       var options = {
	 	 backgroundColor: "#3498db",
          title: 'Grafik Jenis Kelamin Mahasiswa', 
          pieHole: 0.4,
          width: 400,
          height: 300,
          
        };
 
      // Instantiate and draw our chart, passing in some options. 
      var chart = new google.visualization.PieChart(document.getElementById('chart_div2')); 
      chart.draw(data, options); 
    } 
 
    </script> 
     <script type="text/javascript"> 
     
    // Load the Visualization API and the piechart package. r
    google.charts.load('current', {'packages':['corechart']}); 
       
    // Set a callback to run when the Google Visualization API is loaded. 
    google.charts.setOnLoadCallback(drawChart); 
       
    function drawChart() { 
      var jsonData = $.ajax({ 
          url: "<?php echo base_url() . 'index.php/Tampil_grafik/getdata3' ?>", 
          dataType: "json", 
          async: false 
          }).responseText; 
           
      // Create our data table out of JSON data loaded from server. 
      var data = new google.visualization.DataTable(jsonData); 
 	 var options = {
	 	 backgroundColor: "#bdc3c7",
	 	 color:"white",
          title: 'Grafik Data Angakatan Mahasiswa', 
          pieHole: 0.4,
          width: 400,
          height: 300,
          
        };	
      // Instantiate and draw our chart, passing in some options. 
      var chart = new google.visualization.PieChart(document.getElementById('chart_div3')); 
      chart.draw(data,options); 
    } 
 
    </script> 
<style> 
h1 { 
    text-align: center; 
} 
</style> 
  </head> 
 
  <body> 
    <!--Div that will hold the pie chart--> 
    <center>
    <h3>Menampilkan Rata-Rata Data Akademik</h3> 
    </center> 
 <div class="row">
 <div class="col-md-4" style="margin:0px">
 	<div id="chart_div"></div> 
 	<center><div><h5>Data Pengambilan Mata Kuliah</h5>
 	</div></center>
 </div>
 <div class="col-md-4" style="margin:0px">
    <div id="chart_div2"></div>
    	<center><div><h4>Data Jenis Kelamin Mahasiswa</h4>
 	</div></center>
 </div>
 <div class="col-md-4" style="margin:0px">
    <div id="chart_div3"></div>
    	<center><div><h4>Data Banyak Angakatan</h4>
 	</div></center>
 </div>
 

 </div>
  </body> 
</html>