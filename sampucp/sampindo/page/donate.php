<html lang="id">
<head>
<meta charset="utf-8">
<title>Samp - Donasi</title>
<meta name="viewport" content="width=device-width">
</head>
<body>

<style type="text/css">
.modal-backdrop {
  z-index: -1;
}
.modal-content
{
   -webkit-box-shadow: 0 5px 15px rgb(0 0 0 / 50%);
    box-shadow: 0 5px 15px rgb(0 0 0 / 50%);
    width: 600px;
    height: 570px;
    background: #333;
    margin-left: 220px;
}
.modal-body 
{
    position: relative;
    padding: 15px;
    width: 500px;
    margin-left: 40px;
}
.modal-header 
{
    padding: 15px;
    border-bottom: 1px solid #e5e5e5;
    background: #333;
}
.modal-footer 
{
    padding: 15px;
    text-align: right;
    border-top: 1px solid #e5e5e5;
    background: #333;
    position: fixed;
    width: 600px;
    top: 570px;
    height: 70px;
}
.bottonclose 
{
    display: inline-block;
    margin-bottom: 0;
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    background-image: none;
    border: 1px solid transparent;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    border-radius: 4px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background: #756f6f;
    margin-left: 300px;
}
.modal-content2
{
    -webkit-box-shadow: 0 5px 15px rgb(0 0 0 / 50%);
    box-shadow: 0 5px 15px rgb(0 0 0 / 50%);
    width: 600px;
    height: 500px;
    background: #333;
    margin-left: 220px;
}
.modal-header2 
{
    padding: 15px;
    border-bottom: 1px solid #e5e5e5;
    background: #333;
}
.modal-body2 
{
    position: relative;
    padding: 15px;
    width: 500px;
    margin-left: 40px;
}
.modal-footer2 
{
    padding: 15px;
    text-align: right;
    border-top: 1px solid #e5e5e5;
    background: #333;
}
.form-control
{
  background: #080606;
  color: #fff;
}
.bottonclose1 
{
    display: inline-block;
    margin-bottom: 0;
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    background-image: none;
    border: 1px solid transparent;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    border-radius: 4px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background: #756f6f;
    margin-left: 300px;
}

.kolomdonate
{
    position: fixed;
    margin-left: 0px;
    margin-top: 120px;
}
.table 
{
    top: 300px;
    max-width: 800px;
    width: 600px;
    height: 110px;
}
.buttondonateset
{
    background-color: #3a9c60;
    color: #fff;
    top: 320px;
    position: fixed;
    width: 70px;
    margin-left: 12px;
}
.kolomfitur
{
   
   position: fixed;
   margin-left: 0px;
   margin-top: 300px;
}
.buttonfiture
{
    background-color: #3a9c60;
    color: #fff;
    margin-top: 10px;
    position: fixed;
    width: 80px;
    height: 50px;
    margin-left: 10px;
}
.textview
{
    color: #fff;
    position: fixed;
    margin-top: 260px;
    font-size: 20px;
}
.textview2
{
    color: #fff;
    position: fixed;
    font-size: 20px;
    margin-top: 80px;
}
.classview
{
    position: fixed;
    margin-left: 253px;
    top: 130px;
    overflow-y: scroll;
    height: 60px;
    overflow-x: hidden;
    width: 400px;
}
.clastexte
{
    margin-left: 250px;
    top: 105px;
    position: fixed;
}
.clastexte2
{
    margin-left: 250px;
    top: 70px;
    position: fixed;
}
.textdnt
{
    color: #cee83b;
    font-style: oblique;
}
</style>

<div class="container">
<div class="donate">

<div class="textdnt">
 <p>Log Donate Expired Log otomatis <br> ke hapus dalam waktu 1 hari</p>   
</div>

<div class="clastexte2">
      <table border="3">
      <tr>
      <th>Log Donate Server</th>     
      </tr>
      </table>
      </div>

<div class="clastexte">
      <table border="3">
      <tr>
      <th>ID &ensp;Nick &emsp;&emsp;&emsp;Package&emsp;&emsp;&emsp;Pay&emsp;&emsp;&emsp;Jmblh&emsp;Expired</th>     
      </tr>
      </table>
      </div>

<div class="classview">

<?php
// koneksi
$conn= mysqli_connect("localhost","sirpmasu_root","banyuwangi333");
mysqli_select_db($conn,"sirpmasu_test");
 
 
$lama = 1; // lama data yang tersimpan di database dan akan otomatis terhapus setelah 5 hari
 
// proses untuk melakukan penghapusan data
 
$query = "DELETE FROM setdonate
          WHERE DATEDIFF(CURDATE(), tanggal) > $lama";
$hasil = mysqli_query($conn,$query);
?>
 
<form action="" method="post">
    <?php
  // Menampilkan data berdasarkan table murid yang tanggalnya kurang dari 5 hari
  $sql="SELECT * From setdonate";
  $tampil = mysqli_query($conn,$sql);
?>
 
<table border="1">
  <?php while($s=mysqli_fetch_array($tampil)) { ?>
  <tr>
    <td><?php echo "$s[id]";?></td>
    <td><?php echo "$s[Name]";?>&emsp;</td>
    <td><?php echo "$s[package]";?></td>
    <td><?php echo "$s[pembayaran]";?>&emsp;&emsp;</td>
     <td><?php echo "$s[jumblah]";?></td>
    <td><?php echo "$s[tanggal]";?></td>
  </tr>
  <?php } ?>
</table>
</form>
</div>

<div class="kolomdonate">

