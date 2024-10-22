<?php
session_start();
<<<<<<< HEAD
include('connection/dbconfig.php');

// Check if the form was submitted
if (isset($_POST['updateProfile'])) {
    // Retrieve form data
    $tutorID = $_SESSION['auth_tutor']['tutor_id'];
    $firstName = $_POST['firstName'];
    $lastName = $_POST['lastName'];
    $teachingMode = $_POST['teachingMode'];
    $ratePerHour = $_POST['ratePerHour'];
    $bio = $_POST['bio'];

    // Check if a new profile picture is uploaded
    if (isset($_FILES['profilePicture']) && $_FILES['profilePicture']['error'] === 0) {
        $profilePicture = $_FILES['profilePicture'];
        
        // Validate image file type (allow only jpeg and png)
        $allowedTypes = ['image/jpeg', 'image/png'];
        if (in_array($profilePicture['type'], $allowedTypes)) {
            // Upload directory
            $uploadDir = 'img/';
            $profilePictureName = 'profile_' . time() . '_' . basename($profilePicture['name']);
            $uploadPath = $uploadDir . $profilePictureName;
            
            // Move the uploaded file to the desired directory
            if (move_uploaded_file($profilePicture['tmp_name'], $uploadPath)) {
                // Update the database with the new profile picture
                $profilePicturePath = $uploadDir . $profilePictureName; 
                $updateQuery = "UPDATE tutor SET firstName = ?, lastName = ?, teachingMode = ?, ratePerHour = ?, bio = ?, profilePicture = ? WHERE tutorID = ?";
                $stmt = $conn->prepare($updateQuery);
                $stmt->bind_param("ssssssi", $firstName, $lastName, $teachingMode, $ratePerHour, $bio, $profilePicturePath, $tutorID);
                $stmt->execute();
                $stmt->close();
                $_SESSION['auth_tutor']['profile_picture'] = $profilePictureName;  // Update session data
                $_SESSION['success'] = "Profile updated successfully.";
            } else {
                $_SESSION['error'] = "Failed to upload profile picture.";
            }
        } else {
            $_SESSION['error'] = "Invalid file type. Only JPEG and PNG are allowed.";
        }
    } else {
        // No profile picture uploaded, update other fields
        $updateQuery = "UPDATE tutor SET firstName = ?, lastName = ?, teachingMode = ?, ratePerHour = ?, bio = ? WHERE tutorID = ?";
        $stmt = $conn->prepare($updateQuery);
        $stmt->bind_param("sssssi", $firstName, $lastName, $teachingMode, $ratePerHour, $bio, $tutorID);
        $stmt->execute();
        $stmt->close();
        $_SESSION['success'] = "Profile updated successfully.";
    }

    // Redirect back to the profile edit page
    header("Location: t-profile.php");
    exit();
} else {
    // If the form was not submitted properly, redirect back
    $_SESSION['error'] = "Please fill out the form properly.";
    header("Location: t-profile.php");
    exit();
}
=======
error_reporting(E_ALL);
ini_set('display_errors', 1);

include('connection/dbconfig.php');
$message = '';


$uploadFileDir = 'img/';
if (!file_exists($uploadFileDir)) {
    mkdir($uploadFileDir, 0777, true);
}

if (isset($_POST['register_btn'])) {
    // Handle profile picture upload
    if (isset($_FILES['profilePicture']) && $_FILES['profilePicture']['error'] === UPLOAD_ERR_OK) {
        // Uploaded file details
        $fileTmpPath = $_FILES['profilePicture']['tmp_name'];
        $fileName = $_FILES['profilePicture']['name'];
        $fileSize = $_FILES['profilePicture']['size'];
        $fileType = $_FILES['profilePicture']['type'];
        $fileNameCmps = explode(".", $fileName);
        $fileExtension = strtolower(end($fileNameCmps));
        
        // File extensions allowed
        $allowedfileExtensions = array('jpg', 'jpeg', 'png');
        
        if (in_array($fileExtension, $allowedfileExtensions)) {
            // Directory where file will be moved
            $uploadFileDir = 'img/';
            $newFileName = md5(time() . $fileName) . '.' . $fileExtension;
            $dest_path = $uploadFileDir . $newFileName;

            if (move_uploaded_file($fileTmpPath, $dest_path)) {
                // Insert data into database
                include('connection/dbconfig.php'); // Include your database connection file
            
                // Get the form data
                $firstName = $_POST['firstName'];
                $lastName = $_POST['lastName'];
                $subjectExpertise = implode(',', $_POST['subjectExpertise']); // Convert array to comma-separated string
                $availableDaysTime = $_POST['availableDaysTime'];
                $teachingMode = $_POST['teachingMode'];
                $ratePerHour = $_POST['ratePerHour'];
                $bio = $_POST['bio'];
            
                // Get the tutor ID of the currently logged-in user from the session
                $tutorID = $_SESSION['auth_tutor']['tutor_id'];
            
                // Debugging: Output the values to check
                echo "First Name: " . $firstName . "<br>";
                echo "Last Name: " . $lastName . "<br>";
                echo "Subject Expertise: " . $subjectExpertise . "<br>";
                echo "Available Days & Time: " . $availableDaysTime . "<br>";
                echo "Teaching Mode: " . $teachingMode . "<br>";
                echo "Rate Per Hour: " . $ratePerHour . "<br>";
                echo "Bio: " . $bio . "<br>";
            
                // Check if file was moved successfully
                if (move_uploaded_file($fileTmpPath, $dest_path)) {
                    echo "File moved successfully to: " . $dest_path;
                } else {
                    echo "Error moving file to: " . $dest_path;
                }
            
                // Update query with corrected syntax
                $query = "UPDATE tutor SET profilePicture=?, firstName=?, lastName=?, subjectExpertise=?, availableDaysTime=?, teachingMode=?, ratePerHour=?, bio=? WHERE tutorID=?";
                $stmt = $conn->prepare($query);
                $stmt->bind_param("ssssssssi", $dest_path, $firstName, $lastName, $subjectExpertise, $availableDaysTime, $teachingMode, $ratePerHour, $bio, $tutorID);
            
                // Execute the prepared statement
                if ($stmt->execute()) {
                    $message = "Profile updated successfully";
                      // Update session variable with new data
                    $_SESSION['auth_tutor']['tutor_fullname'] = $firstName . ' ' . $lastName;
                    // Redirect to profile page or any other page
                    header("Location: t-profile.php");
                    exit();
                } else {
                    $message = "Error updating profile: " . $stmt->error;
                }
            
            } else {
                $message = 'An error occurred while uploading the file to the destination directory.';
            }
        } else {
            $message = 'Upload failed as the file type is not acceptable. The allowed file types are: ' . implode(',', $allowedfileExtensions);
        }
    } else {
        $message = 'Error occurred while uploading the file.';
    }
}

$_SESSION['message'] = $message;
header("Location: t-profile.php");
?>
>>>>>>> a1de859c6c486d022125f193369220d346c87264
