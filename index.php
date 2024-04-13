<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SoulMate - Find Your Match</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style-form.css">
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('public/assets/img-landing.jpeg');
            background-size: center;
            background-position: center;
            font-family: Arial, sans-serif;
        }
        .container {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: black;
        }
        h1 {
            font-size: 3em;
            margin-bottom: 20px;
        }
        p {
            font-size: 1.5em;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #ff4d4d;
            color: white;
            text-decoration: none;
            font-size: 1.2em;
            border-radius: 5px;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #ff3333;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to SoulMate </h1>
        <p>Find Your Perfect Match</p>
        <a href="signup-user.php" class="btn">Sign Up Now</a>
    </div>
</body>
</html>
