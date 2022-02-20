<!DOCTYPE html>
<html lang="en">
<head>
  <title>Settings</title>
  <meta charset="utf-8">
</head>
<body>

<style type="text/css">
.modal-backdrop {
  z-index: -1;
}
.modal-body
{
  background: #333;
  position: relative;
  padding: 15px;
}
.modal-header
{
  background: #0a0d10db;
  padding: 15px;
  border-bottom: 1px solid #e5e5e5;
}
.modal-footer
{
  border-top: 1px solid #e5e5e5;
  text-align: right;
  padding: 15px;
  background: #0a0d10db;
}
.form-control
{
  background: #080606;
  color: #fff;
}
.bckround
{
  background: #565151bf;
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
}
.modal-content2
{
  width: 500px;
  margin-left: 100px;
}
.modal-body2
{
    background: #333;
    position: relative;
    padding: 15px;
    height: 360px;
    width: 500px;
}
.modal-header2 
{
    background: #0a0d10db;
    padding: 15px;
    border-bottom: 1px solid #e5e5e5;
}

.modal-footer2 
{
    border-top: 1px solid #e5e5e5;
    text-align: right;
    padding: 15px;
    background: #0a0d10db;
    position: fixed;
    top: 410px;
    width: 500px;
    height: 50px;
    left: 100px
}
.bckround7
{

    background: #565151bf;
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
    position: fixed;
    left: 430px;
    top: 335px;
}
.bckround6
{

    background: #565151bf;
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
    position: fixed;
    left: 350px;
    top: 270px;
}
.susksesbtn
{

   font-family: sans-serif;
    width: 10%;
    color: white;
    font-size: 14px;
    cursor: pointer;
    border: none;
    background: #2b2fa2d4;
    margin-left: 310px;
    position: fixed;
    height: 35px;
    top: 270px;
}
.modal-content3
{
  width: 400px;
  margin-left: 100px;
}
.modal-body3
{
    background: #333;
    position: relative;
    padding: 15px;
    height: 260px;
    width: 400px;
}
.modal-header3 
{
    background: #0a0d10db;
    padding: 15px;
    border-bottom: 1px solid #e5e5e5;
}

.modal-footer3 
{
    border-top: 1px solid #e5e5e5;
    text-align: right;
    padding: 15px;
    background: #0a0d10db;
    position: fixed;
    top: 310px;
    width: 400px;
    height: 50px;
    left: 100px
}
.bckround5
{
    background: #565151bf;
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
    position: fixed;
    left: 420px;
    top: 360px;
}
.susksesbtn2
{

   font-family: sans-serif;
    width: 10%;
    color: white;
    font-size: 14px;
    cursor: pointer;
    border: none;
    background: #2b2fa2d4;
    margin-left: 480px;
    position: fixed;
    height: 35px;
    top: 360px;
}
.modal-body4 
{
    background: #333;
    position: relative;
    padding: 15px;
    height: 330px;
}
.susksesbtn3
{
    font-family: sans-serif;
    width: 10%;
    color: white;
    font-size: 14px;
    cursor: pointer;
    border: none;
    background: #2b2fa2d4;
    margin-left: 150px;
    position: fixed;
    height: 35px;
    top: 335px;
}

</style>

<div class="container"> 
  <div class="settingcont">
    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
     <h3>Associations</h3>
      <table class="table table-striped table-condensed" border="1" >
        <thead><tr><th>Service</th><th>Account</th></tr></thead>
        <tbody>
        <tr style="background-color: #00000066;"><td>User Forum</td><td class="forum"><?=$_SESSION['username']?></td></tr>

        <tr>
        <td>Phone Number</td>
        <td class="phone">
        <button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-phone-number">SMS</button>&nbsp;<button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-wa-number">WhatsApp</button></td>
        </tr>

        <tr style="background-color: #00000066;"><td>Teamspeak</td><td><button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#modal-teamspeak">Add</button></td>
        </tr>
        
        <tr><td>SAPD Forum</td><td><button class="btn btn-sm btn-primary" type="button" onclick="openFactionForum('sapd');">Link</button></td>
        </tr>

        <tr style="background-color: #00000066;"><td>SAFD Forum</td><td><button class="btn btn-sm btn-primary" type="button" onclick="openFactionForum('safd');">Link</button></td>
        </tr>

        <tr><td>SANews Forum</td><td><button class="btn btn-sm btn-primary" type="button" onclick="openFactionForum('sanews');">Link</button></td>
        </tr>

        <tr style="background-color: #00000066;"><td colspan="2" style="text-align: center;"><button class="btn btn-sm btn-danger" type="button" data-toggle="modal" data-target="#modal-unlink-service">Remove Service</button></td>
        </tr>

        </tbody>
        </table>
      </div>
    </div>
  <div class="settings">
  <h2>User Settings</h2>
