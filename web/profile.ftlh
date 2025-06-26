[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><title>User Registration</title></head>
<body>


    
    


<h2>Step 1: Enter Your Details</h2>

[#if errorMessage??]
    <p style="color:red;">${errorMessage}</p>
[/#if]

<form method="post">
    <label>Username:</label><br>
    <input type="text" name="uid" required=""><br><br>

    <label>Email:</label><br>
    <input type="email" name="mail" required=""><br><br>

    <label>Phone Number:</label><br>
    <input type="text" name="jansMobile" required=""><br><br>

    <label>Country:</label><br>
    <input type="text" name="country"><br><br>

    <label>Referral Code:</label><br>
    <input type="text" name="referralCode"><br><br>

    <button type="submit">Send OTP</button>
</form>

</body>


</html>