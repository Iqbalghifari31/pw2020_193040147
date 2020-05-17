<?php

    require 'functions.php';

    if(isset($_POST['ubah'])) {
        if(tambah($_POST) > 0) {
            echo "<script>
                        alert('Data Berhasil diubah!');
                        document.localtion.href = 'admin.php'
                        </script>";
        } else {
            echo "<script>
                        alert('Data Gagal diubah!');
                        document.location.href = 'admin.php;
                        </script>";
        }
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
    <h3>FORM Ubah data Makanan</h3>
    <form action="" method="post">
        <ul>
            <li>
                <label for="img">img</label>
                <input type="text" name="img" id="img" required> <br> <br>
            </li>
            <li>
                <label for="nama">Nama</label>
                <input type="text" name="nama" id="nama" required> <br> <br>
            </li>
            <li>
                <label for="asal">Asal</label>
                <input type="text" name="asal" id="asal" required> <br> <br>
            </li>
            <li>
                <label for="teknik">Teknik</label>
                <input type="text" name="teknik" id="teknik" required> <br> <br>
            </li>
            <li>
                <label for="kategori">Kategori</label>
                <input type="text" name="kategori" id="kategori" required> <br> <br>
            </li>
        </ul>
        <br>
        <button type="submit" name="ubah">Ubah</button>
        <button type="submit"><a href="../index.php">Kembali</a></button>
    </form> 
</body>
</html>

