  
<?php

require 'php/functions.php';


if(isset($_GET['cari'])) {
    $keyword = $_GET['keyword'];
    $makanan = query("SELECT * FROM makanan WHERE
                            tipe LIKE '%$keyword%' ");
} else {
    $makanan = query("SELECT * FROM makanan");
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style_detail.css">
    <title>Document</title>
</head>
<body>
   <div class="container">
   <form action="" method="get">
        <input type="text" name="keyword" autofocus placeholder="cari barang disini..">
        <button type="submit" name="cari">Search</button>
    </form>

    <?php if(empty($makanan)) : ?>
        <tr>
            <td colspan="7">
                <h1>Data tidak ditemukan</h1>
            </td>
        </tr>
    <?php else : ?>

    <?php foreach ($makanan as $makan) : ?>
        <p class="nama">
            <a href="php/detail.php/?nama=<?= $makan['nama'] ?>">
                <?= $makan['nama']; ?>
            </a>
        </p>
    <?php endforeach; ?>
   </div>
    </table>
    <?php endif; ?>
    <a href="php/login.php">
    <button type="">Masuk ke halaman admin</button>
    </a>
</body>
</html>