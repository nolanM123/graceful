export function request(method, url, body = "", async = false) {
    let request = new XMLHttpRequest()
    request.open(method, url, async);
    request.send(body);

    return request;
}

export function requestJSON(method, url, body = "", async = false) {
    return JSON.parse(request(method, url, body, async).responseText);
}