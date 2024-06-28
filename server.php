<?php
session_start();

$email = "";
$password = "";
$errors = array();
$_SESSION['success'] = "";

$connection = mysqli_connect("localhost", "root", "", "db_project");

//Registration
if (isset($_POST['register'])) {
    $username = mysqli_real_escape_string($connection, $_POST['username']);
    $email = mysqli_real_escape_string($connection, $_POST['email']);
    $gender = mysqli_real_escape_string($connection, $_POST['gender']);
    $password_1 = mysqli_real_escape_string($connection, $_POST['password_1']);
    $password_2 = mysqli_real_escape_string($connection, $_POST['password_2']);

    if (empty($username)) {
        array_push($errors, "Username is required");
    }
    if (empty($email)) {
        array_push($errors, "Email is required");
    }
    if (empty($gender)) {
        array_push($errors, "Gender is required");
    }
    if (empty($password_1)) {
        array_push($errors, "Password is required");
    }
    if ($password_1 != $password_2) {
        array_push($errors, "The two passwords do not match");
    }
    if (count($errors) == 0) {
        $password = "password_hash($password_1)";

        $query = "insert into users(username, email, gender, password) 
        values('$username', '$email', '$gender', '$password')";
        mysqli_query($connection, $query);

        $_SESSION['username'] = $username;

        $_SESSION['username'] = "You have successfully registered";

        header('location: add-product.php');
    }
}

//User login
if (isset($_POST['login'])) {

    // Data sanitization to prevent SQL injection
    $username = mysqli_real_escape_string($connection, $_POST['username']);
    $password = mysqli_real_escape_string($connection, $_POST['password']);

    // Error message if the input field is left blank
    if (empty($username)) {
        array_push($errors, "Username is required");
    }
    if (empty($password)) {
        array_push($errors, "Password is required");
    }

    // Checking for the errors
    if (count($errors) == 0) {

        // Password matching
        $password = "password_hash($password)";

        $query = "select * from users where username=
                '$username' and password='$password'";
        $results = mysqli_query($connection, $query);

        // $results = 1 means that one user with the
        // entered username exists
        if (mysqli_num_rows($results) == 1) {

            // Storing username in session variable
            $_SESSION['username'] = $username;

            // Welcome message
            $_SESSION['success'] = "You have logged in!";

            // Page on which the user is sent
            // to after logging in
            header('location: add-product.php');
        } else {

            // If the username and password doesn't match
            array_push($errors, "Username or password incorrect");
        }
    }
}
