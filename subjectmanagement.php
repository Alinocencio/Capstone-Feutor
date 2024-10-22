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
        <title>Subject Management</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<<<<<<< HEAD
        <link rel="stylesheet" href="css/subject-management-style.css">
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
>>>>>>> a1de859c6c486d022125f193369220d346c87264
        </nav>


    <div class="container fluid mt-5">
        <div class="row">
            <!-- Add New Subject Form -->
            <div class="col-md-6">
                <div class="card shadow">
<<<<<<< HEAD
                    <div class="card-header text-center add-new-subject-header">
                        <h4>Add New Subject</h4>
                    </div>
                    <?php
=======
                    <div class="card-header text-center">
                        <h4>Add New Subject</h4>
                    </div>
                    <?php
                        session_start();

>>>>>>> a1de859c6c486d022125f193369220d346c87264
                        // Check if session message is set
                        if (isset($_SESSION['message'])) {
                            // Display session message
                            echo '<div class="alert alert-info">' . $_SESSION['message'] . '</div>';

                            // Clear session message
                            unset($_SESSION['message']);
                        }
                    ?>
                    
                    
                    <div class="card-body">
                        <form action="subjectmanagementcode.php" method="POST">
                            <div class="form-group">
                                <label for="subjectName">Subject Name:</label>
                                <input type="text" class="form-control" id="subjectName" name="subjectName" required>
                            </div>
                            <div class="form-group">
                                <label for="category">Category:</label>
                                <select class="form-control" id="category" name="category" required>
                                    <option value="High School">High School</option>
                                    <option value="Senior High School">Senior High School</option>
                                    <option value="College">College</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="semester">Semester:</label>
                                <select class="form-control" id="semester" name="semester" required>
                                    <option value="1st semester">1st semester</option>
                                    <option value="2nd semester">2nd semester</option>
                                </select>
                            </div>
<<<<<<< HEAD

                            <div class="button-container">
                            <button type="submit" class="btn add-subject-btn add-subject-btn-primary" name="submit">Add Subject</button>
                            </div>

=======
                            <button type="submit" class="btn btn-primary" name="submit">Add Subject</button>
>>>>>>> a1de859c6c486d022125f193369220d346c87264
                        </form>
                    </div>
                </div>
            </div>
            
            <!-- Subject List -->
            <div class="col-md-6">
                <div class="card shadow">
<<<<<<< HEAD
                    <div class="card-header text-center subject-list-header">
                        <h4>Subject List</h4>
                    </div>
                    <div class="card-body">

                        <?php include('php/getsubjects.php'); ?>
                    
                        </div>
=======
                    <div class="card-header text-center">
                        <h4>Subject List</h4>
                    </div>
                    <div class="card-body" style="width: 550px; overflow-y: auto;">
                  
                        <?php include('php/getsubjects.php'); ?>
                    
>>>>>>> a1de859c6c486d022125f193369220d346c87264
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    </body>
    </html>
