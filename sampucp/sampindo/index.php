<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>South Indo Roleplay</title>
    <link rel="shortcut icon" href="https://drive.google.com/file/d/1HwLF43hDsFcjduqDwDNHPCiexeLvTrJ-/preview">
    <link href="https://fonts.googleapis.com/css2?family=Chilanka&family=Dancing+Script:wght@700&display=swap" rel="stylesheet">
</head>
<body>

<style type="text/css">
  html,body
*
{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
.full-page
{
    height: 0vh;
    width: 100%;
    background: linear-gradient(white,rgba(0,0,0,0.9));
    position: absolute;
}
.navbar
{
    display: flex;
    align-items: center;
    padding: 20px;
    padding-left: 50px;
    padding-right: 30px;
    padding-top: 10px;
    background: #333;
}
.logo a
{
    text-decoration: none;
    color: #53efb5;
    font-size: 20px;
    font-family: 'Dancing Script', cursive;
}
nav
{
    flex: 1;
    text-align: right;
    padding-top: 6px;
}
nav ul 
{
    display: inline-block;
    list-style: none;
}
nav ul li
{
    display: inline-block;
    margin-right: 70px;
}
nav ul li a
{
    text-decoration: none;
    font-size: 20px;
    color: #53efb5;
    font-family: sans-serif;
}
nav ul li button
{
    font-size: 20px;
    color: #53efb5;
    outline: none;
    border: none;
    background: transparent;
    cursor: pointer;
    font-family: sans-serif;
}
.sub-page
{
    width: auto;
    height: 700px;  
    background: url(image/abc.png);
    background-size: cover;
    background-position: center;
    left: 50px;
    top: 70px;
}
.overlay
{
    width: 100%;
    height: 100%;
}
.sub-page:hover .overlay
{
    opacity: 1;
}
.text
{
    text-align: center;
    color: #333;
    padding-right: 350px;
    padding-left: 350px;
    font-size: 20px;
    font-family: 'Chilanka', cursive;
    transform: translateY(-950%);
    opacity: 0;
    transition: 1s;
}
.sub-page:hover .text
{
    opacity: 1;
}
#login-form
{
    display: none;
}
.form-box
{
    width: 300px;
    height: 400px;
    position: absolute;
    top: 100px;
    left: 200px;
    background: rgba(0,0,0,0.6);
}

.close 
{
    position: relative;
    left: 670px;
    bottom: 0;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}
.close:hover,.close:focus 
{
    color: red;
    cursor: pointer;
}
.main-heading
{
    color: #2523b5;
    padding-bottom: 20px;
}
.form
{
    position: relative;
    margin: 0 auto 100px;
    padding: 45px;
    text-align: center;
    bottom: 20px;
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
}
.form button, .form1 button
{
    font-family: sans-serif;
    width: 100%;
    color: white;
    font-size: 14px;
    cursor: pointer;
    padding: 15px;
    border: none;
    background: #2b2fa2d4;
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
#register-form
{
    display: none;
}
.form-box1
{
    width: 700px;
    height: 500px;
    position: absolute;
    top: 100px;
    left: 150px;
    background: rgba(0,0,0,0.6);
}
.main-heading
{
    color: #2523b5;
    padding-bottom: 20px;
}
.close1
{
    position: relative;
    left: 270px;
    bottom: 0;
    top: 0px;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}
.close1:hover,.close1:focus 
{
    color: red;
    cursor: pointer;
}

.form1
{
    position: relative;
    margin: 0 auto 100px;
    padding: 45px;
    text-align: center;
    bottom: 20px;
}
.textcolor
{
    color: #fff;
    background: #322ba573;
}
.loginbtn2
{
    color: #191fd6;
}
.loginbtn2:hover,.loginbtn2:focus 
{
    color: red;
    cursor: pointer;
}

</style>

    <div class="full-page">
        <div class='navbar'>
            <div class='logo'>
                <a href='#'><h1>Samp Ucp</h1></a>
            </div>
        <nav>
        <ul id='MenuItems'>
            <li><a href="index.php" class="btn btn-sm btn-success"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Home</a></li>
            <li><a href='https://forumsa-mp.blogspot.com/'>Forum</a></li>
            <li><a href='https://discord.gg/NHwmwHN9ya'>Discord</a></li>
            <li><button class='loginbtn'onclick="document.getElementById('login-form').style.display='block'" style="width:auto;">Login</button></li>
            <li><button class='loginbtn'onclick="document.getElementById('register-form').style.display='block'" style="width:auto;">Register</button></li>
        </ul>
    </nav>
        </div>

        <div class="sub-page">
          <div class="overlay"></div>
           <div class="text">
               <p>Samp Ucp login test by belajar programming desigen sederhana @Jhon_Sing Devlopment</p>
            </div>
        </div>

        <div id='login-form' class="login-page">
            <div class="form-box">
                <span onclick="document.getElementById('login-form').style.display='none'" class="close1">&times;</span>
                <div class="form">
                    <form class='login-form', action="logindb.php", method="post">
                        <center><h1 class="main-heading">Login Panel</h1></center>
                        <input type="text"name='username' placeholder="Masukin username", required/>
                        <input type="password" name='password' placeholder="password", required/>
                        <button type="submit" name="login" class="btn btn-primary btn-block">Login</button>
                        <p>Tidak punya akun?</p> <a class='loginbtn2'onclick="document.getElementById('register-form').style.display='block'" style="width:auto;">Register</a>
                    </form>
                </div>
            </div>

        </div>
        <div id="register-form" class='register-page'>
            <div class="form-box1">
               <span onclick="document.getElementById('register-form').style.display='none'" class="close">&times;</span>
                <div class="form1">
                    <form class='register-form', action="daftardb.php", method="post">
                        <center><h1 class="main-heading">Register player</h1></center>
                        <input type="text" name='username'placeholder="username" required/>
                        <input type="text" name='name'placeholder="Name IC" required/>
                        <input type="text" name='email'placeholder="email" required/>
                        <input type="password"name='password' placeholder="password" required/>
                        <button type="submit" name="daftar" class="btn btn-primary btn-block">Daftar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>    
</body>
</html>