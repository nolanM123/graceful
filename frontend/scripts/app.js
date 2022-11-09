var navbar = null;
var backButton = null;
var nextButton = null;
var ailmentButtons = new Array();

var view1 = null;
var ailmentLabel = null;
var ailmentDescription = null;
var ailmentDisclaimer = null;

var view2 = null;
var previousButton = null;
var textboxLabel = null;
var trueButton = null;
var falseButton = null;

var view3 = null;
var resultsLabel = null;

var ailments = new Array();
var ailmentPointer = 0;
var ailmentSelected = 0;

var questions = new Array();
var questionPointer = -1;

var products = new Array();


function request(method, url, body = "", async = false) {
    let request = new XMLHttpRequest()
    request.open(method, url, async);
    request.send(body);

    return request;
}

function requestJSON(method, url, body = "", async = false) {
    return JSON.parse(request(method, url, body, async).responseText);
}

function setNavbar() {
    let ailmentIndex = ailmentPointer;

    for (let i = 0; i < ailmentButtons.length; i++) {
        if (ailmentIndex >= ailments.length) ailmentIndex = 0;

        if (ailmentIndex == ailmentSelected) {
            ailmentButtons[i].style.setProperty("--c", "#aa8eb7");
            ailmentButtons[i].style.setProperty("--bg", "#f7e4ff");
        } else {
            ailmentButtons[i].style.setProperty("--c", "#c7c7c7");
            ailmentButtons[i].style.setProperty("--bg", "transparent");
        }

        ailmentButtons[i].innerHTML = ailments[ailmentIndex]["name"];
        ailmentIndex++;
    }
}

function setQuestionaire() {
    view2.style.display = "block";
    view3.style.display = "none";

    ailmentLabel.innerHTML = ailments[ailmentSelected]["name"];
    ailmentDescription.innerHTML = `A modern and minimalist solution to your pharmaceutical needs - Take this short ${questions.length} question survey to receive a comprehensive diagnosis of your ${ailments[ailmentSelected]["name"].toLowerCase()} needs.`
    ailmentDisclaimer.innerHTML = ailments[ailmentSelected]["disclaimer"];

    questionPointer = -1;
    getQuestion();
}

function getQuestion() {
    questionPointer++;

    if (questionPointer >= questions.length) {
        let params = [];
        for (let i = 0; i < questions.length; i++)
            params.push(`qid${questions[i]["qid"]}=${questions[i]["answer"]}`);

        products = requestJSON("GET", `/products/${ailments[ailmentSelected]["aid"]}/?${params.join("&")}`);

        view3.innerHTML = "";
        view3.appendChild(resultsLabel);
        resultsLabel.innerHTML = `${products.length} Results`;

        for (let i = 0; i < products.length; i++) {
            let productContainer = document.createElement("div");
            productContainer.className = "product-container";
            view3.appendChild(productContainer);

            let shareButton = document.createElement("input");
            shareButton.className = "share-button";
            shareButton.type = "image";
            shareButton.src = "/images/share-icon.png";
            shareButton.onclick = function () {
            }
            productContainer.appendChild(shareButton);

            let productIcon = document.createElement("div");
            productIcon.className = "product-icon";
            productContainer.appendChild(productIcon);

            let productLink = document.createElement("a");
            productLink.className = "product-link";
            productLink.href = products[i]["link"];
            productLink.innerHTML = "Vist Page";
            productContainer.appendChild(productLink);

            let productLabel = document.createElement("p");
            productLabel.className = "product-label";
            productLabel.innerHTML = products[i]["name"];
            productContainer.appendChild(productLabel);

            let productDescription = document.createElement("p");
            productDescription.className = "product-description";
            productDescription.innerHTML = products[i]["description"];
            productContainer.appendChild(productDescription);
        }

        questionPointer = -1;
        setProducts();
    } else {
        textboxLabel.innerHTML = questions[questionPointer]["question"];
    }
}

function setProducts() {
    view2.style.display = "none";
    view3.style.display = "block";

    ailmentLabel.innerHTML += " Products";
    ailmentDescription.innerHTML = `There are ${products.length} results based on your answers from the ${ailments[ailmentSelected]["name"].toLowerCase()} questionaire.`;
    ailmentDisclaimer.innerHTML = ailments[ailmentSelected]["disclaimer"];
}

window.onload = function () {
    navbar = document.getElementById("navbar");
    backButton = document.getElementById("back-button");
    nextButton = document.getElementById("next-button");

    view1 = document.getElementById("view-1");
    ailmentLabel = document.getElementById("ailment-label");
    ailmentDescription = document.getElementById("ailment-description");
    ailmentDisclaimer = document.getElementById("ailment-disclaimer");

    view2 = document.getElementById("view-2");
    previousButton = document.getElementById("previous-button");
    textboxLabel = document.getElementById("textbox-label");
    trueButton = document.getElementById("true-button");
    falseButton = document.getElementById("false-button");

    view3 = document.getElementById("view-3");
    resultsLabel = document.getElementById("results-label");

    ailments = requestJSON("GET", "/ailments/");

    questions = requestJSON("GET", `/questions/${ailments[ailmentSelected]["aid"]}/`);

    backButton.onclick = function () {
        ailmentPointer++;

        if (ailmentPointer >= ailments.length) ailmentPointer = 0;

        setNavbar();
    }

    nextButton.onclick = function () {
        ailmentPointer--;

        if (ailmentPointer <= -1) ailmentPointer = ailments.length - 1;

        setNavbar();
    }

    for (let i = 0; i < 4; i++) {
        ailmentButtons.push(document.createElement("button"));
        ailmentButtons[i].className = "ailment-button";
        ailmentButtons[i].onclick = function () {
            let selected = (i + ailmentPointer) % ailments.length;;

            if (selected != ailmentSelected) {
                ailmentSelected = selected;
                questions = requestJSON("GET", `/questions/${ailments[ailmentSelected]["aid"]}/`);
                setNavbar();
            }

            setQuestionaire();
        }
        navbar.insertBefore(ailmentButtons[i], nextButton);
    }

    previousButton.onclick = function () {
        questionPointer--;

        if (questionPointer <= -1) questionPointer = 0;

        textboxLabel.innerHTML = questions[questionPointer]["question"];
    }

    trueButton.onclick = function () {
        questions[questionPointer]["answer"] = "True";
        getQuestion();
    }

    falseButton.onclick = function () {
        questions[questionPointer]["answer"] = "False";
        getQuestion();
    }

    setNavbar();
    setQuestionaire();
}
