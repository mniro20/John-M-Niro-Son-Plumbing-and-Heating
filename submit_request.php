<?php
// Database credentials
$servername = "localhost";        
$username = "root";               
$password = "";                   
$dbname = "niro_plumbing";    

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Capture and sanitize form inputs
$name = $conn->real_escape_string($_POST['name']);
$email = $conn->real_escape_string($_POST['email']);
$phone = $conn->real_escape_string($_POST['phone']);
$preferred_date = $conn->real_escape_string($_POST['date']);
$preferred_time = $conn->real_escape_string($_POST['time']);
$description = $conn->real_escape_string($_POST['description']);
$address = $conn->real_escape_string($_POST['address']);
$city = $conn->real_escape_string($_POST['city']);
$state = $conn->real_escape_string($_POST['state']);
$zip = $conn->real_escape_string($_POST['zip']);

// Validate date and time
$date = date('Y-m-d', strtotime($preferred_date));
$time = date('h:i A', strtotime($preferred_time));

// Insert into database
$sql = "INSERT INTO requests (name, email, phone, preferred_date, preferred_time, description, address, city, state, zip_code)
        VALUES ('$name', '$email', '$phone', '$date', '$time', '$description', '$address', '$city', '$state', '$zip')";

if ($conn->query($sql) === TRUE) {
    header("Location: request.html?success=1");
    exit();
} else {
    $errorMMsg = urlencode("There was an error submitting your request: " . $conn->error);
    header("Location: request.html?error=$errorMMsg");
    exit();
}

$conn->close();
?>
