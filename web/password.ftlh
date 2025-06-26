<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Set Password</title>
</head>
<body>
<h2>Step 3: Set Your Password</h2>

[#if errorMessage??]
    <p style="color:red;">${errorMessage}</p>
[/#if]

<form method="post">
    <label>Password:</label><br>
    <input type="password" name="userPassword" required><br><br>

    <label>Confirm Password:</label><br>
    <input type="password" name="confirmPassword" required><br><br>

    <button type="submit">Proceed</button>
</form>
</body>
</html>
