$(document).ready(function () {
    $('#emailMessage').hide();
    $('#passwordMessage').hide();
    toastr.options = {
        "closeButton": true,
        "debug": false,
        "newestOnTop": false,
        "progressBar": true,
        "positionClass": "toast-top-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "5000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    };
    $('#loginForm').on('submit', function (event) {
        event.preventDefault(); // Prevent the default form submission
        let email = $('#email').val();
        let password = $('#password').val();
        debugger

        if (email == "") {
            $('#emailMessage').text('Please enter your email address.');
            $('#emailMessage').show();
            return;
        } else {
            $('#emailMessage').hide();
        }

        // Email validation regex
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        // Check email format
        if (!emailRegex.test(email)) {
            $('#emailMessage').text('Invalid email format');
            $('#emailMessage').show();
            return;
        } else {
            $('#emailMessage').hide();
        }

        // Password validation - add your own criteria here
        if (password == "") {
            $('#passwordMessage').text('Please enter your password');
            $('#passwordMessage').show();
            return;
        } else {
            $('#passwordMessage').hide();
        }

        // Password validation - add your own criteria here
        if (password.length < 6) {
            $('#passwordMessage').text('Password must be at least 6 characters long');
            $('#passwordMessage').show();
            return;
        } else {
            $('#passwordMessage').hide();
        }

        console.log("email", email);
        console.log("password", password);
        $.ajax({
            url: 'login/authenticate', // URL of the server-side script
            type: 'POST',
            data: {
                email: email,
                password: password
            },
            dataType: 'json',
            success: function (response) {
                if (response.error_code == 200) { // login successfully.
                    toastr.success(response.message);
                    setTimeout(function () {
                        window.location.href = 'dashboard';
                    }, 2000);
                } else {
                    toastr.error(response.message);
                }
            },
            error: function (xhr, status, error) {
                toastr.error(error);
            }
        });
    });
});
