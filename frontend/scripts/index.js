import { requestJSON } from "./request.js";

let navbar;
let ailmentDescription;
let ailmentDisclaimer;

let questionsContainer;
let progressBar;
let tooltip;
let question;
let trueButton;
let falseButton;

let resultsContainer;

let backButton;

let ailments = new Array();
let ailmentSelected = 0;

let questions = new Array();
let questionPointer = -1;

let results = new Array();

function animateProgressBar() {
    let id = setInterval(frame, 4);
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

            let resultSeperator = document.createElement("div");
            resultSeperator.className = "result-seperator";
            resultContainer.appendChild(resultSeperator);

            let resultIcon = document.createElement("div");
            resultIcon.className = "result-icon";
            resultContainer.appendChild(resultIcon);

            let resultImage = document.createElement("img");
            resultImage.className = "result-image";
            resultImage.src = results[i]["image"];
            resultImage.onerror = function () { resultImage.style.display = "none"; }
            resultIcon.appendChild(resultImage);

            let url = document.createElement("a");
            url.href = results[i]["url"];
            url.target = "_blank";
            let resultUrl = document.createElement("button");
            resultUrl.className = "result-url";
            resultUrl.innerHTML = "Vist Page";
            url.appendChild(resultUrl);
            resultContainer.appendChild(url);

            let resultShare = document.createElement("button");
            resultShare.className = "result-share";
            resultShare.innerHTML = "Share";
            let shareContainer = document.createElement("div");
            shareContainer.className = "share-container";
            resultShare.appendChild(shareContainer);
            resultContainer.appendChild(resultShare);

            let twitterUrl = document.createElement("a");
            twitterUrl.href = `https://twitter.com/share?url=${results[i]["url"]}&text=medihelp suggestion - ${results[i]["name"]} @ `;
            twitterUrl.target = "_blank";
            twitterUrl.innerHTML = "Twitter";
            shareContainer.appendChild(twitterUrl);

            let facebookUrl = document.createElement("a");
            facebookUrl.href = `https://www.facebook.com/sharer/sharer.php?u=${results[i]["url"]}`;
            facebookUrl.target = "_blank";
            facebookUrl.innerHTML = "Facebook";
            shareContainer.appendChild(facebookUrl);

            let redditUrl = document.createElement("a");
            redditUrl.href = `https://reddit.com/submit?url=${results[i]["url"]}&title=medihelp suggestion - ${results[i]["name"]}`;
            redditUrl.target = "_blank";
            redditUrl.innerHTML = "Reddit";
            shareContainer.appendChild(redditUrl);

            let emailUrl = document.createElement("a");
            emailUrl.href = `mailto:?subject=medihelp suggestion - ${results[i]["name"]}&body=${results[i]["url"]}`;
            emailUrl.target = "_blank";
            emailUrl.innerHTML = "Email";
            shareContainer.appendChild(emailUrl);

            let resultTitle = document.createElement("h2");
            resultTitle.className = "result-title";
            resultTitle.innerHTML = results[i]["name"];
            resultContainer.appendChild(resultTitle);

            let resultDescription = document.createElement("p");
            resultDescription.className = "result-description";
            if (results[i]["description"]) resultDescription.innerHTML = results[i]["description"];
            else resultDescription.innerHTML = "No Description.";
            resultContainer.appendChild(resultDescription);
        }
    } else {
        question.innerHTML = questions[questionPointer]["question"] + "*";
        tooltip.innerHTML = questions[questionPointer]["description"];
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
    tooltip = document.getElementById("tooltip");
    question = document.getElementById("question");
    question.onmouseenter = function() {
        tooltip.style.visibility = "visible";
    }
    question.onmouseleave = function() {
        tooltip.style.visibility = "hidden";
    }
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
