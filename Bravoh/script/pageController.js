const landing = document.getElementById('landing');
const signIn = document.getElementById('signIn');
const signUp = document.getElementById('signUp');
const signInButton = document.getElementById('signInButton');
const signUpButton = document.getElementById('signUpButton');
const searchCarButton = document.getElementById('searchCarButton');

let logged = false;


function showSignIn() {
    landing.style.display = 'none';
    signIn.style.display = 'inline';
    signUp.style.display = 'none';
    hideLogIn();

}

function showSignUp() {
    landing.style.display = 'none';
    signIn.style.display = 'none';
    signUp.style.display = 'inline';
    hideLogIn();
}

function showLanding() {
    landing.style.display = 'inline';
    signIn.style.display = 'none';
    signUp.style.display = 'none';
    if(!logged) {
        showLogIn();
    }
}

function showLogIn() {
    signInButton.style.display = 'inline';
    signUpButton.style.display = 'inline';
}

function hideLogIn() {
    signInButton.style.display = 'none';
    signUpButton.style.display = 'none';
}