import { request } from './request.js'

let usernameInput;
let passwordInput;
let signinButton;

window.onload = function() {
    usernameInput = document.getElementById("username-input");
    passwordInput = document.getElementById("password-input");
    signinButton = document.getElementById("signin-button");
    signinButton.onclick = function() { 
        let response = request("post", `/auth/?username=${usernameInput.value}&password=${passwordInput.value}`);

        if (response.status === 200) window.location.href = "/admin";
    }
}
