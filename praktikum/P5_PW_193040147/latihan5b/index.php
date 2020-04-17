<?php

require 'php/functions.php';

$result = query("SELECT * FROM makanan");

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table cellpadding="5" border="1">
        <tr>
            <th>ID</th>
            <th>gambar makanan</th>
            <th>nama makanan</th>
            <th>asal makanan</th>
            <th>teknik memasak</th>
            <th>kategori</th>
        </tr>

        <?php foreach($result as $makanan) { ?>
        <tr>
            <td><?php echo $makanan["Id"]; ?></td>
            <td><?php echo '<img src= assets/img/'.$makanan["img"].">"; ?></td>
            <td><?php echo $makanan["nama"]; ?></td>
            <td><?php echo $makanan["asal"]; ?></td>
            <td><?php echo $makanan["teknik"]; ?></td>
            <td><?php echo $makanan["kategori"]; ?></td>
        </tr>
        <?php } ?>
    </table>
</body>
</html>