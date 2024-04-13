<?php
session_start(); // Start the session

// Check if the user is logged in
if (isset($_SESSION['unique_id'])) {
    include_once "../connection.php"; // Include database connection

    // Check if logout_id is set in $_GET
    if (isset($_GET['logout_id'])) {
        $logout_id = mysqli_real_escape_string($con, $_GET['logout_id']);

        // Update user's status to "Offline now"
        $active = "Offline now";
        $sql = "UPDATE usertable SET active = '{$active}' WHERE unique_id = '$logout_id'";

        // Execute the SQL query
        $sql_result = mysqli_query($con, $sql);

        // Check if the SQL query was successful
        if ($sql_result) {
            // Unset all session variables
            session_unset();

            // Destroy the session
            session_destroy();

            // Redirect the user to the login page
            header("location: ../login-user.php");
            exit(); // Ensure script stops execution after redirection
        } else {
            // Handle SQL query error
            // For example, redirect to an error page or display a message
            header("location: ../error.php");
            exit(); // Ensure script stops execution after redirection
        }
    } else {
        // Redirect to users.php if logout_id is not set
        header("location: ../users.php");
        exit(); // Ensure script stops execution after redirection
    }
} else {
    // If the user is not logged in, redirect to the login page
    header("location: ../login-user.php");
    exit(); // Ensure script stops execution after redirection
}
?>
