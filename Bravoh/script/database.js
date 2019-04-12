function getCars() {
    return '';
}

function isLogged() {
    return false;
}

function signIn() {
    var values = new FormData();
    values.append('email', "abc")
    values.append('password', "cc")
    fetch('signIn.php', {
        mode: 'no-cors',
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-form-urlencoded'
        },
        body: values,
        success: function (response) {
            console.log(response);
            // put on console what server sent back...
        }

    });
}

function signUp() {
    var values = new FormData();
    values.append('email', "abc")
    values.append('password', "cc")
    fetch('signUp.php', {
        mode: 'no-cors',
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-form-urlencoded'
        },
        body: values,
        success: function (response) {
            console.log(response);
            // put on console what server sent back...
        }

    });
}