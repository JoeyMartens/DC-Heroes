<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "dc-heroes";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = 'SELECT * FROM team';
  $result = $conn->query($sql) or die($conn->error);

  $teams = array();

  if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc())
    {
      $teams[]= $row;
    }
  }
?>
<!doctype html>
<html>
    <head>
      <meta charset="UTF-8">
      <title>DC Cars</title>
      <link rel="stylesheet" type="text/css" href="css/style.css">
      		<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet" type="text/css" />
    </head>
  <body>
    <header id="header">
        <a href="index.php"><img src="images/logo.png"></img></a>
        <h1 id="main-text">CARS</h1>
    </header>
    <div id="brand">
      <?php if (isset($_GET['teamId'])) {
        $brandID = $_GET['teamId'];
        $sql = "SELECT * FROM team" ;
      }
      else {
         $sql = "SELECT * FROM team";
      }
        $result = $conn->query($sql);

      ?>
      <?php if ($result->num_rows > 0) {
            //output data of each row
            while ($row = $result->fetch_assoc()) {
              echo "<a href='index.php?teamId=". $row['teamId']."'>";
              echo "<img src='".$row["teamImage"]."'>";
            }
            } else {
            }
      ?></a>
    </div>
    <div id="cars">
      <?php
      $carId = 0;

      if (isset($_GET['teamId'])) {
        $carId = $_GET['teamId'];
        $sql = "SELECT * FROM hero where teamId=$carId";
      }
      else {
         $sql = "SELECT * FROM hero where teamId=$carId";
      }
      ?>
      <?php $result = $conn->query($sql);
      if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
      ?>
          <div class="container">
            <div class="name">
              <?php echo $row['carName']; ?>
            </div>
            <div id="img-car"><img src= <?php echo $row['carImage'];?> >
            <a href="index.php?teamId=<?php echo $row['teamId'];  ?>&carId=<?php echo $row['carId'];  ?>">
            <h2 id="rm">Read More</h2></a>
          </div>
        </div>
        <?php }} ?>
      </div>
    <div id="info">
      <?php
      $carId = 0;

      if (isset($_GET['carId'])) {
        $carId = $_GET['carId'];
        $sql = "SELECT * FROM hero where carId=$carId";
      }
      else {
         $sql = "SELECT * FROM hero where carId=$carId";
      }
      ?>
      <?php $result = $conn->query($sql);
      if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
       ?>

      <h2> <?php echo $row['carName']; ?></h2></br>
      <img id="hero-image-2" src= <?php echo $row['carImage']; ?> >
      <h3 class="h3-2">Car Description:</h3>
      <p  class="hero-2"> <?php echo $row['carDescription']; ?></p>
      <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" class="frmRate">
  			<fieldset>
  				<div class="rate">
  					<input type="radio" id="rating10" name="rating" value="10" />
  					<label class="lblRating" for="rating10" title="5 stars"></label>

  				    <input type="radio" id="rating9" name="rating" value="9" />
  				    <label class="lblRating half" for="rating9" title="4 1/2 stars"></label>

  				    <input type="radio" id="rating8" name="rating" value="8" />
  				    <label class="lblRating" for="rating8" title="4 stars"></label>

  				    <input type="radio" id="rating7" name="rating" value="7"  />
  				    <label class="lblRating half" for="rating7" title="3 1/2 stars"></label>

  				    <input type="radio" id="rating6" name="rating" value="6" />
  				    <label class="lblRating" for="rating6" title="3 stars"></label>

  				    <input type="radio" id="rating5" name="rating" value="5" />
  				    <label class="lblRating half" for="rating5" title="2 1/2 stars"></label>

  				    <input type="radio" id="rating4" name="rating" value="4" />
  				    <label class="lblRating" for="rating4" title="2 stars"></label>

  				    <input type="radio" id="rating3" name="rating" value="3" />
  				    <label class="lblRating half" for="rating3" title="1 1/2 stars"></label>

  				    <input type="radio" id="rating2" name="rating" value="2" />
  				    <label class="lblRating" for="rating2" title="1 star"></label>

  				    <input type="radio" id="rating1" name="rating" value="1" />
  				    <label class="lblRating half" for="rating1" title="1/2 star"></label>

  				    <input type="radio" id="rating0" name="rating" value="0" />
  				    <label class="lblRating" for="rating0" title="No star"></label>
  				</div></br></br></br></br>
          <div class="review">
            <textarea class="formMessage" name="review" placeholder="Please write a review for the hero" required></textarea>
          </div>
  				<div class="divSubmit">
  					<input type="submit" name="submitRating" value="Rate Hero"/>
  					<input type="hidden" name="heroId" value="<?php echo $carId; ?>"/>
  				</div>
  			</fieldset>
  		</form>
    </div>
    <?php
       }
   } else {
   }
?>
  </body>
</html>
