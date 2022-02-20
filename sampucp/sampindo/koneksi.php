<?php
    $koneksi = mysqli_connect("localhost","sirpmasu_root","banyuwangi333","sirpmasu_test");
     
    if (mysqli_connect_errno()){
        echo "Koneksi database gagal : " . mysqli_connect_error();
    }
?>