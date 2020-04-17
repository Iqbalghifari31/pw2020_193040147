<?php

require 'php/functions.php';

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
   <div class="container">
    <?php foreach ($makanan as $nama) : ?>
        <p class="nama">
            <a href="php/detail.php/?nama=<?= $nama['nama'] ?>">
                <?= $nama['nama']; ?>
            </a>
        </p>
    <?php endforeach; ?>
   </div>
    </table>
</body>
</html>