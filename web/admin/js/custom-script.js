function redirect(){
    setTimeout(function () {
        window.location = document.location.origin + "/gallery"
    }, 2000)
}

function login(form){
    console.log("LOGIN:")
    console.log("user: " + form.username.value)
    console.log("pass: " + form.password.value)
    $.ajax({
        type: 'POST',
        data:
            {
                username: form.username.value,
                password: form.password.value,
                remember: form.remember.value
            },
        success: function(text){
            if(text == "success"){
                swal("Success!", "Logged in successfully, redirecting...", "success")
            }else{
                swal("Error!", text, "error")
            }
        }
    });
}

function register(form){
    $.ajax({
        type: 'POST',
        data:
            {
                username: form.username.value,
                email: form.email.value,
                password: form.remember.value,
                repassword: form.repassword.value
            },
        success: function(text){
            if(text == "success"){
                swal("Success!", "Registered successfully, redirecting...", "success")

            }else{
                swal("Error!", text, "error")
            }
        }
    });
}

