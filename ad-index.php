<?php
// Start session
session_start();

include('php/ad-auth.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<<<<<<< HEAD
    <link rel="stylesheet" href="css/ad-style.css">
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-custom">
    <a class="navbar-brand" href="ad-index.php">ADMIN DASHBOARD</a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="tutormanagement.php">TUTOR MANAGEMENT</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="subjectmanagement.php">SUBJECT MANAGEMENT</a>
            </li>
        </ul>
    </div>
    <a href="ad-logout.php">LOGOUT</a>
</nav>

<div class="container mt-3">
    <table class="table custom-table">
        <thead>
        <!-- New Row for the Title -->
        <tr class="title-row">
            <th colspan="8" class="text-center">PENDING STUDENT TUTORS</th> <!-- Adjust colspan to match the number of columns -->
        </tr>
=======
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="ad-index.php">Admin Dashboard</a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" href="tutormanagement.php">Tutor Management</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="subjectmanagement.php">Subject Management</a>
            </li>
        </ul>
    </div>
    <a href="ad-logout.php">Logout</a>
</nav>

<div class="container mt-3">
    <h2>Pending Student Tutors</h2>
    <table class="table">
        <thead>
>>>>>>> a1de859c6c486d022125f193369220d346c87264
            <tr>
                <th>Tutor ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Degree Program / Level of Highschool</th>
                <th>Year</th>
                <th>G-Drive Link</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php include("php/ad-pending.php"); ?>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="scripts.js"></script>

<script src="disableBackButton.js"></script>

</body>
</html>
