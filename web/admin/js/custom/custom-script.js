function redirect(){
    setTimeout(function () {
        window.location = document.location.origin + "/gallery"
    }, 750)
}

function loginForm(event) {
    event.preventDefault();
    login(event.target)
    return false;
}

function registerForm(event) {
    event.preventDefault();
    register(event.target)
    return false;
}

function login(form){
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
                redirect()
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
                password: form.password.value,
                repassword: form.repassword.value
            },
        success: function(text){
            if(text === "success"){
                swal("Success!", "Registered successfully, Redirecting...", "success")
                redirect()
            }else{
                swal("Error!", text, "error")
            }
        }
    });
}

function userForm(event){
    event.preventDefault();

    var form = event.target;
    $.ajax({
        type: "POST",
        data: {
            username: form.username.value,
            password: form.password.value,
            email: form.email.value,
            role: form.role.value,
            type: form.type.value,
            id: form.id.value
        },
        success: function (text) {
            if(text === "success"){
                var action = "modified"; if(form.type.value == "create") action = "created"
                swal("Success!", "User " + action + " successfully, Reloading...", "success")
                window.location.reload(true);
            }else{
                swal("Error!", text, "error")
            }
        }
    });

    if(form.type.value === "create") {
        form.username = "";
        form.password = "";
        form.email = "";
    }

    return false;
}

function deleteUser(id){

    swal("Are you sure you want to delete this user?", {
        icon: "warning",
        buttons: {
            cancel: "No. Cancel.",
            yes: {
                text: "Yes.",
                value: "yes",
            }
        },
    }).then((value) => {
        switch (value) {
            case "cancel":
                swal("Cancelled", "This user is safe for now.", "error");
                break;

            case "yes":
                $.ajax({
                    type: "POST",
                    data: {
                        type: "delete",
                        id
                    },
                    success: function (text) {
                        if(text === "success"){
                            window.location.reload(true);
                        }else{
                            swal("Error!", text, "error")
                        }
                    }
                });
                break;
        }
    });
}

function setRole(id, role){
    $.ajax({
        type: "POST",
        data: {
            type: "role",
            id: id,
            role: role
        },
        success: function (text) {
            if(text === "success"){
                window.location.reload(true);
            }else{
                swal("Error!", text, "error")
            }
        }
    });

}

function WIP(){
    swal("Error!", "This section of the admin panel is not implemented yet.", "warning");
}