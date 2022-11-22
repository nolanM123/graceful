var navbar = null;
var backButton = null;
var nextButton = null;
var navbarButtons = new Array();

var ailmentContainer = null;
var ailmentHeader = null;
var ailmentBody = null;
var ailmentFooter = null;

var questionsContainer = null;
var previousButton = null;
var hintIcon = null;
var questionText = null;
var trueButton = null;
var falseButton = null;

var productsContainer = null;

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

    for (let i = 0; i < navbarButtons.length; i++) {
        if (ailmentIndex >= ailments.length) ailmentIndex = 0;

        if (ailmentIndex == ailmentSelected) {
            navbarButtons[i].style.setProperty("--background-color", "var(--primary)");
            navbarButtons[i].style.setProperty("--color", "var(--flat)");
        } else {
            navbarButtons[i].style.setProperty("--background-color", "transparent");
            navbarButtons[i].style.setProperty("--color", "var(--tertiary)");
        }

        navbarButtons[i].innerHTML = ailments[ailmentIndex]["name"];
        ailmentIndex++;
    }
}

function setQuestionaire() {
    questionsContainer.style.display = "block";
    productsContainer.style.display = "none";

    ailmentHeader.innerHTML = ailments[ailmentSelected]["name"];
    ailmentBody.innerHTML = `A modern and minimalist solution to your pharmaceutical needs - Take this short ${questions.length} question survey to receive a comprehensive diagnosis of your ${ailments[ailmentSelected]["name"].toLowerCase()} needs.`
    ailmentFooter.innerHTML = ailments[ailmentSelected]["disclaimer"];

    questionPointer = -1;
    setQuestion();
}

function setQuestion() {
    questionPointer++;

    if (questionPointer >= questions.length) {
        let params = [];
        for (let i = 0; i < questions.length; i++)
            params.push(`qid${questions[i]["qid"]}=${questions[i]["answer"]}`);

        products = requestJSON("GET", `/products/${ailments[ailmentSelected]["aid"]}/?${params.join("&")}`);

        productsContainer.scrollTop = 0;
        productsContainer.innerHTML = "";
        for (let i = 0; i < products.length; i++) {
            let productContainer = document.createElement("div");
            productContainer.className = "product-container";
            productsContainer.appendChild(productContainer);

            let shareButton = document.createElement("input");
            shareButton.className = "product-share-button";
            shareButton.type = "image";
            shareButton.src = "/frontend/images/share-icon.png";
            shareButton.onclick = function () {
            }
            productContainer.appendChild(shareButton);

            let productIcon = document.createElement("div");
            productIcon.className = "product-icon";
            productContainer.appendChild(productIcon);

            let productImage = document.createElement("img");
            productImage.className = "product-url";
            productImage.src = products[i]["url"];
            productImage.onerror = function () {
                productImage.style.display = "none";
            }
            productIcon.appendChild(productImage);

            let productLink = document.createElement("a");
            productLink.className = "product-link";
            productLink.href = products[i]["link"];
            productLink.title = products[i]["link"];
            productLink.innerHTML = "Vist Page";
            productIcon.appendChild(productLink);

            let productHeader = document.createElement("p");
            productHeader.className = "product-header";
            productHeader.innerHTML = products[i]["name"];
            productContainer.appendChild(productHeader);

            let productBody = document.createElement("p");
            productBody.className = "product-body";
            productBody.innerHTML = products[i]["description"];
            productContainer.appendChild(productBody);
        }

        questionPointer = -1;
        setProducts();
    } else {
        hintIcon.title = questions[questionPointer]["description"];
        questionText.innerHTML = questions[questionPointer]["question"];
    }
}

function setProducts() {
    questionsContainer.style.display = "none";
    productsContainer.style.display = "block";

    ailmentHeader.innerHTML += " Products";
    ailmentBody.innerHTML = `There are ${products.length} results based on your answers from the ${ailments[ailmentSelected]["name"].toLowerCase()} questionaire.`;
    ailmentFooter.innerHTML = ailments[ailmentSelected]["disclaimer"];
}

window.onload = function () {
    navbar = document.getElementById("navbar");
    backButton = document.getElementById("back-button");
    nextButton = document.getElementById("next-button");

    ailmentContainer = document.getElementById("ailment-container");
    ailmentHeader = document.getElementById("ailment-header");
    ailmentBody = document.getElementById("ailment-body");
    ailmentFooter = document.getElementById("ailment-footer");

    questionsContainer = document.getElementById("questions-container");
    previousButton = document.getElementById("previous-button");
    hintIcon = document.getElementById("hint-icon");
    questionText = document.getElementById("question-text");
    trueButton = document.getElementById("true-button");
    falseButton = document.getElementById("false-button");

    productsContainer = document.getElementById("products-container");

    ailments = requestJSON("GET", "/ailments/");

    questions = requestJSON("GET", `/questions/${ailments[ailmentSelected]["aid"]}/`);

    backButton.onclick = function () {
        ailmentPointer--;

        if (ailmentPointer <= -1) ailmentPointer = ailments.length - 1;

        setNavbar();
    }

    nextButton.onclick = function () {
        ailmentPointer++;

        if (ailmentPointer >= ailments.length) ailmentPointer = 0;

        setNavbar();
    }

    for (let i = 0; i < 4; i++) {
        navbarButtons.push(document.createElement("button"));
        navbarButtons[i].className = "navbar-ailment-button";
        navbarButtons[i].onclick = function () {
            let selected = (i + ailmentPointer) % ailments.length;;

            if (selected != ailmentSelected) {
                ailmentSelected = selected;
                questions = requestJSON("GET", `/questions/${ailments[ailmentSelected]["aid"]}/`);
                setNavbar();
            }

            setQuestionaire();
        }
        navbar.insertBefore(navbarButtons[i], nextButton);
    }

    previousButton.onclick = function () {
        questionPointer--;

        if (questionPointer <= -1) questionPointer = 0;

        questionText.innerHTML = questions[questionPointer]["question"];
    }

    trueButton.onclick = function () {
        questions[questionPointer]["answer"] = "True";
        setQuestion();
    }

    falseButton.onclick = function () {
        questions[questionPointer]["answer"] = "False";
        setQuestion();
    }

    setNavbar();
    setQuestionaire();
}
