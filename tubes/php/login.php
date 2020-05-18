<?php
session_start();
include "koneksi.php";
if($_GET['login']=="login"){
  $user = $_POST['username'];
  $pass = md5($_POST['password']);

  $cek = "SELECT * FROM user WHERE username='$user'AND password='$pass";
  $data = $conn->query($cek);
  $jml = mysqli_num_rows($data);
  if($jml==0){
    echo '<script language="javascript">alert("Invalid username or password!"); document.location="index.php";</script>';
  }else{
    while ($row = $data->fetch_array()) {
        if($row['level']==1){
          $_SESSION['user']=$user;
  				echo '<script language="javascript">alert("Anda berhasil Login Sebagai Kasir!"); document.location="pesan.php";</script>';
        }else{
          $_SESSION['user']=$user;
  				echo '<script language="javascript">alert("Anda berhasil Login Sebagai Koki!"); document.location="detail.php";</script>';
        }
    }
  }
}elseif ($_GET['login']=="insert") {
  $ins = "INSERT INTO tbl_transaksi (mie, bika, rendang, pempek, kerak_telor, serabi, gudeg, rujak,betutu,soto, status) VALUES ('$_POST[mie]', '$_POST[bika]', '$_POST[rendang]', '$_POST[pempek]', '$_POST[kerak_telor]', '$_POST[serabi]', '$_POST[gudeg]', '$_POST[rujak]','$_POST[betutu]','$_POST[soto]', 'Waiting')";
  $conn->query($ins);
  header("location: pesan.php");
}elseif ($_GET['login']=="update") {
  $upd = "UPDATE tbl_transaksi SET status='Selesai' WHERE id_transaksi=$_GET[no]";
  $conn->query($upd);
  header("location: detail.php");
}elseif($_GET['login']=="add"){
  $user = $_POST['username'];
  $pass = md5($_POST['password']);
  $add = "INSERT INTO user (username) VALUES ('$user')";
  $conn->query($add);
  header("location: admin.php");
}
?>