<table class="table table-striped table-condensed" border="1" >
  <thead><tr><th>Service</th><th>Username</th><th>GOLD</th><th>MONEY</th><th>LEVEL</th><th>ID</th></tr></thead>
  <tbody>
  <tr style="background-color: #00000066;"><td><button class="buttondonateset" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-donation">Request Donate</button></td><td class="forum"><?=$_SESSION['username']?></td>
    <td><?php echo $row['donate']; ?></td><td><?php echo $row['money']; ?></td><td><?php echo $row['score']; ?></td><td><?php echo $row['id']; ?></td></tr>
  </tbody>
  </table>
</div>

<div class="textview2">
Info Donate
</div>

<div class="textview">
Info Fitures
</div>


<div class="kolomfitur">
<table class="table table-striped table-condensed" border="1" >
  <thead><tr><th>Service&emsp;&ensp;</th><th>Name IC</th><th>Car Slot</th><th>Phone</th><th>Last ip</th><th>Premium time</th></tr></thead>
  <tbody>
  <tr style="background-color: #00000066;"><td><button class="buttonfiture" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-feature-request">Request Fitur</button></td>
    
    <td><?php echo $row['name']; ?></td>

    <td><?php echo $row['car_slots']; ?></td>

    <td><?php echo $row['phone']; ?></td>

    <td><?php echo $row['last_ip']; ?></td>

    <td><?php echo $row['premium_time']; ?></td></tr>

  </tbody>
  </table>
</div>
</div>
</div>
</div>



<div class="modal fade" id="modal-donation" tabindex="-1" role="dialog" aria-labelledby="modal-label-donation" aria-hidden="true">
<div class="modal-dialog modal-lg" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="modal-label-donation">Request Donate Server</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>

<div class="modal-body">

<form id="form-donation" action="setdonatedb.php", method="post">

<div class="form-group">
<label for="field-sender-name">Nama Pengirim (nama asli)</label>
<input type="text" class="form-control" id="field-sender-name" name="Name" placeholder="Nama Pengirim" required="required">
</div>

<div class="form-group">
<label for="field-sender-name">Nomer Pengirim</label>
<input type="text" class="form-control" id="field-sender-name" name="Nomer" placeholder="Nomer Wa" required="required">
</div>

<div class="form-group">
<label for="field-package">Paket donatur</label>
<select class="form-control" id="field-package" name="package">
<option value="vip-7days">Vip Player - 7 days</option>
<option value="vip-15days">vip player 2 - 15 days</option>
<option value="primium-20days">Primium Donate - 20 days</option>
<option value="kendaraan">Kendaraan</option>
<option value="rumah">Rumah</option>
<option value="business">Business</option>
<option value="gold-1000">Gold - 1000</option>
<option value="gold-2500">Gold - 2500</option>
<option value="gold-5000">Gold - 5000</option>
</select>
</div>

<div class="form-group">
<label for="field-bank">Pembayaran</label>
<select class="form-control" id="field-bank" name="pembayaran">
<option value="Dana">Dana - No penerima</option>
<option value="Gopay">Gopay - No penerima</option>
 <option value="Others">Lainnya</option>
</select>
</div>

<div class="form-group">
<label for="field-amount">Jumlah pengiriman Rp.</label>
<div class="input-group">
<div class="input-group-prepend">
</div>
<input type="text" class="form-control" id="field-amount" name="jumblah" placeholder="Jumlah uang yang dikirim" required="required" data-regex="^[0-9]+$" data-regex-message="Mohon isi hanya nomor di sini">
</div>
</div>

<div class="form-group">
<label for="field-evidence">Bukti pengiriman</label>
<input type="url" class="form-control" id="field-evidence" name="bukti" placeholder="https://www.gambar.png" required="required">
</div>

<button type="button" id="button-cancel" class="bottonclose btn-secondary" data-dismiss="modal">Close</button>
<button type="submit" id="button-submit" name="donate" form="form-donation" class="btn btn-primary">Kirim</button>

</form>
</div>
<div class="modal-footer">
</div>
</div>
</div>
</div>



<div class="modal fade" id="modal-feature-request" tabindex="-1" role="dialog" aria-labelledby="modal-feature-request-label" aria-hidden="true">
<div class="modal-dialog modal-lg" role="document">
<div class="modal-content2">
<div class="modal-header2">
<h5 class="modal-title" id="modal-feature-request-label">Donation Feature</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body2">
<form class='register-form2', action="setfiturdb.php", method="post">
<div class="form-group">
<label for="field-feature-type">Donation Feature</label>
<select class="form-control" id="fitur" name="fitures">
<option value="Fitur Forum">Fitur Forum</option>
<option value="PLAYER/KENDARAAN">Fitur Character</option>
<option value="GATE">Custom Gate</option>
<option value="MAPING">Custom Mapping</option>
</select>
</div>
<div class="form-group">
<th>Nama IC/INGAME</th>
<input type="text" name='name' placeholder="Nama IC" class="form-control" required/>
</div>
<div class="form-group">
<th>Email</th>
<input type="text" name='email'placeholder="email yg bisa di hubungi" class="form-control" required/>
</div>
<div class="form-group">
<label for="field-note">Catatan</label>
<textarea class="form-control" id="field-note" name="noted" placeholder="Isi catatan dengan fitur yg di request berserta idnya/ keterangan lain"></textarea>
</div>
<button type="button" class="bottonclose1" id="button-cancel" class="btn btn-secondary" data-dismiss="modal">Close</button>
<button type="submit" id="button-submit" name="fitur" class="btn btn-primary">Submit</button>
</form>
</div>
<div class="modal-footer2">
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<div id="overlay" class="overlay"></div>

</body>
</html>
