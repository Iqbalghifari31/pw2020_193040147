<?php

    function koneksi() {
        $conn = mysqli_connect("localhost", "root", "") or die("Koneksi ke DB gagal");
        mysqli_select_db($conn, "tubes_193040147") or die("Database Salah!");

        return $conn;
    }

    function query($sql) {
        $conn = koneksi();
        $result = mysqli_query($conn, "$sql");

        $rows = [];
        while($row = mysqli_fetch_assoc($result)) {
            $rows[] = $row;
        }

        return $rows;
    }
    
    function tambah($data)
    {
        $conn = koneksi();

        $nama = htmlspecialchars($data['nama']);
        $asal = htmlspecialchars($data['asal']);
        $teknik = htmlspecialchars($data['teknik']);
        $kategori = htmlspecialchars($data['kategori']);
        $img = htmlspecialchars($data['img']);

        $query = "INSERT INTO makanan
                        VALUES
                        ('', '$img', '$nama', '$asal', '$teknik', '$kategori')";

        mysqli_query($conn, $query);

        return mysqli_affected_rows($conn);
    }

    function hapus($Id)
    {
        $conn = koneksi();
        mysqli_query($conn, "DELETE FROM makanan WHERE no = $Id");

        return mysqli_affected_rows($conn);
    }
    function ubah($data)
    {
        $conn = koneksi();

        $Id = htmlspecialchars($data['Id']);
        $nama = htmlspecialchars($data['nama']);
        $asal = htmlspecialchars($data['asal']);
        $teknik = htmlspecialchars($data['teknik']);
        $kategori = htmlspecialchars($data['kategori']);
        $img = htmlspecialchars($data['img']);

        $query = "UPDATE makanan
                        SET
                       img = '$img',
                       nama = '$nama',
                       teknik = '$teknik',
                       kategori = '$kategori',
                       WHERE Id = $Id
                       ";

        mysqli_query($conn, $query);

        return mysqli_affected_rows($conn);
    }
    function registrasi($data) {
        $conn = koneksi();
        $username = strtolower(stripcslashes($data["username"]));
        $password = mysqli_real_escape_string($conn, $data["password"]);

        $result = mysqli_query($conn, "SELECT username FROM user WHERE username = '$username' ");
        if(mysqli_fetch_assoc($result)) {
            echo "<script>
                    alert('username sudah digunakan');
                    </script>";
                    return false;
        }

        $password = password_hash($password, PASSWORD_DEFAULT);

        $query_tambah = "INSERT INTO user VALUES('', '$username', '$password')";
        mysqli_query($conn, $query_tambah);

        return mysqli_affected_rows($conn);
    }

    ?>
    