<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show SA Capital City</title>
</head>
<body>
<form action="index.php" method="POST">
Select Province:
<select name="province">
<option value="" selected>-----------------------------</option>
<option value="Western Cape">Western Cape</option>
<option value="Eastern Cape">Eastern Cape</option>
<option value="Northern Cape">Northern Cape</option>
<option value="Free State">Free State</option>
<option value="Gauteng">Gauteng</option>
<option value="KwaZulu-Natal">KwaZulu-Natal</option>
<option value="Limpopo">Limpopo</option>
<option value="Mpumalanga">Mpumalanga</option>
<option value="North West">North West</option>
</select>
<input type="submit" name="submit" value="Search City">
</form><br>
<?php
$connection = @mysqli_connect('localhost','root','') or die('Unable to connect to the database'); // creating connection
mysqli_select_db($connection,'south_africa_province_city'); // selecting the database
if(isset($_POST['submit']))
{
    $province_name = $_POST['province'];
    if(!empty($province_name)) // checking if province name is not empty
    {
      $sql = "SELECT city_name FROM province_city WHERE province_name ='$province_name'"; // sql query
      $query = mysqli_query($connection,$sql);
      if(mysqli_num_fields($query)>0)
      {
          while($get_data = mysqli_fetch_assoc($query))
          {
              echo 'Capital City is '.'<strong>'.$get_data['city_name'].'</strong>'; // displaying capital city
          }
      }
    }
    else
    {
        echo "<font color='red'> Please Select  Province Name</font>"; // displaying error message if province has not been selected
    }
}
?>
    
</body>
</html>