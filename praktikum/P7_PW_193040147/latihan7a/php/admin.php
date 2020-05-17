
<?php

require 'functions.php';


if(isset($_GET['cari'])) {
    $keyword = $_GET['keyword'];
    $makanan = query("SELECT * FROM makanan WHERE
                            nama LIKE '%$keyword%' OR
                            asal LIKE '%$keyword%' OR
                            teknik LIKE '%$keyword%' ");
} else {
    $makanan = query("SELECT * FROM makanan");
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<a href="tambah.php"><button>Tambah data</button></a>
<div class="logout">
        <a href="logout.php">Logout</a>
</div>   
    <form action="" method="get">
        <input type="text" name="keyword" autofocus>
        <button type="submit" name="cari">Search</button>
    </form>

    <table border="1" cellpadding="13" cellspacing="0">
    <?php if(empty($makanan)) : ?>
        <tr>
            <td colspan="7">
                <h1>Data tidak ditemukan</h1>
            </td>
        </tr>
        <?php else : ?>
        <tr>
            <th>#</th>
            <th>opsi</th>
            <th>gambar </th>
            <th>nama </th>
            <th>asal </th>
            <th>teknik </th>
            <th>kategori</th>
        </tr>
       
        <?php foreach($makanan as $m) : ?>
            <tr>
                <td><?= $m['Id']; ?></td>
                <td>
                <a href="ubah.php?Id=<?= $m['Id']; ?>"><button>Ubah</button></a>
                <a href="hapus.php?Id=<?= $m['Id']; ?>" onclick="return confirm('Hapus data?');"><button>Hapus</button></a>
                </td>
                <td><img src="../assets/img/<?= $m['img']; ?>" alt="" height="100px" width="100px"></td>
                <td><?= $m['nama']; ?></td>
                <td><?= $m['asal']; ?></td>
                <td><?= $m['teknik']; ?></td>
                <td><?= $m['kategori']; ?></td>
            </tr>
       
        <?php endforeach; ?>
        <?php endif; ?>
    </table>
</body>
</html>