const landing = document.getElementById('landing');
const signIn = document.getElementById('signIn');
const signUp = document.getElementById('signUp');
const carsPage = document.getElementById('carsPage');
const signInButton = document.getElementById('signInButton');
const signUpButton = document.getElementById('signUpButton');
const searchCarButton = document.getElementById('searchCarButton');
const logOutButton = document.getElementById('logOutButton');

let logged = true;


function showSignIn() {
    landing.style.display = 'none';
    signIn.style.display = 'inline';
    signUp.style.display = 'none';
    carsPage.style.display = 'none';
    hideLogIn();
    checkLogged();
}

function checkLogged() {
    if(logged) {
        searchCarButton.style.display = 'inline';
        logOutButton.style.display = 'inline';
        hideLogIn();
    }
    else {
        searchCarButton.style.display = 'none';
        logOutButton.style.display = 'none';
    }
}
function showSignUp() {
    landing.style.display = 'none';
    signIn.style.display = 'none';
    signUp.style.display = 'inline';
    carsPage.style.display = 'none';
    hideLogIn();
    checkLogged();
}

function showLanding() {
    landing.style.display = 'inline';
    signIn.style.display = 'none';
    signUp.style.display = 'none';
    carsPage.style.display = 'none';
    if(!logged) {
        showLogIn();
    }
    checkLogged();
}

function showLogIn() {
    signInButton.style.display = 'inline';
    signUpButton.style.display = 'inline';
    checkLogged();
}

function hideLogIn() {
    signInButton.style.display = 'none';
    signUpButton.style.display = 'none';
    logOutButton.style.display = 'inline';
    checkLogged();
}

function showCarsPage() {
    landing.style.display = 'none';
    signIn.style.display = 'none';
    signUp.style.display = 'none';
    carsPage.style.display = 'inline';
}