</div>
<div class="userset">
<li><a href="#" data-toggle="modal" data-target="#modal-password">Change password</a></li>
</div>
<div class="userset2">
<li><a href="#" data-toggle="modal" data-target="#modal-email">Change email</a></li>
</div>
<div class="userset3">
<li><a href="#" data-toggle="modal" data-target="#modal-real-data">Set Personal Information</a></li> </ul>
</div>
</div>
</div>
</div>

<div class="pagesetpw">
<div class="modal fade" id="modal-password" tabindex="-1" role="dialog" aria-labelledby="modal-password-label" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="modal-password-label">Change Password</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body4">
<form class='register-form', action="setpwdb.php", method="post">
<div class="form-group">
<small style="color: #f5df74d9;">Password lama tidak akan bisa digunakan lagi !</small>
<input type="hidden" class="form-control" name="username" id="username" value="<?=$username?>" placeholder="username" required="required">
</div>
<div class="form-group">
<th>Old Password</th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<input type="text" class="form-control" id="password" name="password" minlength="8" maxlength="100" placeholder="Old Password" required="required">
</div>
<div class="form-group">
<th>New Password</th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<input type="text" class="form-control" id="password" name="password" minlength="8" maxlength="100" placeholder="New password" required="required">
</div>
<div class="form-group">
<th>confirm Password</th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<input type="text" class="form-control" id="password" name="password" placeholder="Confirm new password" required="required" data-match="password_new" data-match-message="Passwords does not match">
</div>
<button type="button" class="bckround5" id="button-close" class="btn btn-secondary" data-dismiss="modal">Close</button>
<button type="submit" class="susksesbtn2" name="daftar" class="btn btn-primary btn-block"><i class="fas fa-save"></i>&nbsp;Save</button>
</form>
</div>
<div class="modal-footer">
</div>
</div>
</div>
</div>

<div class="modal fade" id="modal-email" tabindex="-1" role="dialog" aria-labelledby="modal-email-label" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content3">
<div class="modal-header3">
<h5 class="modal-title" id="modal-email-label">Change Email</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body3">
<form class='register-form2', action="setemaildb.php", method="post">
<small class="form-text text-muted"><span style="color: #f5df74d9;">Email lama tidak akan bisa digunakan lagi untuk mendaftar account baru atau dipakai oleh account lain</small>

<div class="form-group">
<input type="hidden" class="form-control" name="username" id="username" value="<?=$username?>" placeholder="username" required="required">
</div>

<div class="form-group">
 <th>Old Email</th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<input type="text" name='email' placeholder="Old Email" class="form-control" required/>
</div>

<div class="form-group">
<th>New Email</th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
<input type="text" name="email" placeholder="New Email" class="form-control" >
</div>

<button type="submit" class="susksesbtn" class="btn btn-success" id="button-email-save" name="Email"><i class="fas fa-save"></i>&nbsp;Save</button>
<button type="button" class="bckround6" id="button-close" class="btn btn-secondary" data-dismiss="modal">Close</button>
</form>
</div>
<div class="modal-footer3">
</div>
</div>
</div>
</div>


<div class="pagetest">
<div class="modal fade" id="modal-phone-number" tabindex="-1" role="dialog" aria-labelledby="modal-phone-number-label" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="modal-phone-number-label">Phone Number Verification</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form id="form-phone-number">
<input type="hidden" name="csrf" value="24fcd2f8e77ee5a144d4d18365e8ed0b229f9338c66185231b6bcb8551c0805b">
<div class="form-group">
<label for="field-phone">Cellphone Number</label>
<input type="text" class="form-control" id="field-phone" name="phone" placeholder="085755298068" required="required" data-regex="^[0-9]+$" data-regex-message="Invalid phone number specified">
<small class="form-text text-muted">Mohon isi nomor anda dengan teliti. ikuti <a target="_blank" href="https://www.youtube.com/channel/UCthZQqE6GbRpSZX99-NKCCw">petunjuk ini</a> untuk mengaktifkan nomor HP anda ke account UCP.</small>
</div>
<div class="form-group" style="display: none;">
<label for="field-code">Verification Code</label>
<input type="text" class="form-control" id="field-code" name="code" placeholder="12345" data-regex="^[0-9]+$" data-regex-message="Invalid code specified" disabled="disabled">
</div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="bckround" class="btn btn-secondary" data-dismiss="modal">Close
</button>
<button type="submit" form="form-phone-number" class="btn btn-primary">Verify
</button>
</div>
</div>
</div>
</div>

