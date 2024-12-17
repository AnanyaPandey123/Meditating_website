<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $con = new mysqli("localhost", "root", "", "website");

    if ($con->connect_error) {
        die("Connection Failed: " . $con->connect_error);
    }

    
    else{
        $stmt = $con->prepare("INSERT INTO signup1(username, password) VALUES (?, ?)");
    $stmt->bind_param("ss", $username, $password);
    }

    if ($stmt->execute()) {
        echo "Registration successful!";
         header("Location: Home_page.html"); 
        exit();
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
    $con->close();
}
?>
