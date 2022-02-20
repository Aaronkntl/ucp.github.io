<?php
 session_start();
 $timeout = 1; // setting timeout dalam menit
 $logout = "index.php"; // redirect halaman logout
 
 $timeout = $timeout * 300; // menit ke detik
 if(isset($_SESSION['start_session'])){
 $elapsed_time = time()-$_SESSION['start_session'];
 if($elapsed_time >= $timeout){
 session_destroy();
 echo "<script type='text/javascript'>alert('Tidak Ada interaksi anda akan logout otomatis');window.location='$logout'</script>";
 }
 }
 
 $_SESSION['start_session']=time();
 
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Ucp Player</title>
  <meta name="author" content="https://forumsa-mp.blogspot.com/">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script>
    $(document).ready(function(){
      $(".hamburger .hamburger__inner").click(function(){
        $(".wrapper").toggleClass("active")
      })

      $(".top_navbar .fas").click(function(){
         $(".profile_dd").toggleClass("active");
      });
    })
  </script>

</head>
<body>

<?php
  session_start();
  if (empty($_SESSION['login'])) {
    header("Location:faillog/faillogin.php");
  }

?>

<style type="text/css">
/* The side navigation menu */
@import url('https://fonts.googleapis.com/css?family=Montserrat&display=swap');

*{
  margin: 0;
  padding: 0;
  list-style: none;
  box-sizing: border-box;
  text-decoration: none;
  font-family: 'Montserrat', sans-serif;
}
body
{
  background-color: #333;
  color: #fff;

}

.wrapper{
  width: 100%;
  height: 100%;
}

.top_navbar{
  background: #2a2d2f;
  height: 60px;
  display: flex;
  position: fixed;
  width: 100%;
  top: 0;
}

.top_navbar .hamburger{
  width: 80px;
  background: #2a2d2f;
  position: relative;
  font-size: 28px;
}

.top_navbar .hamburger .hamburger__inner{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  cursor: pointer;
  width: 40px;
  height: 20px;
}

.top_navbar .hamburger__inner > div{
  width: 30px;
  height: 2px;
  background: #fff;
  position: absolute;
  top: 0;
  left: 0;
}

.top_navbar .hamburger div.two{
  top: 10px;
  width: 40px;
}

.top_navbar .hamburger div.three{
  top: 20px;
}

.top_navbar .menu{
  width: calc(100% - 80px);
  height: 100%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0 20px;
}

.top_navbar .menu .logo{
  color: #fff;
  text-transform: uppercase;
  letter-spacing: 2px;
}

.top_navbar .menu .right_menu ul{
  display: flex;
}

.top_navbar .menu .right_menu ul li{
  position: relative;
}

.top_navbar .menu .right_menu ul li .fas{
  font-size: 22px;
  cursor: pointer;
  color: #fff;
}

.top_navbar .menu .right_menu ul li .profile_dd{
  position: absolute;
  top: 35px;
  right: -10px;
  background: #fff;
  box-shadow: 0 0 2px rgba(0,0,0,0.5);
  padding: 10px 0;
  width: 180px;
  border-radius: 3px;
  display: none;
  user-select: none;
}

.top_navbar .menu .right_menu ul li .profile_dd.active{
  display: block;
}

.top_navbar .menu .right_menu ul li .profile_dd .dd_item{
  padding: 10px;
  cursor: pointer;
  color: #004D40;
}

.top_navbar .menu .right_menu ul li .profile_dd .dd_item:hover{
  background: #E0F2F1;
}

.top_navbar .menu .right_menu ul li .profile_dd:before{
  content: "";
  position: absolute;
  top: -20px;
  right: 10px;
  border: 10px solid;
  border-color: transparent transparent #fff transparent;
}

.main_container .sidebar{
  position: fixed;
  top: 60px;
  left: 0;
  width: 300px;
  height: 100%;
  background: #2a2d2f;
  transition: all 0.3s ease;
  border-style: double;
  border-width: 1px;
  border-color: #4e4e4e;
}

.main_container .sidebar .sidebar__inner{
  position: relative;
}

.main_container .sidebar .profile{
  display: flex;
  align-items: center;
  color: #fff;
  white-space: nowrap;
  transition: all 0.3s ease;
}

.main_container .sidebar .profile .img{
  padding: 0 18px;
}

.main_container .sidebar .profile img{
   width: 45px;
}

.main_container .sidebar .profile p:first-child{
  font-size: 14px;
  color: #80CBC4;
  margin-bottom: 3px;
}

.main_container .container{
  margin-top: 60px;
  width: calc(100% - 225px);
  margin-left: 225px;
  padding: 30px;
  transition: all 0.3s ease;
}

.main_container .sidebar ul li a{
  color: #fff;
  padding: 20px 30px;
  white-space: nowrap;
  display: flex;
  align-items: center;
  margin-bottom: 1px;
  transition: all 0.3s ease;
}

.main_container .sidebar ul li a .icon{
  margin-right: 15px;
  font-size: 28px;
}

.main_container .sidebar ul li a span{
  display: inline-block;
}

