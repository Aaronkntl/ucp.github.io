<?php
session_start();

include "koneksi.php";

//jika sudah login maka akan dialihkan ke home
if (!empty($_SESSION['login'])) {
header("Location:panellogin.php");
} 

if (isset($_POST['login'])) {
$username=$_POST['username'];
$password=$_POST['password'];

//cek user terdaftar dan aktif
$sql_cek=mysqli_query($koneksi,"SELECT * FROM accounts WHERE username='".$username."' AND password='".$password."' AND aktif='1'") or die(mysqli_error($koneksi));
$r_cek=mysqli_fetch_array($sql_cek);
$jml_data=mysqli_num_rows($sql_cek);
if ($jml_data>0) {


//buat session login dan redirect ke halaman utama
$_SESSION['login']=md5($r_cek['username']);
$_SESSION['username']=$r_cek['username'];
$_SESSION['name']=$r_cek['name'];
header("Location:panellogin.php");
}
else
{
//data tidak di temukan
header('location:faillog/failloginreq.php');
}
}

?>

