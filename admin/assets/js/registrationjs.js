$(document).ready(function () {
    alert('me-here');
    // $('#registrationForm').validate({
    //     rules:{
    //         username:"required"
    //     },
    //     message:{
    //         username:"Username must be required"
    //     }
    // })
    $('#usernamevalidation').hide();
    $('#regbtn').click(function () {
        alert('dddd');
        
        let userName = $('#username').val();
        alert(userName);
        if (userName == "") {
            $('#usernamevalidation').show();
            return false;
        }
    })
});