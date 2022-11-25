let navbar;
let ailmentDescription;
let ailmentDisclaimer;

let questionsContainer;
let progressBar;
let question;
let trueButton;
let falseButton;

let resultsContainer;

let productsContainer;

let backButton;

let ailments = new Array();
let ailmentSelected = 0;

let questions = new Array();
let questionPointer = -1;

let results = new Array();

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
    resultsContainer.style.display = "none";
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

        results = requestJSON("GET", `/products/${ailments[ailmentSelected]["aid"]}/?${params.join("&")}`);

        questionsContainer.style.display = "none";
        resultsContainer.style.display = "block";
        resultsContainer.innerHTML = "";
        ailmentDescription.innerHTML = `There are ${results.length} results based on your answers from the ${ailments[ailmentSelected]["name"].toLowerCase()} questionaire.`;
        ailmentDisclaimer.innerHTML = ailments[ailmentSelected]["disclaimer"];

        for (let i = 0; i < results.length; i++) {
            let resultContainer = document.createElement("div");
            resultContainer.className = "result-container";
            resultsContainer.appendChild(resultContainer);

            let resultIcon = document.createElement("div");
            resultIcon.className = "result-icon";
            resultContainer.appendChild(resultIcon);

            let resultImage = document.createElement("img");
            resultImage.className = "result-image";
            resultImage.src = results[i]["url"];
            resultImage.onerror = function () {resultImage.style.display = "none";}
            resultIcon.appendChild(resultImage);

            let link = document.createElement("a");
            link.href = results[i]["link"];
            link.target = "_blank";
            let resultLink = document.createElement("button");
            resultLink.id = "result-link"
            resultLink.className = "result-button";
            resultLink.innerHTML = "Vist Page";
            link.appendChild(resultLink);
            resultContainer.appendChild(link);

            let resultAddButton = document.createElement("button");
            resultAddButton.id = "result-add";
            resultAddButton.className = "result-button";
            resultAddButton.innerHTML = "Add";
            resultContainer.appendChild(resultAddButton);

            let resultTitle = document.createElement("h2");
            resultTitle.className = "result-title";
            resultTitle.innerHTML = results[i]["name"];
            resultContainer.appendChild(resultTitle);

            let resultDescription = document.createElement("p");
            resultDescription.className = "result-description";
            resultDescription.innerHTML = results[i]["description"];
            resultContainer.appendChild(resultDescription);

            let resultSeperator = document.createElement("div");
            resultSeperator.className = "result-seperator";
            resultContainer.appendChild(resultSeperator);
        }

        let resultOcclusion = document.createElement("div");
        resultOcclusion.className = "result-occlusion";
        resultsContainer.appendChild(resultOcclusion);
    } else {
        let tooltip = `*<span id="tooltip-text">${questions[questionPointer]["description"]}</span>`
        question.innerHTML = questions[questionPointer]["question"] + tooltip;
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

    resultsContainer = document.getElementById("results-container");

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
