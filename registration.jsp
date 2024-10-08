<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="main">
        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <% 
                            String status = (String)request.getAttribute("status");
                            if (status != null) {
                                if (status.equals("success")) { %>
                                    <p>Registration successful!</p>
                                <% } else if (status.equals("exists")) { %>
                                    <p>User already exists!</p>
                                <% } else { %>
                                    <p>Registration failed. Please try again later.</p>
                                <% }
                            }
                        %>
                        <form method="post" action="register" class="register-form" id="register-form">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Your Name" data-sb-validations="required" required />
                                <div class="invalid-feedback" data-sb-feedback="name:required" style="color: red;">A name is required.</div>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email" data-sb-validations="required,email" required />
                                <div class="invalid-feedback" data-sb-feedback="email:email" style="color: red;">Email is not valid.</div>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" placeholder="Password" />
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password" />
                            </div>
                            <div id="password-error" class="error-message"></div>
                            <div class="form-group">
                                <label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="text" name="contact" id="contact" placeholder="Contact no" data-sb-validations="required" required />
                                <div class="invalid-feedback" data-sb-feedback="phone:required" style="color: red;">A phone number is required.</div>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register" />
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure>
                            <img src="images/signup-image.jpg" alt="sing up image">
                        </figure>
                        <a href="login.jsp" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {
        var status = '<%= request.getAttribute("status") %>';
        if (status === "success") {
            swal("Congrats", "Account created successfully", "success");
        } else if (status === "exists") {
            swal("Oops", "User already exists", "error");
        } else if (status === "failed") {
            swal("Oops", "Registration failed. Please try again later.", "error");
        }
    });
</script>
    <script>
        // Validate password and repeat password
        document.getElementById("register-form").addEventListener("submit", function(event) {
            var password = document.getElementById("pass").value;
            var repeatPassword = document.getElementById("re_pass").value;
            var errorElement = document.getElementById("password-error");

            if (password !== repeatPassword) {
                errorElement.textContent = "Passwords do not match";
                event.preventDefault(); // Prevent form submission
            } else {
                errorElement.textContent = ""; // Clear error message
            }
        });
    </script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
