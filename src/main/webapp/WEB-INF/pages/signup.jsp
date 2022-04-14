<!DOCTYPE html>
<html>

  <head>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <link rel="shortcut icon" type = "image/png" href="/static/images/favicon.ico"/>
  <link rel="stylesheet" type = "text/css" href="/static/css/signup.css"/>
  </head>
  <body>
    <p class="signup-logo"></p>
    <div class="singup-form">
      <h1 style="color:#00acee; font-size: 30px;" align="center">Create Your Account</h1>
      <p style="color:#3e4246;" align="center">Welcome to the social network of coder by Mission Helix</p>
        <hr>
      <div class="username-form"  align="center" style="margin-top:35px;">
         <input type="text" class="forms" id = "signup-name"  name ="name" placeholder="Enter Your Name" >
      </div>
      <div class="Email-form"  align="center" style="margin-top:35px;">
        <input type="email" class="forms" id = "signup-email" name ="email"  placeholder="Email" >
      </div>
      <div class="password-form"   align="center" style="margin-top:35px;">
        <input type="password" class="forms"id = "signup-password" name = "name"  placeholder="Password" >
      </div>
       <div align="center">
              <p style ="color : red; display : none" id ="signup-error" >Error here !</p>
       </div>
      <div class="signin-button" id ="btn-signup" align="center">
        <input type="button" class="input-button"  value="SignUp">
      </div>
    </div>
    <script>
        function validateSignupForm(){
            var name  = $("#signup-name").val();
            var email  = $("#signup-email").val();
            var password  = $("#signup-password").val();
            var error ="";

            if(!name){
                error+="Name is Empty. ";
            }
            if(!email){
              error+="Email is Empty. ";
            }
            if(!password){
             error+="Password is Empty. ";
            }
            if(password.length <= 3){
                error+="Password length must be greater than 3 characters" ;
            }

            $("#signup-error").html( error );

            if(error.length>0){
                return false;
            }
            return true;
        }



        $("#btn-signup").click(function(){
            var isFormValid = validateSignupForm();
            if(isFormValid){
                $("#signup-error").hide();
                 var name  = $("#signup-name").val();
                 var email  = $("#signup-email").val();
                 var password  = $("#signup-password").val();
                var user = {
                "name" : name,
                "email": email,
                "password" : password
                };
                $.ajax({
                type:"POST",
                url:"/signup",
                data:JSON.stringify(user),
                success: function(response){
                    if(!!response){
                        alert(response.message);
                    }
                 },
                contentType : "application/json"
                });
            }else{
                 $("#signup-error").show();
            }
           });
    </script>

  </body>
</html>
