<?php
    session_start();
    include_once "config.php";
    $tutorID = $_SESSION['tutorID'];
    $sql = "SELECT * FROM tutor WHERE NOT tutorID = {$tutorID} ORDER BY tutorID DESC";
    $query = mysqli_query($conn, $sql);
    $output = "";
    if(mysqli_num_rows($query) == 0){
        $output .= "No users are available to chat";
    }elseif(mysqli_num_rows($query) > 0){
        include_once "data.php";
    }
    echo $output;
?>