// ailment attributes
var ailmentIndex = 0;
var ailmentSelected = 0;
var ailments = [];
// ailment elements
var leftArrow;
var rightArrow;
var ailmentButtons = [];

//description elements
var title;
var description;
var disclaimer;

// questionaire attributes
var questionIndex = 0;
var questions = [];
// questionaire elements
var questionsContainer;
var questionLabel;
var previousButton;
var trueButton;
var falseButton;

// product elements
var productsContainer;


function request(method, url, body = "", async = false) {
    let xml = new XMLHttpRequest();
    xml.open(method, url, async);
    xml.send(body);

    return xml;
};

function requestJSON(method, url, body = "", async = false) {
    return JSON.parse(request(method, url, body, async).responseText);
};

function showSelectedAilments() {
    let i = ailmentIndex;

    for (let j = 0; j < ailmentButtons.length; j++) {
        if (i >= ailments.length) i = 0;

        if (i == ailmentSelected) {
            ailmentButtons[j].style.setProperty("--color", "#FFA800");
            ailmentButtons[j].style.setProperty("--background-color", "#FFF2D8");
        } else {
            ailmentButtons[j].style.setProperty("--color", "#CFCFCF");
            ailmentButtons[j].style.setProperty("--background-color", "transparent");
        };

        i++;
    };
};

function setAilmentButtons() {
    let i = ailmentIndex;

    for (let j = 0; j < ailmentButtons.length; j++) {
        if (i >= ailments.length) i = 0;

        ailmentButtons[j].innerHTML = ailments[i]["name"];
        i++;
    };

    showSelectedAilments();
};

function getQuestion() {
    questionIndex++;

    if (questionIndex == questions.length) {
        questionIndex = 0;
        let params = [];

        for (let i = 0; i < questions.length; i++) {
            params.push(`qid${questions[i]["qid"]}=${questions[i]["isTrue"]}`);
        };

        console.log();
        products = requestJSON("GET", "/products/" + ailments[ailmentSelected]["aid"] + "/?" + params.join("&"));
        showProducts();
    };

    questionLabel.innerHTML = questions[questionIndex]["question"];
};


function showQuestionaire() {
    questionsContainer.style.display = "block";
    productsContainer.style.display = "none";

    // set description elements
    title.innerHTML = ailments[ailmentSelected]["name"];
    description.innerHTML = ailments[ailmentSelected]["description"];
    disclaimer.innerHTML = ailments[ailmentSelected]["disclaimer"];

    // set questionaire elements
    questionLabel.innerHTML = questions[questionIndex]["question"];
};


function showProducts() {
    productsContainer.style.display = "block";
    questionsContainer.style.display = "none";

    // set description elements
    title.innerHTML += " Products";
    description.innerHTML = "A modern and minimalist solution to your pharasutical needs - Here are the relevant products from you diagnosis!";

    // set product elements

};


window.onload = function () {
    // get ailment attributes
    ailments = requestJSON("GET", "/ailments/");

    // get ailment elements
    leftArrow = document.getElementById("left-arrow");
    leftArrow.onclick = function () {
        if (ailmentIndex == 0) ailmentIndex = ailments.length;

        ailmentIndex -= 1;
        setAilmentButtons();
    };

    rightArrow = document.getElementById("right-arrow");
    rightArrow.onclick = function () {
        if (ailmentIndex == ailments.length - 1) ailmentIndex = -1;

        ailmentIndex += 1;
        setAilmentButtons();
    };

    let ailmentBar = document.getElementById("ailment-bar");
    for (let i = 0; i < 4; i++) {
        ailmentButtons.push(document.createElement("button"));
        ailmentButtons[i].className = "small-button";
        ailmentButtons[i].onclick = function () {
            // get ailment
            let selected = (i + ailmentIndex) % ailments.length;

            if (selected != ailmentSelected) {
                ailmentSelected = selected;
                questions = requestJSON("GET", `/questions/${ailments[ailmentSelected]["aid"]}/`);
                showSelectedAilments();
            }

            showQuestionaire();
        };

        ailmentBar.insertBefore(ailmentButtons[i], rightArrow);
    };

    // get description elements
    title = document.getElementById("ailment-title");
    description = document.getElementById("ailment-description");
    disclaimer = document.getElementById("ailment-disclaimer");

    // get questionaire attributes
    questions = requestJSON("GET", `/questions/${ailments[ailmentSelected]["aid"]}/`);

    // get quetionaire elements
    questionsContainer = document.getElementById("questions-container");
    questionLabel = document.getElementById("ailment-question");
    previousButton = document.getElementById("previous-button");
    previousButton.onclick = function () {
        if (questionIndex > 0) {
            questionIndex -= 1;
            questionLabel.innerHTML = questions[questionIndex]["question"];
        };
    };

    trueButton = document.getElementById("true-button");
    trueButton.onclick = function () {
        questions[questionIndex]["isTrue"] = "True";
        getQuestion();
    };

    falseButton = document.getElementById("false-button");
    falseButton.onclick = function () {
        questions[questionIndex]["isTrue"] = "False";
        getQuestion();
    };

    // get products elements
    productsContainer = document.getElementById("products-container");

    // start
    setAilmentButtons();
    showSelectedAilments();
    showQuestionaire();
};
