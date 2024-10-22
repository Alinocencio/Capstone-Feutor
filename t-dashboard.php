<?php
session_start();
<<<<<<< HEAD
include('php/t-auth.php');
include('connection/dbconfig.php');

// Fetch the profile picture of the tutor
$tutorID = $_SESSION['auth_tutor']['tutor_id'];
$query = "SELECT profilePicture FROM tutor WHERE tutorID = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $tutorID);
$stmt->execute();
$stmt->bind_result($profilePicture);
$stmt->fetch();
$stmt->close();

// Check if profile picture exists and if not, use a default image
$profilePicture = !empty($profilePicture) ? $profilePicture : 'img/default-profile.png';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FEUTOR</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css?v=<?php echo time(); ?>">
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-green bg-green">
        <div class="container">
            <!-- Brand -->
            <a class="navbar-brand ms-2" href="#">FEUTOR</a> <!-- Adjusted for slight left alignment -->
            <!-- Toggler Button -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- Navigation Items -->
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto"> <!-- Pushes nav items to the right -->
                    <li class="nav-item active">
                        <a class="nav-link" href="t-dashboard.php">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="appointmentsDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Appointments
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="appointmentsDropdown">
                            <li><a class="dropdown-item" href="t-approved.php">Accepted</a></li>
                            <li><a class="dropdown-item" href="t-declined.php">Declined</a></li>
                            <li><a class="dropdown-item" href="t-finished.php">Finished</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Messages</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Notifications</a>
                    </li>
                    <li class="nav-item dropdown user-dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <!-- Display only Profile Picture with slight left alignment -->
                            <img src="<?php echo $profilePicture; ?>" alt="Profile Picture" style="width: 40px; height: 40px; border-radius: 50%; margin-right: 10px;">
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="userDropdown">
                            <li><a class="dropdown-item" href="t-profile.php">Edit Profile</a></li>
                            <li><a class="dropdown-item" href="t-logout.php">Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Content area to display tutor data -->
    <div class="container mt-3">
        <div class="row justify-content-center">
            <h1>Your Pending Requests</h1>
            <?php include('php/studentselection.php'); ?>
        </div>
    </div>

    <!-- jQuery, Popper.js, and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="disableBackButton.js"></script>
</body>
</html>
=======

include ('php/t-auth.php');
include('connection/dbconfig.php'); // Include your database connection file
error_reporting(E_ALL);
ini_set('display_errors', 1);




?>




<!DOCTYPE html>
<html>
<head>
  <title>FEUTOR</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    
    <link rel="stylesheet" href="css/style.css?v=<?php echo time(); ?>">




</head>
<body>

  <!-- Navigation Bar -->
  <nav class="navbar navbar-expand-lg navbar-green bg-green">
    <div class="container">
      <!-- Brand -->
      <a class="navbar-brand" href="#">FEUTOR</a>
      <!-- Toggler Button -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <!-- Navigation Items -->
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Pending Request</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="appointmentsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Appointments
            </a>
            <div class="dropdown-menu" aria-labelledby="appointmentsDropdown">
              <a class="dropdown-item" href="#">Accepted</a>
              <a class="dropdown-item" href="#">Declined</a>
              <a class="dropdown-item" href="#">Finished</a>
           </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Messages</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Notifications</a>
          </li>
          <li class="nav-item dropdown user-dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <?php echo $tutor_firstname; ?>
            </a>
            <div class="dropdown-menu" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="t-profile.php">View Profile</a>
                <a class="dropdown-item" href="t-logout.php">Logout</a>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Content area to display tutor data -->
  <div class="container mt-3" style = "margin-top:2.3% !important; margin-right: 35%;">
    <div class="row justify-content-center">
      <?php  include('php/studentselection.php'); ?>
    </div>
  </div>



  
  

  
  <!-- jQuery, Popper.js, and Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


  <script src="disableBackButton.js"></script>


</body>
</html>


>>>>>>> a1de859c6c486d022125f193369220d346c87264
