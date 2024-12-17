<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
	$email = $_POST['email'];
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $password = $_POST['password'];
    $dob = $_POST['dob'];
    $gender = $_POST['gender'];
    $con = new mysqli("localhost", "root", "", "website");
    if ($con->connect_error) {
        die("Connection Failed: " . $con->connect_error);
    }else{
        $stmt = $con->prepare("INSERT INTO account(email,firstname,lastname, password,dob,gender) VALUES (?, ?,?,?,?,?)");
        $stmt->bind_param("ssssss", $email,$firstname, $lastname,$password,$dob,$gender);
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