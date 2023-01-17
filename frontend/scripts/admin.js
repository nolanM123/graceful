import { request } from "./request.js";

window.onload = function () {
    let response = request("post", "/session");
    if (response.status === 401) {
        window.alert("Session Timeout - Your session has expired, you are being returned to the admin login page.");
        window.location.href = "/login";
    }
};
