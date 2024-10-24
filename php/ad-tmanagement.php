<?php
<<<<<<< HEAD
include('connection/dbconfig.php');

=======

include('connection/dbconfig.php');


>>>>>>> a1de859c6c486d022125f193369220d346c87264
/// Function to handle tutor deletion
function deleteTutor($tutorID) {
    global $conn;
    $delete_query = "DELETE FROM tutor WHERE tutorID=?";
    $stmt = mysqli_prepare($conn, $delete_query);
    mysqli_stmt_bind_param($stmt, "s", $tutorID);
    $delete_result = mysqli_stmt_execute($stmt);
    mysqli_stmt_close($stmt);

<<<<<<< HEAD
    return $delete_result;
=======
    if ($delete_result) {
        return true; // Deletion successful
    } else {
        return false; // Deletion failed
    }
>>>>>>> a1de859c6c486d022125f193369220d346c87264
}

// Handle tutor deletion when form is submitted
if (isset($_POST['delete_btn'])) {
    $tutorIDToDelete = $_POST['tutorID'];
    if (deleteTutor($tutorIDToDelete)) {
<<<<<<< HEAD
        header("Location: tutormanagement.php"); // Refresh the page after deletion
    } else {
=======
        // Tutor deletion successful
        header("Location: tutormanagement.php"); // Redirect to refresh the page
    } else {
        // Tutor deletion failed
>>>>>>> a1de859c6c486d022125f193369220d346c87264
        echo "Error deleting tutor.";
    }
}

<<<<<<< HEAD
=======

>>>>>>> a1de859c6c486d022125f193369220d346c87264
// Fetch approved tutors
$approved_query = "SELECT * FROM tutor WHERE approvalStatus='Approved'";
$approved_result = mysqli_query($conn, $approved_query);

// Fetch declined tutors
$declined_query = "SELECT * FROM tutor WHERE approvalStatus='Declined'";
$declined_result = mysqli_query($conn, $declined_query);

<<<<<<< HEAD
// Function to display approved tutors
function displayApprovedTutors($approved_result) {
    while ($row = mysqli_fetch_assoc($approved_result)) {
        echo "<tr>";
        echo "<td>" . $row['tutorID'] . "</td>";
        echo "<td>" . $row['firstName'] . "</td>";
        echo "<td>" . $row['lastName'] . "</td>";
        echo "<td>" . $row['email'] . "</td>";
        echo "<td>" . $row['degreeProgram'] . "</td>";
        echo "<td>" . $row['year'] . "</td>";
        echo "<td><a href='" . $row['gdriveLink'] . "' target='_blank'>Drive Link</a></td>";
        echo "<td>
                <form method='POST' onsubmit='return confirm(\"Are you sure you want to delete this tutor?\")'>
                    <input type='hidden' name='tutorID' value='" . $row['tutorID'] . "'>
                    <button type='submit' class='btn btn-danger' name='delete_btn'>DELETE</button>
                </form>
              </td>";
        echo "</tr>";
    }
}

// Function to display declined tutors
function displayDeclinedTutors($declined_result) {
    while ($row = mysqli_fetch_assoc($declined_result)) {
        echo "<tr>";
        echo "<td>" . $row['tutorID'] . "</td>";
        echo "<td>" . $row['firstName'] . "</td>";
        echo "<td>" . $row['lastName'] . "</td>";
        echo "<td>" . $row['email'] . "</td>";
        echo "<td>" . $row['degreeProgram'] . "</td>";
        echo "<td>" . $row['year'] . "</td>";
        echo "<td><a href='" . $row['gdriveLink'] . "' target='_blank'>Drive Link</a></td>";
        echo "<td>
                <form method='POST' onsubmit='return confirm(\"Are you sure you want to delete this tutor?\")'>
                    <input type='hidden' name='tutorID' value='" . $row['tutorID'] . "'>
                    <button type='submit' class='btn btn-danger' name='delete_btn'>DELETE</button>
                </form>
              </td>";
        echo "</tr>";
    }
}
=======
while ($row = mysqli_fetch_assoc($approved_result)) {
    echo "<tr>";
    echo "<td>" . $row['tutorID'] . "</td>";
    echo "<td>" . $row['firstName'] . "</td>";
    echo "<td>" . $row['lastName'] . "</td>";
    echo "<td>" . $row['email'] . "</td>";
    echo "<td>" . $row['degreeProgram'] . "</td>";
    echo "<td>" . $row['year'] . "</td>";
    echo "<td>" . $row['gdriveLink'] . "</td>";
    echo "<td>
            <form method='POST' onsubmit='return confirm(\"Are you sure you want to delete this tutor?\")'>
                <input type='hidden' name='tutorID' value='" . $row['tutorID'] . "'>
                <button type='submit' class='btn btn-danger' name='delete_btn'>Delete</button>
            </form>
        </td>";
    // Add more table cells as needed
   
    echo "</tr>";
}

// Output declined tutors in a separate table
echo "</tbody></table><h2>Declined Student Tutors</h2><table class='table'><thead><tr><th>Tutor ID</th><th>First Name</th><th>Last Name</th><th>Email</th><th>Degree Program / Level of Highschool</th><th>Year</th><th>Google Drive Link</th><th>Action</th></tr></thead><tbody>";

while ($row = mysqli_fetch_assoc($declined_result)) {
    echo "<tr>";
    echo "<td>" . $row['tutorID'] . "</td>";
    echo "<td>" . $row['firstName'] . "</td>";
    echo "<td>" . $row['lastName'] . "</td>";
    echo "<td>" . $row['email'] . "</td>";
    echo "<td>" . $row['degreeProgram'] . "</td>";
    echo "<td>" . $row['year'] . "</td>";
    echo "<td>" . $row['gdriveLink'] . "</td>";
    echo "<td>
            <form method='POST' onsubmit='return confirm(\"Are you sure you want to delete this tutor?\")'>
                <input type='hidden' name='tutorID' value='" . $row['tutorID'] . "'>
                <button type='submit' class='btn btn-danger' name='delete_btn'>Delete</button>
            </form>
        </td>";
    // Add more table cells as needed
   
    echo "</tr>";
}


>>>>>>> a1de859c6c486d022125f193369220d346c87264
?>