.main_container .sidebar ul li a:hover,
.main_container .sidebar ul li a.active{
  background: #fff;
  color: #004D40;
}

.main_container .container .conten {
  margin-bottom: 30px;
  padding: 20px;
  font-size: 14px;
  line-height: 22px;
  margin-left: 400px;
  position: fixed;
  top: 60px;
  width: 350px;
}

/* after adding active class */
.wrapper.active .sidebar {
  width: 70px;
}

.wrapper.active .sidebar ul li a span.title,
.wrapper.active .profile_info
{
  display: none;
}

.wrapper.active .main_container .container {
  width: calc(100% - 80px);
  margin-left: 80px;
}
.conten2
{
  position: fixed;
  top: 80px;
  margin-left: 60px;
}
.listplayer2
{
  position: fixed;
  top: 150px;
  margin-left: 60px;
}
.listplayer
{
  position: fixed;
  margin-left: 60px;
  top: 175px;
  overflow-y: scroll;
  height: 400px;
  overflow-x: hidden;
}
.container2
{
  position: absolute;
  color: #fff;
  right: 50px;
  bottom: 10px;

}
.badan
{
  position: fixed;
}
.settings
{
  position: fixed;
  margin-left: 80px;
  top: 70px;
}
.donate
{
  position: fixed;
  margin-left: 100px;
  top: 100px;
}
.share
{
  position: fixed;
  margin-left: 80px;
  top: 70px;
}
.userset
{
  position: fixed;
  margin-left: 110px;
  top: 150px;
}

#login-form
{
    display: none;
}
.form-box
{
    width: 500px;
    height: 400px;
    position: absolute;
    top: 100px;
    left: 300px;
    background: #312c2c;
    position: fixed;
    border: 4px solid #252323;
}

.close1 
{
    position: relative;
    left: 470px;
    bottom: 0;
    top: 0;
    color: #e44949;
    font-size: 35px;
    font-weight: bold;
}
.close1:hover,.close1:focus 
{
    color: red;
    cursor: pointer;
}
.main-heading
{
    color: #fff;
    padding-bottom: 20px;
}
.form
{
    position: relative;
    margin: 0 auto 100px;
    padding: 10px;
    text-align: center;
    bottom: 10px;
    color: #fff;
}
.form input, .form1 input
{
    font-family: sans-serif;
    outline: none;
    border: none;
    border-bottom: 1px solid black;
    width: 100%;
    margin: 0 0 15px;
    padding: 15px;
    font-size: 14px;
    color: #333;
}
.form button, .form1 button
{
    font-family: sans-serif;
    width: 10%;
    color: white;
    font-size: 14px;
    cursor: pointer;
    border: none;
    background: #2b2fa2d4;
    margin-left: 350px;
    position: fixed;

}
.form .asking
{
    font-size: 12px;
    margin: 15px 0 0;
    color: white;
}
.form .asking a
{
    color: orangered;
    text-decoration: none;
}
.loginbtn
{
  color: #fff;
  background: #333;
}

.userset2
{
   position: fixed;
   top: 180px;
   margin-left: 110px;
}
.userset3
{
   position: fixed;
   top: 210px;
   margin-left: 110px;
}

#login-form2
{
    display: none;
}
.loginbtn2
{
  color: #fff;
  background: #333;
}
.form-box2
{
    width: 500px;
    height: 310px;
    position: absolute;
    top: 100px;
    left: 300px;
    background: #312c2c;
    position: fixed;
    border: 4px solid #252323;
}

.close2
{
    position: relative;
    left: 470px;
    bottom: 0;
    top: 0;
    color: #e44949;
    font-size: 35px;
    font-weight: bold;
}
.close2:hover,.close2:focus 
{
    color: red;
    cursor: pointer;
}
.main-heading
{
    color: #fff;
    padding-bottom: 20px;
}
.form2
{
    position: relative;
    margin: 0 auto 100px;
    padding: 30px;
    text-align: center;
    bottom: 10px;
    color: #fff;
}
.form2 input, .form1 input
{
    font-family: sans-serif;
    outline: none;
    border: none;
    border-bottom: 1px solid black;
    width: 100%;
    margin: 0 0 15px;
    padding: 15px;
    font-size: 14px;
    color: #333;
}
.form2 button, .form1 button
{
    font-family: sans-serif;
    width: 10%;
    color: white;
    font-size: 14px;
    cursor: pointer;
    border: none;
    background: #2b2fa2d4;
    margin-left: 350px;
    position: fixed;

}
.form2 .asking
{
    font-size: 12px;
    margin: 15px 0 0;
    color: white;
}
.form2 .asking a
{
    color: orangered;
    text-decoration: none;
}

#login-form3
{
    display: none;
}
.loginbtn3
{
  color: #fff;
  background: #333;
}
.form-box3
{
    width: 500px;
    height: 420px;
    position: absolute;
    top: 100px;
    left: 300px;
    background: #312c2c;
    position: fixed;
    border: 4px solid #252323;
}

