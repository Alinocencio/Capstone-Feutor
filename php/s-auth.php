<?php
<<<<<<< HEAD
session_start();

// Redirect to login page if the user is not authenticated
if (!isset($_SESSION['authentication']) || $_SESSION['authentication'] !== true) {
    header("Location: s-login.php");
    exit();
} else if (isset($_SESSION['tutorauthentication']) && $_SESSION['tutorauthentication'] === true) {
    header("Location: t-index.php");
    exit();
} else if (isset($_SESSION['admin_authentication']) && $_SESSION['admin_authentication'] === true) {
    header("Location: ad-index.php");
    exit();
}
=======


// Redirect to login page if the user is not authenticated
if(!isset($_SESSION['authentication']) || $_SESSION['authentication'] !== true) {
    header("Location: s-login.php");
    exit();
} else if(isset($_SESSION['tutorauthentication']) && $_SESSION['tutorauthentication'] === true) {
    header("Location: t-index.php");
    exit();
}else if(isset($_SESSION['admin_authentication']) && $_SESSION['admin_authentication'] === true) {
    header("Location: ad-index.php");
    exit();}
>>>>>>> a1de859c6c486d022125f193369220d346c87264

// Set user first name for use in the index.php page
$user_firstname = isset($_SESSION['auth_user']['user_fullname']) ? $_SESSION['auth_user']['user_fullname'] : '';
$studentID = isset($_SESSION['auth_user']['user_id']) ? $_SESSION['auth_user']['user_id'] : '';
<<<<<<< HEAD
=======

>>>>>>> a1de859c6c486d022125f193369220d346c87264
?>
