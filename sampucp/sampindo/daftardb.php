<?php

include "koneksi.php";

if (isset($_POST['daftar'])) {
//ambil data dari form   
$username=$_POST['username'];
$password=$_POST['password'];
$name=$_POST['name'];
$email=$_POST['email'];
//buat token
$token=hash('sha256', md5(date('Y-m-d'))) ;


//PERINTAH MENGECEK AGAR TIDAK TERDAPAT USER YANG SAMA
$cek_user=mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM accounts WHERE username='$_POST[username]'"));
if ($cek_user > 0) {
        header('location:faillog/faileusername.php');
              exit();
}

//PERINTAH MENGECEK AGAR TIDAK TERDAPAT name YANG SAMA
$cek_user=mysqli_num_rows(mysqli_query($koneksi, "SELECT * FROM accounts WHERE name='$_POST[name]'"));
if ($cek_user > 0) {
        header('location:faillog/failename.php');
              exit();
}


//cek user terdaftar email
$sql_cek=mysqli_query($koneksi,"SELECT * FROM accounts WHERE email='".$email."'");
$r_cek=mysqli_num_rows($sql_cek);
if ($r_cek>0) 
{
header('location:faillog/failemail.php');
}
else
{
//jika data kosong maka insert ke tabel;
//aktif =0 user belum aktif
$insert=mysqli_query($koneksi,"INSERT INTO accounts(username,password,name,email,token,aktif) VALUES('".$username."','".$password."','".$name."','".$email."','".$token."','0')");

header("Location:sukseslog/suksesdaftar.php");
//include kirim email
include("mail.php");

if ($insert) {
echo '<div class="alert alert-success">
Sukses Daftar Silahkan Verifikasi 
<a href="index.php">Login</a>
</div>';
}

}                  
}

?>