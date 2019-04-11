class User {

    singUp() {
        fetch("http://localhost:8000/Sign-Up.php",{
            method:"post",
            body:JSON.stringify({
                'nome':document.getElementById('Nome').value,
                'cognome':document.getElementById('Cognome').value,
                'email':document.getElementById('Email').value,
                'cvv':document.getElementById('CVV').value,
                'psw':document.getElementById('Psw').value,
                'carta':document.getElementById('NumeroCarta').value,
            })
        }).then((response)=>{
            if(response.ok){
                return response.json();
            }
        }).then((res)=>{
            if(res='success')
        })
    }
}

class Service {
    getCars() {
        return 'A';
    }
}

// singUp() {
//     var values = new FormData();
//     values.append('email', "abc")
//     values.append('password', "cc")
//     fetch('http://localhost:8000/Sign-Up.php', {
//         mode: 'no-cors',
//         method: 'POST',
//         headers: {
//             'Content-Type': 'application/x-form-urlencoded'
//         },
//         body: values,
//         success: function (response) {
//             console.log(response);
//             // put on console what server sent back...
//         }
//     });
// }