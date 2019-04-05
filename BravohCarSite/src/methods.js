function logIn() {
    var values = new FormData();
    values.append('email', "abc")
    values.append('password', "cc")
    fetch('http://localhost:8000/Sign-Up.php', {
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