<?php
	include "koneksi.php";
	$sel = "SELECT * FROM tbl_menu";
	$data = $conn->query($sel);
?>
<!DOCTYPE html>
<html ng-app>
	<head>
		<title>Pemesanan Makanan</title>
		<link href="css/style.css" rel="stylesheet"/>
		<link href="css/bootstrap.css" rel="stylesheet"/>
		<script src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/angular.min.js"></script>
	</head>
	<body>
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
		<div class="container">
			<form action="login.php?login=insert" method="post">
				<div class="row">
					<div class="col-md-9">
						<div class="row">
							<?php
							while($row = $data->fetch_array()){?>
							  <div class="col-sm-6 col-md-3">
							    <div class="thumbnail">
							      <img src="img/<?php echo $row['foto_menu'];?>.jpg" alt="...">
							      <div class="caption">
							        <h3><?php echo $row['nama_menu'];?></h3>
							        <p>Rp. <?php echo $row['harga_menu'];?></p>
											<input min="0" type="number" name="<?php echo $row['foto_menu'];?>" class="qty" data-qty="<?=$row['foto_menu']?>" ng-model="<?php echo $row['id_menu'];?>" ng-init="<?php echo $row['id_menu'];?>=0"/>
							      </div>
							    </div>
							  </div>
								<?php } ?>
						</div>
					</div>
					<div class="col-md-3">
						<div class="col-md-12">
							<table class="table table-striped">
								<?php
								$data = $conn->query($sel);
								while($row = $data->fetch_array()){ ?>
								<tr ng-show="<?=$row['id_menu']?> > 0">
									<td><?=$row['nama_menu']?></td>
									<td>{{ <?=$row['id_menu']?>}}</td>
									<td>{{ <?=$row['harga_menu']?>*<?=$row['id_menu']?>}}</td>
								</tr>
								<?php } ?>
								<tr>
									<td>Total</td>
									<td colspan="2" align="center">

										{{(9000*D01)+(9000*D02)+(9000*D03)+(12000*D04)+(18000*F01)+(15000*F02)+(10000*F03)+(16000*F04)}}
									</td>
								</tr>
								<tr>
									<td colspan="3" align="right">
										<button type="submit" class="btn btn-primary">pesan</button>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>