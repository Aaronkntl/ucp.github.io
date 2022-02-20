<?php
include("koneksi.php");

// mengecek apakah tombol simpan sudah diklik atau belum
if(isset($_POST['fitur'])){
    // mengambil data dari form tambah data
  $name = $_POST['name'];
  $email = $_POST['email'];
  $fitures = $_POST['fitures'];
  $noted = $_POST['noted'];
    // buat query
    $sql = "INSERT INTO donatefitur (name, fitures, email, noted) VALUE ('$name', '$fitures', '$email', '$noted')";
    $query = mysqli_query($koneksi, $sql);
    // pengecekan query berhasil disimpan atu tidak
    if( $query ) {
        // kalau berhasil diarahkan ke halaman index.php dengan status=sukses
        echo "<script>alert('Request Fitur Sukses. check email anda dan Tunggu Beberapa menit !');history.go(-1);</script>";
        //header('Location: panellogin.php');
    } 
    else {
        // kalau gagal diarahkan ke halaman indek.php dengan status=gagal
        die("anda gagal donate coba beberapa saat lagi");
    }
} else {
    die("Akses dilarang");
}
?>