<div class="modal fade" id="modal-wa-number" tabindex="-1" role="dialog" aria-labelledby="modal-wa-number-label" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="modal-wa-number-label">WhatsApp Number Verification</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form id="form-wa-number">
<input type="hidden" name="csrf" value="24fcd2f8e77ee5a144d4d18365e8ed0b229f9338c66185231b6bcb8551c0805b">
<div class="form-group">
<label for="field-wa">WhatsApp Number (Indonesia Only)</label>
 <input type="text" class="form-control" id="field-wa" name="phone" placeholder="085755298068" required="required" data-regex="^[0-9]+$" data-regex-message="Invalid phone number specified">
<small class="form-text text-muted">Mohon isi nomor anda dengan teliti. Butuh bantuan? ikuti <a target="_blank" href="https://www.youtube.com/channel/UCthZQqE6GbRpSZX99-NKCCw">petunjuk ini</a> untuk mengaktifkan nomor HP anda ke account UCP.</small>
</div>
<div class="form-group" style="display: none;">
<label for="field-code-wa">Verification Code</label>
<input type="text" class="form-control" id="field-code-wa" name="code" placeholder="12345" data-regex="^[0-9]+$" data-regex-message="Invalid code specified" disabled="disabled">
</div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="bckround" class="btn btn-secondary" data-dismiss="modal">Close</button>
<button type="submit" form="form-wa-number" class="btn btn-primary">Verify</button>
</div>
</div>
</div>
</div>


<div class="modal fade" id="modal-phone-alt" tabindex="-1" role="dialog" aria-labelledby="modal-phone-alt-label" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="modal-phone-alt-label">Phone Number Verification</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form id="form-phone-alt">
<input type="hidden" name="csrf" value="24fcd2f8e77ee5a144d4d18365e8ed0b229f9338c66185231b6bcb8551c0805b">
<div class="form-group">
<label for="field-phone-alt">Cellphone Number</label>
<input type="text" class="form-control" id="field-phone-alt" name="phone" placeholder="085755298068" required="required" data-regex="^[0-9]+$" data-regex-message="Invalid phone number specified">
<small class="form-text text-muted">Mohon isi dengan nomor HP yang kamu ingin gunakan untuk mengirim SMS</small>
</div>
<div class="form-group" style="display: none; font-family: monospace;">
<label for="field-code-alt">Verification Message</label>
<input type="text" class="form-control" id="field-code-alt" name="code" data-readonly="true">
</div>
<div id="verify-message" style="text-align: center; font-size: 14pt; display: none;">Mohon kirim SMS dengan isi pesan di atas ke nomor di bawah ini:<br><span style="font-size: 16pt;">085755298068</span><br>Setelah mengirim SMS mohon click tombol 'Verify' lagi</div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="bckround" class="btn btn-secondary" data-dismiss="modal">Close</button>
<button type="submit" form="form-phone-alt" class="btn btn-primary">Verify</button>
</div>
</div>
</div>
</div>

<div class="modal fade" id="modal-teamspeak" tabindex="-1" role="dialog" aria-labelledby="modal-teamspeak-label" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="modal-teamspeak-label">Teamspeak</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form id="form-teamspeak">
<input type="hidden" name="csrf" value="07b10332d1f275e8f30277bd5518b11b3bd37f844da0b71a4f434136c302a2c5">
<div class="form-group">
<label for="field-ts-client">Teamspeak</label>
<input type="text" class="form-control" id="field-ts-client" name="client" placeholder="JGoyd+r2kQ6Dj5740lJbhIuKTeY=" required="required" value="">
<small class="form-text text-muted"><a target="_blank" href="https://www.youtube.com/channel/UCthZQqE6GbRpSZX99-NKCCw">Dimana saya bisa menemukan Client ID?</a></small>
</div>
<div class="form-group" style="display: none;">
<label for="field-ts-nickname">Verification Nickname</label>
<input type="text" class="form-control" id="field-ts-nickname" name="nickname" readonly="readonly" data-readonly="true" value="">
<small class="form-text text-muted">Mohon ubah sementara nickname teamspeak kamu menjadi yang di atas lalu click 'Verify'</small>
</div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="bckround" class="btn btn-secondary" data-dismiss="modal">Close</button>
<button type="submit" form="form-teamspeak" class="btn btn-primary">Verify</button>
</div>
</div>
</div>
</div>

