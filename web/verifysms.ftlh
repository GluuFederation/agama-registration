<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Verify SMS OTP</title>
</head>
<body>
<h2>Step 2: Verify SMS OTP</h2>

[#if errorMessage??]
    <p style="color:red;">${errorMessage}</p>
[/#if]

<form method="post">
    <label>Enter the OTP sent to your phone:</label><br>
    <input type="text" name="otp" required><br><br>

    <button type="submit">Verify</button>
</form>
</body>
</html>
