[#ftl output_format="HTML"]
<!DOCTYPE html>
<html lang="en">
<head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>User Registration</title><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"></head>
<body>


  
  
  
  


  <div class="registration-container">
    <div align="center" class="flex">
      <img src="https://gluu.org/wp-content/uploads/2020/12/logo.png" id="inh1m">
    </div>
    <div class="header">
      <i class="fas fa-user-plus"></i> User Registration
    </div>

    [#if errorMessage?has_content]
    <div role="alert" align="center" class="alert alert-danger mt-3 error">
      <p>${errorMessage}</p>
    </div>
    [/#if]

    <div class="content">
      <p class="text-center">To create an account, please enter your details below.</p>
      <form method="post" enctype="application/x-www-form-urlencoded" id="registerForm" onsubmit="return validateForm(event)">
        <!-- Username -->
        <div class="form-group">
          <label class="form-label">Username: <span class="required">*</span></label>
          <input type="text" id="uid" name="uid" pattern="[A-Za-z]+" title="Username should contain only alphabets" required="" placeholder="Choose a username" class="form-control">
        </div>

        <!-- Display Name -->
        <div class="form-group">
          <label class="form-label">Display Name: <span class="required">*</span></label>
          <input type="text" id="displayName" name="displayName" required="" placeholder="Enter your display name" class="form-control">
        </div>

        <!-- First Name -->
        <div class="form-group">
          <label class="form-label">First Name: <span class="required">*</span></label>
          <input type="text" id="givenName" name="givenName" required="" placeholder="Enter your first name" class="form-control">
        </div>

        <!-- Last Name -->
        <div class="form-group">
          <label class="form-label">Last Name: <span class="required">*</span></label>
          <input type="text" id="sn" name="sn" required="" placeholder="Enter your last name" class="form-control">
        </div>

        <!-- Email -->
        <div class="form-group">
          <label class="form-label">Email: <span class="required">*</span></label>
          <input type="email" id="mail" name="mail" required="" placeholder="Enter your email" class="form-control">
        </div>

        <!-- Phone Number -->
        <div class="form-group">
          <label class="form-label">Phone Number: <span class="required">*</span></label>
          <input type="tel" id="jansMobile" name="jansMobile" required="" placeholder="Enter your mobile number" class="form-control">
        </div>

        <!-- Country -->
        <div class="form-group">
          <label class="form-label">Country: <span class="required">*</span></label>
          <input type="text" id="jansCountry" name="jansCountry" required="" placeholder="Enter your country" class="form-control">
        </div>

        <!-- Referral Code -->
        <div class="form-group">
          <label class="form-label">Referral Code:</label>
          <input type="text" id="referralCode" name="referralCode" placeholder="Optional referral code" class="form-control">
        </div>

        <!-- Send SMS OTP -->
        <div class="form-group">
          <label class="form-label">SMS OTP: <span class="required">*</span></label>
          <input type="text" id="smsOtp" name="smsOtp" required="" placeholder="Enter OTP sent to your phone" class="form-control">
        </div>

        <!-- Password -->
        <div class="form-group">
          <label class="form-label">Password: <span class="required">*</span></label>
          <input type="password" id="userPassword" name="userPassword" minlength="6" pattern="^(?=.*[!@#$%^&amp;*])(?=.*[A-Za-z0-9]).{6,}$" required="" placeholder="Choose a strong password" title="Password must be at least 6 characters and contain at least one special character (!@#$%^&amp;*)" class="form-control">
        </div>

        <!-- Confirm Password -->
        <div class="form-group">
          <label class="form-label">Repeat Password: <span class="required">*</span></label>
          <input type="password" id="confirmPassword" name="confirmPassword" required="" placeholder="Confirm your password" class="form-control">
          <div id="error-message" class="error-message"></div>
        </div>

        <!-- Email OTP -->
        <div class="form-group">
          <label class="form-label">Email OTP: <span class="required">*</span></label>
          <input type="text" id="emailOtp" name="emailOtp" required="" placeholder="Enter OTP sent to your email" class="form-control">
        </div>

        <!-- Buttons -->
        <div class="buttons">
          <button type="submit" class="btn btn-primary">Register</button>
          <button type="reset" id="cancel" name="cancel" value="cancel" class="btn btn-primary">Reset</button>
        </div>
      </form>
    </div>
  </div>


<!-- Style (same as before, left unchanged) -->



</body>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f8f9fa;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
  }
  .flex {
    padding: 10px;
    margin-top: auto;
  }
  .registration-container {
    width: 100%;
    max-width: 600px;
    background: white;
    border-radius: 5px;
    border: #080808;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    overflow: hidden;
  }
  .header {
    background: #28a745;
    padding: 15px;
    color: white;
    font-size: 20px;
    font-weight: bold;
    display: flex;
    align-items: center;
  }
  .header i {
    margin-right: 10px;
  }
  .content {
    padding: 20px;
  }
  .form-group {
    margin-bottom: 15px;
  }
  .form-label {
    font-weight: bold;
    display: block;
    margin-bottom: 5px;
  }
  .form-control {
    width: 95%;
    padding: 10px;
    font-size: 14px;
    border: 1px solid #ced4da;
    border-radius: 5px;
  }
  .required {
    color: red;
  }
  .error-message {
    color: red;
    font-size: 13px;
    margin-top: 5px;
  }
  .error {
    font-weight: bold;
    color: red;
  }
  .buttons {
    display: flex;
    gap: 10px;
  }
  .btn {
    padding: 10px 15px;
    font-size: 16px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  .btn-primary {
    background-color: #007bff;
    color: white;
  }
  .btn-primary:hover {
    background-color: #0056b3;
  }
</style>
<script>
  function validateForm(event) {
    let password = document.getElementById("userPassword").value;
    let confirmPassword = document.getElementById("confirmPassword").value;
    let errorMessage = document.getElementById("error-message");
    if (password !== confirmPassword) {
      errorMessage.innerText = "Passwords do not match!";
      return false;
    }
    errorMessage.innerText = "";
    return true;
  }
</script>
</html>