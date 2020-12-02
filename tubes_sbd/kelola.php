<?php 
	session_start();

	if(empty($_SESSION['username']) and empty($_SESSION['password'])){
	header("location:index.php");
	}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Tabel Data Admin yang memasukkan data</title>

    <!-- Bootstrap core CSS -->
    <link href="dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="jumbotron.css" rel="stylesheet">
	<link href="assets/css/footer.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
		
	<?php include ("header.php"); ?>

	<div class="container">
    <div class="row">
        <div class="col-md-12">
			<h2><center>Data Alumni yang dimasukkan oleh Admin</h2></br>  
		</div>
    </div>
	
	<div class="row">
        <div class="col-md-12">
			<!-- building table to put the data -->
			
			<table class="table table-striped table-bordered table-hover" id="dataTables-example">
				<thead>                                   
					<tr>
						<th><center>NIM</th>
						<th><center>Nama</th>
						<th><center>Admin yang memasukkan</th>
						
					</tr>
				</thead>
				
				<tbody>
				<?php
					//put file which is connected to database
					include ("koneksi.php");
					
					//take data from database to be shown
					$no=1;
					$query = "SELECT a.nim, a.nama, b.username FROM alumni a inner join admin b on a.id_admin=b.id_admin ";
					$result = mysqli_query($connect, $query);
					while($row = mysqli_fetch_array($result))
					{
				?>
					<tr>
						<!-- put data which we want to show via table -->
						<td align="center"><?php echo $row['nim'] ?></td>
						<td align="center"><?php echo $row['nama'] ?></td>
						<td align="center"><?php echo $row['username'] ?></td>
					</tr>
				<?php
				$no++;
					}
				?>
				</tbody>	
			</table>
			<div style="float: right;">
			</div>
        </div>
    </div>
	</div></br></br>
	<?php include ("footer.php"); ?>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>
</body>

</html>