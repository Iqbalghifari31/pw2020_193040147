<?php

if(!isset($_GET['nama'])) {
    header("location: ../index.php");
    exit;
}

require 'functions.php';

$id = $_GET['nama'];
$makanan = query("SELECT * FROM makanan WHERE nama = '$id'")[0];

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
</head>
<body>
  
    <div class="container">
        <div class="gambar">
            <img src="../../assets/img/<?=$makanan['img']; ?>"  >
        </div>
        <div class="keterangan">
       <h1> <?= $makanan['nama']; ?></h1>
       <hr>

        <table cellpadding=7>
            <tr>
                <td><p>Kategori</p></td>
                <td>:</td>
                <td><p><?= $makanan['kategori']; ?></p></td>
            </tr>
            <tr>
                <td><p>Teknik Memasak</p></td>
                <td>:</td>
                <td><p><?= $makanan['teknik']; ?></p></td>
            </tr>
            <tr>
                <td><p>Asal makanan</p></td>
                <td>:</td>
                <td><?= $makanan['asal']; ?></p></td>
            </tr>
            <tr>
                <td><a href="../../index.php">Kembali Ke List</a></td> 
            </tr>

        </table>
        </div>
    </div>
</body>
</html>