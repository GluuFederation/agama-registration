<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Verify Email OTP</title>
</head>
<body>
<h2>Step 4: Verify Email OTP</h2>

[#if errorMessage??]
    <p style="color:red;">${errorMessage}</p>
[/#if]

<form method="post">
    <label>Enter the OTP sent to your email:</label><br>
    <input type="text" name="otp" required><br><br>

    <button type="submit">Verify</button>
</form>
</body>
</html>
