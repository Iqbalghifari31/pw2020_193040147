<?php

require 'functions.php';

$makanan = query("SELECT * FROM makanan");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <a herf = "tambah.php"><button>Tambah data</button></a>
    <table border="1" cellpadding="13" cellspacing="0">
        <tr>
            <th>#</th>
            <th>opsi</th>
            <th>gambar makanan</th>
            <th>nama makanan</th>
            <th>asal makanan</th>
            <th>teknik memasak</th>
            <th>kategori</th>
        </tr>
        <?php $i = 1; ?>
        <?php foreach($makanan as $nama) : ?>
            <tr>
                <td><?= $i; ?></td>
                <td>
                    <a href=""><button>Ubah</button></a>
                    <a href=""><button>Hapus</button></a>
                </td>
                <td><img src="../assets/img/<?= $nama['gambar']; ?>" alt="" height="100px" width="100px"></td>
                <td><?= $nama['nama']; ?></td>
                <td><?= $nama['asal']; ?></td>
                <td><?= $nama['teknik']; ?></td>
                <td><?= $nama['kategori']; ?></td>
            </tr>
            <?php $i++ ?>
        <?php endforeach; ?>
    </table>
</body>
</html>