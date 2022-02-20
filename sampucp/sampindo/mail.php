<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\OAuth;
use PHPMailer\PHPMailer\POP3;
 

require "vendor/autoload.php";


$mail = new PHPMailer(true);
try{
    $mail->SMTPDebug = 30;
    $mail->isSMTP();
    $mail->SMTPKeepAlive = true;
    $mail->Mailer = "smtp";
    $mail->Host = "mail.si-rp.masuk.web.id";
    $mail->SMTPAuth = true;
    $mail->Username = "southindorp@si-rp.masuk.web.id";
    $mail->Password = "sirpback123";
    $mail->SMTPSecure = 'ssl';
    $mail->Port = '465';

    $mail->setFrom("southindorp@si-rp.masuk.web.id", "South Indo Rp");
    $mail->addAddress($_POST['email'], $_POST['name']);
    $mail->isHTML(true);
    $mail->Subject = "Info Pendaftaran Server";
    $mail->Body = "<div>----------------------------------------------------------------------</div><div><br /></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;South Indo Roleplay</div><div>&nbsp;</div><div>----------------------------------------------------------------------</div>Selamat, Pendaftaran Akun Anda Berhasil&nbsp;<div>Silahkan Klik kode Verifikasi di bawah Untuk Aktifkan&nbsp;</div><div>akun anda.</div><div><br /></div><div>Info.</div><div>----------------------------------------------------------------------</div><div>Name Ucp&nbsp; &nbsp; &nbsp; &nbsp;:&nbsp; ".$username."</div><div>Nick Ingame&nbsp; &nbsp;:&nbsp; ".$name."</div><div>Password&nbsp; &nbsp; &nbsp; &nbsp; :&nbsp; ".$password."</div><div>Email&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp; ".$email."</div><div><br /></div><div>Klik kode Di bawah untuk aktifkan akun.</div><div><br /></div><div></div><div>http://si-rp.masuk.web.id/activation.php?t=".$token."</div><div><br /></div><div>Selamat Bermain.</div><div>----------------------------------------------------------------------&nbsp;</div><div><br /></div>";
    $mail->send();
    echo "sent sukses";
}

catch(Exception $e){
    echo "eror client".$e;

}

?>