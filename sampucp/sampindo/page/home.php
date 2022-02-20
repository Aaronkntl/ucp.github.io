<div class="container">
      <div class="conten">
      <h2>My Character</h2>
      
      <?php
      include "koneksi.php";
      $username = $_SESSION['username']; // mengambil username dari session yang login
      
      $sql = $koneksi->query("SELECT * FROM accounts WHERE username='$username'"); // query memilih entri username pada database
      if(mysqli_num_rows($sql) == 0){
      }else{
        $row = mysqli_fetch_assoc($sql);
      }

      ?>
      <!-- bagian ini digunakan untuk menampilkan data profile -->
      <table class="table table-striped table-condensed" border="1" >
        <tr style="background-color: #00000066;">
          <th> Username</th>
          <td><?php echo $row['username']; ?></td>
        </tr>
        <tr>
          <th>Password</th>
          <td><?php echo $row['password']; ?></td>
        </tr>
        <tr style="background-color: #00000066;">
          <th width="20%">Name IC</th>
          <td><?php echo $row['name']; ?></td>
        </tr>
        <tr>
          <th>Email</th>
          <td><?php echo $row['email']; ?></td>
        </tr>
        <tr style="background-color: #00000066;">
          <th>skin ID</th>
          <td><?php echo $row['skin']; ?></td>
        </tr>
        <tr>
          <th>Cash</th>
          <td><?php echo $row['money']; ?></td>
        </tr>
        <tr style="background-color: #00000066;">
          <th>Bank</th>
          <td><?php echo $row['bank']; ?></td>
        </tr>
        <tr>
          <th>Gold</th>
          <td><?php echo $row['donate']; ?></td>
        </tr>
        <tr style="background-color: #00000066;">
          <th>Level</th>
          <td><?php echo $row['score']; ?></td>
        </tr>
        <tr>
          <th>Warning</th>
          <td><?php echo $row['warn']; ?></td>
        </tr>
        <tr style="background-color: #00000066;">
          <th>Last login</th>
          <td><?php echo $row['last_login']; ?></td>
        </tr>
      </table>   
    </div>
    <div class="conten2">
      <h2>Online Player : <?php echo $row['online']; ?></h2>
      </div>

      <div class="listplayer2">
      <table border="3">
      <tr>
      <th>ID &emsp;&emsp;Character &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Level&emsp;&emsp;&emsp;</th>     
      </tr>
      </table>
      </div>
      
  <div class="listplayer">
    <table border="3" width="302px" position="fixed">     
    </div>
      <?php
      include "koneksi.php";
      // menampilkan seluruh isi database
      $query ="select * from accounts";
      $hasil = mysqli_query($koneksi, $query);
       
      while($data = mysqli_fetch_array($hasil))
      {
        echo "<tr>";
        echo "<td>$data[id]</td>";
        echo "<td>$data[name]</td>";  
        echo "<td><td width= 80px>$data[score]</td>";
        echo "</tr>";
        
      }

  ?> 
  </table>
</div>
</div>