.close3
{
    position: relative;
    left: 470px;
    bottom: 0;
    top: 0;
    color: #e44949;
    font-size: 35px;
    font-weight: bold;
}
.close3:hover,.close3:focus 
{
    color: red;
    cursor: pointer;
}
.main-heading3
{
    color: #fff;
    padding-bottom: 20px;
}
.form3
{
    position: relative;
    margin: 0 auto 100px;
    padding: 30px;
    text-align: center;
    bottom: 10px;
    color: #fff;
}
.form3 input, .form1 input
{
    font-family: sans-serif;
    outline: none;
    border: none;
    border-bottom: 1px solid black;
    width: 100%;
    margin: 0 0 15px;
    padding: 15px;
    font-size: 14px;
    color: #333;
}

.form3 .asking
{
    font-size: 12px;
    margin: 15px 0 0;
    color: white;
}
.form3 .asking a
{
    color: orangered;
    text-decoration: none;
}
.nickkloden
{
  position: fixed;
  top: 120px;
}
.nickkloden2
{
  position: fixed;
  top: 110px;
}
.nickkloden3
{
  position: fixed;
  top: 110px;
}
.nickkloden4
{
  font-size: 15px;
  border-style: double;
}
.settingcont
{
  position: fixed;
  top: 60px;
  margin-left: 350px;
}
.copyright
{
  margin-left: 90px;
  font-size: 10px;
  top: 620px;
}
.copyright1
{
  margin-left: 163px;
  font-size: 10px;
  top: 620px;
  position: fixed;
}
.copyright2
{
  margin-left: 50px;
  font-size: 10px;
  top: 620px;
}
.copyright3
{
  margin-left: 110px;
  font-size: 10px;
  top: 620px;
  position: fixed;
}
.jhonsing
{
  top: 616px;
  font-size: 10px;
  margin-left: 56px;
}
.jhonsing2
{
  top: 616px;
  margin-left: 106px;
}
.garis
{
  margin-top: 130px;
  border-color: #4e4e4e;
}
.table
{
  top: 300px;
  max-width: 300px;
  width: 300px;
}

</style>


<div class="wrapper">
  <div class="top_navbar">
    <div class="hamburger">
       <div class="hamburger__inner">
         <div class="one"></div>
         <div class="two"></div>
         <div class="three"></div>
       </div>
    </div>
    <div class="menu">
      <div class="logo">
        Selamat Datang
      </div>
      <div class="container2">
    <h3><?=$_SESSION['name']?></h3>
    </div>
      <div class="right_menu">
        <ul>
          <li><i class="fas fa-user"></i>
            <div class="profile_dd">
               <div class="dd_item">Hi: <?=$_SESSION['name']?></div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
    
  <div class="main_container">
      <div class="sidebar">
          <div class="sidebar__inner">
            <div class="profile">
            <?php
              include "koneksi.php";
              $username = $_SESSION['username']; // mengambil username dari session yang login

              $sql = $koneksi->query("SELECT * FROM accounts WHERE username='$username'"); // query memilih entri username pada database
              if(mysqli_num_rows($sql) == 0){
              }else{
              $row = mysqli_fetch_assoc($sql);
              }

              ?>
            </div>
            <ul>
              <li>
                <a href="panellogin.php">
                  <span class="icon"><i class="glyphicon glyphicon-home"></i></span>
                  <span class="title">Home</span>
                </a>
              </li>
              <li>
                <a href="panellogin.php?page=donate">
                  <span class="icon"><i class="glyphicon glyphicon-usd"></i></span>
                  <span class="title">Donate</span>
                </a>
              </li>
              <li>
                <a href="panellogin.php?page=settings">
                  <span class="icon"><i class="glyphicon glyphicon-cog"></i></span>
                  <span class="title">Settings</span>
                </a>
              </li>
              <li>
                <a href="panellogin.php?page=share" >
                  <span class="icon"><i class="glyphicon glyphicon-share-alt"></i></span>
                  <span class="title">Share</span>
                </a>
              </li>
              <li>
                <a href="logout.php" >
                  <span class="icon"><i class="glyphicon glyphicon-log-out"></i></span>
                  <span class="title">Sign Out</span>
                </a>
              </li>
              <li>
                 <hr class="garis">
              </li>
              <li>              
                  <span  class="copyright" class="title">© JhonSing 2021</span>
              </li>
              <li>                 
                  <span class="copyright2" class="title">Development by</span>
              </li>               
              <li>
                <a class="copyright3" href="" >             
                  <span class="title">JhonSing</span>
                </a>
              </li>
              <li>
                <a class="copyright1" href="" >             
                  <span class="title">Report Bug</span>
                </a>
              </li>                                     
            </ul>
          </div>          
          <div class="badan">
          <?php

            if(isset($_GET['page'])){
                $page = $_GET['page'];
                switch ($page) {
                    case 'settings':
                        include "page/settings.php";
                        break;

                    case 'donate':
                        include "page/donate.php";
                        break;

                    case 'share':
                        include "page/share.php";
                        break;

                    default:
                        echo "<center><h3>Maaf. Halaman tidak di temukan!</h3></center>";
                        break;
                }
            }
            else{
                include "page/home.php";
            }

        ?>

    </div>
  </div>
</div>

</body>
</html>