<?php
include("koneksi.php");

date_default_timezone_set('Asia/Jakarta');
// mengecek apakah tombol simpan sudah diklik atau belum
if(isset($_POST['personal'])){
    // mengambil data dari form tambah data
  $nameasli = $_POST['nameasli'];
  $tgllahir = $_POST['tgllahir'];
  $waktu = date("H:i:s");


    // buat query
    $sql = "INSERT INTO identitas (nameasli, tgllahir, waktu) VALUE ('$nameasli', '$tgllahir', '$waktu')";
    $query = mysqli_query($koneksi, $sql);
    // pengecekan query berhasil disimpan atu tidak
    if( $query ) {
        // kalau berhasil diarahkan ke halaman index.php dengan status=sukses
        header('Location: panellogin.php');
    } 
    else {
        // kalau gagal diarahkan ke halaman indek.php dengan status=gagal
        die("Data anda sudah ada Hanya bisa membuat 1 akun ucp");
    }
} else {
    die("Akses dilarang");
}
?>