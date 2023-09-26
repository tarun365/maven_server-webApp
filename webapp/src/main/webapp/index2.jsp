<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome To Bamboo</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: #fff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 4px;
            width: 90%;
            text-align: center;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            align-items: center;
        }

        .form-container {
            width: 300px;
            margin-right: 20px;
        }

        h1 {
            color: #007BFF;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #333;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[type="tel"],
        input[type="file"],
        textarea,
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Responsive styles */
        @media (max-width: 768px) {
            .container {
                flex-direction: column;
            }
            .form-container {
                width: 90%;
                margin-right: 0;
                margin-bottom: 20px;
            }
        }
    </style>
</head>
<body>
    <h1>Welcome To Bamboo</h1>
    <div class="container">
        <div class="form-container">
            <!-- Critical Functionality: User Login -->
            <form action="#" method="post" onsubmit="return false;">
                <label for="uname">Username:</label>
                <input type="text" placeholder="Enter Username" name="uname" required>
                <label for="psw">Password:</label>
                <input type="password" placeholder="Enter Password" name="psw" required>
                <button type="submit">Login</button>
            </form>
        </div>
        <div class="form-container">
            <!-- Critical Functionality: User Registration -->
            <form action="#" method="post" onsubmit="return false;">
                <label for="reg-username">Register Username:</label>
                <input type="text" placeholder="Enter Username" name="reg-username" required>
                <label for="reg-password">Password:</label>
                <input type="password" placeholder="Enter Password" name="reg-password" required>
                <label for="reg-email">Email:</label>
                <input type="email" placeholder="Enter Email" name="reg-email" required>
                <button type="submit">Register</button>
            </form>
        </div>
        <div class="form-container">
            <!-- Non-Critical Functionality: Change Theme -->
            <label for="theme">Change Theme:</label>
            <select id="theme" name="theme">
                <option value="light">Light</option>
                <option value="dark">Dark</option>
            </select>
            <!-- Non-Critical Functionality: User Profile Update -->
            <label for="profile">Update Profile:</label>
            <textarea name="bio" placeholder="Enter Bio"></textarea>
            <br>
            <input type="tel" name="phone" placeholder="Enter Phone">
            <br>
            <button type="button">Save Changes</button>
        </div>
    </div>
</body>
</html>
