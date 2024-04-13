<?php
session_start();
include_once "../connection.php";

// Check if 'searchTerm' key exists in the $_POST array
if (isset($_POST['searchTerm'])) {
    $outgoing_id = $_SESSION['unique_id'];
    $searchTerm = mysqli_real_escape_string($con, $_POST['searchTerm']);

    // Construct SQL query
    $sql = "SELECT * FROM usertable ut, userprofile up WHERE ut.uid = up.uid AND ut.unique_id != '$outgoing_id' AND name LIKE '%$searchTerm%'";
    $output = "";
    $query3 = mysqli_query($con, $sql);

    // Check if query was successful and if there are results
    if ($query3 && mysqli_num_rows($query3) > 0) {
        // Include file to process and display data
        include_once "data.php";
    } else {
        $output .= 'No user found related to your search term';
    }
    echo $output;
} else {
    // Handle case when 'searchTerm' is not set in $_POST array
    echo "No search term provided";
}
?>