<div class="modal fade" id="modal-unlink-service" tabindex="-1" role="dialog" aria-labelledby="modal-unlink-service-label" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="modal-unlink-service-label">Remove Service</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form id="form-unlink-service">
<input type="hidden" name="csrf" value="07b10332d1f275e8f30277bd5518b11b3bd37f844da0b71a4f434136c302a2c5">
<div class="form-group">
<label for="field-service-type">Service Remove</label>
<select class="form-control" id="field-service-type" name="service">
<option value="forum">Forum Account</option>
<option value="phone">Phone Number</option>
<option value="teamspeak">Teamspeak</option>
<option value="forum_sapd">Forum: SAPD</option>
<option value="forum_safd">Forum: SAFD</option>
<option value="forum_sanews">Forum: SANews</option>
</select>
<small class="form-text"><b>PENTING: </b>By JhonSing Desigen <span style="color: yellow;">Samp Ucp Android/Pc.</span></small>
</div>
<div class="form-group">
<label for="field-service-reason">Reason</label>
<textarea class="form-control" id="field-service-reason" name="reason" required="required"></textarea>
<small class="form-text text-muted">Detail Penghapusan.</small>
</div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="bckround" class="btn btn-secondary" data-dismiss="modal">Close</button>
<button type="submit" form="form-unlink-service" class="btn btn-primary">Remove</button>
</div>
</div>
</div>
</div>

<div class="modal fade" id="modal-real-data" tabindex="-1" role="dialog" aria-labelledby="modal-real-data-label" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content2">
<div class="modal-header2">
<h5 class="modal-title" id="modal-real-data-label">Personal Information</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body2">
<div class="alert alert-warning" role="alert">
<small class="form-text"><b>PENTING: </b>Data pribadi yang kamu isi di atas digunakan jika kamu kehilangan aksess ke account kamu. <span style="color: blue;">Data pribadi kamu hanya bisa dilihat oleh Managerserver.</span></small>
</div>
<div class="form3">
<form  id="form-personal-info" action="setpersonaldb.php", method="post">
        <th>Nama Asli</th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
        <input type="text" name='nameasli'placeholder="Nama Asli" class="form-control" required/>
        <th>Tanggal Lahir</th>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
        <input type="date" placeholder="Tanggal Lahir" name="tgllahir" class="form-control">
        <button type="submit" class="susksesbtn3" name="personal" class="btn btn-primary btn-block"><i class="fas fa-save"></i>&nbsp;Save</button>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
    </form>
</div>
<div class="modal-footer2">
<button type="button" class="bckround7" class="btn btn-secondary" data-dismiss="modal">Close</button>
</div>
</div>
</div>
</div>

<div class="modal fade" id="modal-faction-forum" tabindex="-1" role="dialog" aria-labelledby="modal-faction-forum-label" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="modal-faction-forum-label">Faction Forum Verification</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form id="form-faction-forum">
<input type="hidden" name="csrf" value="07b10332d1f275e8f30277bd5518b11b3bd37f844da0b71a4f434136c302a2c5">
<input type="hidden" name="forum" value="" id="field-faction-forum">
<div class="form-group">
<label for="field-faction-select">Faction Forum</label>
<select class="form-control" id="field-faction-select" name="faction-selector">
<option value="sapd">SAPD Forum</option>
<option value="safd">SAFD Forum</option>
<option value="sanews">SAN Forum</option>
</select>
</div>
<div class="form-group">
<label for="field-forum-userid">Forum User ID</label>
<input type="number" min="1" step="1" class="form-control" id="field-forum-userid" name="userid" placeholder="69420" required="required">
</div>
<div class="form-group" style="display: none;">
<label for="field-forum-icq">ICQ</label>
<input type="number" class="form-control" id="field-forum-icq" name="code" readonly="readonly" disabled="disabled">
</div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="bckround" class="btn btn-secondary" data-dismiss="modal">Close</button>
<button type="submit" form="form-faction-forum" class="btn btn-primary">Link</button>
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
