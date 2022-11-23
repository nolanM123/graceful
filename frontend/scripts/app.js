let navbar;
let ailmentDescription;
let ailmentDisclaimer;

let questionsContainer;
let progressBar;
let question;
let trueButton;
let falseButton;

let productsContainer;

let backButton;

let ailments = new Array();
let ailmentSelected = 0;

let questions = new Array();
let questionPointer = -1;

let products = new Array();

function request(method, url, body = "", async = false) {
    let request = new XMLHttpRequest()
    request.open(method, url, async);
    request.send(body);

    return request;
}

function requestJSON(method, url, body = "", async = false) {
    return JSON.parse(request(method, url, body, async).responseText);
}

function animateProgressBar() {
    let id = setInterval(frame, 10);
    let current = parseFloat(progressBar.style.width);
    let target = questionPointer / questions.length * 100;
    let delta = 0.4;
    let step = delta * Math.sign(target - current);

    function frame() {
        if (Math.abs(target - current) <= delta) {
            progressBar.style.width = target + "%";
            clearInterval(id);
        } else {
            current += step;
            progressBar.style.width = current + "%";
        }
    }
}

function setNavbar() {
    let ailmentIndex = ailmentSelected;
    for (let i = 0; i < navbar.children.length; i++) {
        if (ailmentIndex >= ailments.length) ailmentIndex = 0;
        navbar.children[i].innerHTML = ailments[ailmentIndex]["name"];
        ailmentIndex++;
    }
}

function setQuestionaire(pointer) {
    if (pointer == null) pointer = -1;
    questionsContainer.style.display = "block";
    productsContainer.style.display = "none";
    ailmentDescription.innerHTML = `A modern and minimalist solution to your pharmaceutical needs - Take this short ${questions.length} question survey to receive a comprehensive diagnosis of your ${ailments[ailmentSelected]["name"].toLowerCase()} needs.`
    ailmentDisclaimer.innerHTML = ailments[ailmentSelected]["disclaimer"];
    questionPointer = pointer;
    setQuestion();
}

function setQuestion() {
    questionPointer++;

    if (questionPointer >= questions.length) {
        let params = [];
        for (let i = 0; i < questions.length; i++)
            params.push(`qid${questions[i]["qid"]}=${questions[i]["answer"]}`);

        products = requestJSON("GET", `/products/${ailments[ailmentSelected]["aid"]}/?${params.join("&")}`);

        questionsContainer.style.display = "none";
        productsContainer.style.display = "block";
        productsContainer.innerHTML = "";
        ailmentDescription.innerHTML = `There are ${products.length} results based on your answers from the ${ailments[ailmentSelected]["name"].toLowerCase()} questionaire.`;
        ailmentDisclaimer.innerHTML = ailments[ailmentSelected]["disclaimer"];

        for (let i = 0; i < products.length; i++) {
            let productContainer = document.createElement("div");
            productContainer.className = "product-container";
            productsContainer.appendChild(productContainer);

            let productIcon = document.createElement("div");
            productIcon.className = "product-icon";
            productContainer.appendChild(productIcon);

            let productImage = document.createElement("img");
            productImage.className = "product-image";
            productImage.src = products[i]["url"];
            productImage.onerror = function () {productImage.style.display = "none";}
            productIcon.appendChild(productImage);

            let productLink = document.createElement("a");
            productLink.className = "product-link";
            productLink.href = products[i]["link"];
            productLink.title = products[i]["link"];
            productLink.target = "_blank";
            productLink.innerHTML = "Vist Page";
            productContainer.appendChild(productLink);

            let productTitle = document.createElement("h2");
            productTitle.className = "product-title";
            productTitle.innerHTML = products[i]["name"];
            productContainer.appendChild(productTitle);

            let productDescription = document.createElement("p");
            productDescription.className = "product-description";
            productDescription.innerHTML = products[i]["description"];
            productContainer.appendChild(productDescription);

            let productSeperator = document.createElement("div");
            productSeperator.className = "product-seperator";
            productContainer.appendChild(productSeperator);
        }

        let productOcclusion = document.createElement("div");
        productOcclusion.className = "product-occlusion";
        productsContainer.appendChild(productOcclusion);
    } else {
        question.title = questions[questionPointer]["description"];
        question.innerHTML = questions[questionPointer]["question"];
        animateProgressBar();
    }
}

window.onload = function () {
    navbar = document.getElementById("navbar");
    for (let i = 0; i < 4; i++) {
        navbar.appendChild(document.createElement("p"));
        navbar.children[navbar.children.length - 1].className = "nav-option";
        navbar.children[navbar.children.length - 1].onclick = function () {
            let selected = ailmentSelected + i;

            if (selected >= ailments.length) selected -= ailments.length;

            if (selected != ailmentSelected) {
                ailmentSelected = selected;
                questions = requestJSON("GET", `/questions/${ailments[ailmentSelected]["aid"]}/`);
                setNavbar();
            }

            setQuestionaire();
        }
    }
    navbar.children[0].className = "nav-option-selected";
    ailmentDescription = document.getElementById("ailment-description");
    ailmentDisclaimer = document.getElementById("ailment-disclaimer");

    questionsContainer = document.getElementById("questions-container");
    progressBar = document.getElementById("progress-bar");
    progressBar.style.width = "0%";
    question = document.getElementById("question");
    trueButton = document.getElementById("true-button");
    trueButton.onclick = function () {
        questions[questionPointer]["answer"] = "True";
        setQuestion();
    }
    falseButton = document.getElementById("false-button");
    falseButton.onclick = function () {
        questions[questionPointer]["answer"] = "False";
        setQuestion();
    }

    productsContainer = document.getElementById("products-container");

    backButton = document.getElementById("back-button");
    backButton.onclick = function () {
        questionPointer -= 2;

        if (questionPointer <= -1) questionPointer = -1;

        setQuestionaire(questionPointer);
    }

    ailments = requestJSON("GET", "/ailments/");

    questions = requestJSON("GET", `/questions/${ailments[ailmentSelected]["aid"]}/`);

    setNavbar();
    setQuestionaire();
}
