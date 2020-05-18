<?php
	include "koneksi.php";
	$sel = "SELECT * FROM tbl_transaksi WHERE status='WAITING'";
	$data = $conn->query($sel);
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Pemesanan Makanan</title>
		<link href="css/style.css" rel="stylesheet"/>
		<link href="css/bootstrap.css" rel="stylesheet"/>
		<script src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/angular.min.js"></script>
		<script type="text/javascript">
		    var auto_refresh = setInterval(
		    function () {
					window.location = './detail.php';
		     
		    }, 5000); 

		</script>
	</head>
	<body>
		<div id="load_content">
			<div class="header">
				<div class="col-md-1">
				</div>
				<div class="col-md-9">
					<h1>Sistem Pemesanan Makanan</h1>
				</div>
				<div class="col-md-2">
					<button class="btn btn-danger glyphicon glyphicon-log-out">
						<a href="logout.php">LOGOUT</a>
					</button>
				</div>
			</div>
			<div id="wrapper">
				<div class="row">
					<?php
					$no=1;
					while($row = $data->fetch_array()){?>
					<form action="aksi.php?aksi=update" method="post">
					  <div class="col-sm-6 col-md-3">
					    <div class="thumbnail">
					      <div class="caption">
					        <h3><?php echo $no;?></h3>
					        	<table class="table table-striped">
											<tr>
												<td><b>Menu</b></td>
												<td><b>Qty</b></td>
											</tr>
											<tr>
												<?php if($row['mie']){?>
													<td>mie</td>
													<td><?php echo $row['mie'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['bika']){?>
													<td>bika</td>
													<td><?php echo $row['bika'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['rendang']){?>
													<td>rendang</td>
													<td><?php echo $row['rendang'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['pempek']){?>
													<td>pempek</td>
													<td><?php echo $row['pempek'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['kerak_telor']){?>
													<td>kerak telor </td>
													<td><?php echo $row['kerak_telor'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['serabi']){?>
													<td>serabi</td>
													<td><?php echo $row['serabi'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['gudeg']){?>
													<td>gudeg</td>
													<td><?php echo $row['gudek'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['rujak']){?>
													<td>rujak</td>
													<td><?php echo $row['rujak'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['betutu']){?>
													<td>betutu</td>
													<td><?php echo $row['betutu'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<?php if($row['soto']){?>
													<td>soto</td>
													<td><?php echo $row['soto'];?></td>
												<?php	};?>
											</tr>
											<tr>
												<td>Waiting</td>
												<td>
													<a href="login.php?login=update&no=<?php echo $row['id_transaksi']; ?>">Selesai</a>
												</td>
											</tr>
										</table>
					      </div>
					    </div>
					  </div>
						<?php $no++; } ?>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>