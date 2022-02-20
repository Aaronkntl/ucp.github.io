<?php
// include database connection file
include "koneksi.php";
 
// Check if form is submitted for user update, then redirect to homepage after update
if(isset($_POST['daftar']))
{

    $username=$_POST['username'];
    $password=$_POST['password'];

$tampil = mysqli_query($koneksi, "SELECT * FROM accounts WHERE username = '$username' AND password='$password' ");
$data = mysqli_fetch_array($tampil);


// update user data
    $result = mysqli_query($koneksi, "UPDATE accounts SET password='$password' WHERE username='$username'");
 
    // Redirect to homepage to display updated user in list
    header("Location: panellogin.php");

    
}



?>