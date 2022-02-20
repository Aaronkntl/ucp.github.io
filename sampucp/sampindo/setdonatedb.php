<?php
include("koneksi.php");

// mengecek apakah tombol simpan sudah diklik atau belum
if(isset($_POST['donate'])){
    // mengambil data dari form tambah data
  $Name = $_POST['Name'];
  $Nomer = $_POST['Nomer'];
  $package = $_POST['package'];
  $pembayaran = $_POST['pembayaran'];
  $jumblah = $_POST['jumblah'];
  $bukti = $_POST['bukti'];

    // buat query
    $sql = "INSERT INTO setdonate (Name, Nomer, package, pembayaran, jumblah, bukti) VALUE ('$Name', '$Nomer', '$package', '$pembayaran', '$jumblah', '$bukti')";
    $query = mysqli_query($koneksi, $sql);
    // pengecekan query berhasil disimpan atu tidak
    if( $query ) {
        // kalau berhasil diarahkan ke halaman index.php dengan status=sukses
        echo "<script>alert('Request Donate Sukses. check WA anda dan Tunggu Beberapa menit !');history.go(-1);</script>";
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