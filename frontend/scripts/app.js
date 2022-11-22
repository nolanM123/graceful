var navbar = null;
var ailmentDescription = null;
var ailmentDisclaimer = null;

var questionsContainer = null;
var question = null;
var trueButton = null;
var falseButton = null;
var previousButton = null;

var ailments = new Array();
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
    let ailmentIndex = ailmentSelected;

    for (let i = 0; i < navbar.children.length; i++) {
        if (ailmentIndex >= ailments.length) ailmentIndex = 0;
        navbar.children[i].innerHTML = ailments[ailmentIndex]["name"];
        ailmentIndex++;
    }

    setQuestion();
}

function setQuestionaire() {
    questionsContainer.style.display = "block";

    ailmentDescription.innerHTML = `A modern and minimalist solution to your pharmaceutical needs - Take this short ${questions.length} question survey to receive a comprehensive diagnosis of your ${ailments[ailmentSelected]["name"].toLowerCase()} needs.`
    ailmentDisclaimer.innerHTML = ailments[ailmentSelected]["disclaimer"];

    questionPointer = -1;
    setQuestion();
}

function setQuestion() {
    questionPointer++;

    if (questionPointer >= questions.length) {
        questionPointer = 0;

        let params = [];
        for (let i = 0; i < questions.length; i++)
            params.push(`qid${questions[i]["qid"]}=${questions[i]["answer"]}`);

        products = requestJSON("GET", `/products/${ailments[ailmentSelected]["aid"]}/?${params.join("&")}`);

    } else {
        question.title = questions[questionPointer]["description"]
        question.innerHTML = questions[questionPointer]["question"];
    }
}

window.onload = function () {
    navbar = document.getElementById("navbar");
    ailmentDescription = document.getElementById("ailment-description");
    ailmentDisclaimer = document.getElementById("ailment-disclaimer");

    questionsContainer = document.getElementById("questions-container");
    question = document.getElementById("question");
    trueButton = document.getElementById("true-button");
    falseButton = document.getElementById("false-button");
    previousButton = document.getElementById("previous-button");

    ailments = requestJSON("GET", "/ailments/");

    questions = requestJSON("GET", `/questions/${ailments[ailmentSelected]["aid"]}/`);

    for (let i = 0; i < 4; i++) {
        navOption = document.createElement("p");
        navOption.className = "nav-option";
        navOption.onclick = function () {
            let selected = ailmentSelected + i;

            if (selected >= ailments.length) selected -= ailments.length;

            if (selected != ailmentSelected) {
                ailmentSelected = selected;
                questions = requestJSON("GET", `/questions/${ailments[ailmentSelected]["aid"]}/`);
                setNavbar();
            }

            setQuestionaire();
        }
        navbar.appendChild(navOption);
    }
    navbar.children[0].className = "nav-option-selected";

    previousButton.onclick = function () {
        questionPointer--;

        if (questionPointer <= -1) questionPointer = 0;

        question.innerHTML = questions[questionPointer]["question"];
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
