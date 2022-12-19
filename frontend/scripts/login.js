import { request } from './request.js'

let usernameInput;
let passwordInput;
let signinButton;

window.onload = function() {
    usernameInput = document.getElementById("username-input");
    passwordInput = document.getElementById("password-input");
    signinButton = document.getElementById("signin-button");
    signinButton.onclick = function() { 
        let response = request("get", `/auth/?username=${usernameInput.value}&password=${passwordInput.value}`);
        let url = response.getResponseHeader("Location");

        if (url) {
            window.location.href = url;

            return;
        }

        
    }
}
