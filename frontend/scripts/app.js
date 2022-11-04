// ailment attributes
var ailmentIndex = 0;
var ailmentSelected = 0;
var ailments = [];
// navbar elements
var leftArrow;
var rightArrow;
var ailmentButtons = [];

// description elements
var title;
var description;
var disclaimer;

// questionaire attributes
var questionIndex = 0;
var questions = [];
var results = []
// questionaire elements
var questionLabel;
var previousButton;
var trueButton;
var falseButton;


function request(method, url, body="", async=false)
{
    let xml = new XMLHttpRequest();
    xml.open(method, url, async);
    xml.send(body);
    
    return xml
};


function showSelectedAilments()
{
    let i = ailmentIndex;

    for (let j = 0; j < ailmentButtons.length; j++)
    {
        if (i >= ailments.length) i = 0;

        if (i == ailmentSelected)
        {
            ailmentButtons[j].style.setProperty("--color", "#FFA800");
            ailmentButtons[j].style.setProperty("--background-color", "#FFF2D8");
        }
        else
        {
            ailmentButtons[j].style.setProperty("--color", "#CFCFCF");
            ailmentButtons[j].style.setProperty("--background-color", "transparent");
        }

        i++;
    };
};


function setAilmentButtons() 
{
    let i = ailmentIndex;

    for (let j = 0; j < ailmentButtons.length; j++) 
    {
        if (i >= ailments.length) i = 0;

        ailmentButtons[j].innerHTML = ailments[i]["name"];
        i++;
    };

    showSelectedAilments();
};


window.onload = function() 
{
    // get ailment attributes
    ailments = JSON.parse(request("GET", "/ailments/").responseText)
    // get ailment elements
    leftArrow = document.getElementById("left-arrow");
    leftArrow.onclick = function()
    {
        if (ailmentIndex == 0) ailmentIndex = ailments.length;

        ailmentIndex -= 1;
        setAilmentButtons();
    };
    rightArrow = document.getElementById("right-arrow");
    rightArrow.onclick = function()
    {
        if (ailmentIndex == ailments.length - 1) ailmentIndex = -1;

        ailmentIndex += 1;
        setAilmentButtons();
    };
    let ailmentBar = document.getElementById("ailment-bar");
    for (let i = 0; i < 4; i++)
    {
        ailmentButtons.push(document.createElement("button"));
        ailmentButtons[i].className = "small-button";
        ailmentButtons[i].onclick = function()
        {
            // get ailment
            ailmentSelected = (i + ailmentIndex) % ailments.length;
            let ailmentJSON = ailments[ailmentSelected];

            // set ailment elements
            showSelectedAilments();

            // set description elements
            title.innerHTML = ailmentJSON["name"];
            description.innerHTML = ailmentJSON["description"];
            disclaimer.innerHTML = ailmentJSON["disclaimer"];

            // set questionaire attributes
            questions = JSON.parse(request("GET", `/questions/${ailmentJSON["aid"]}/`).responseText)
            questionLabel.innerHTML = questions[questionIndex]["question"];
        };

        ailmentBar.insertBefore(ailmentButtons[i], rightArrow);
    };

    // get description elements
    title = document.getElementById("ailment-title");
    description = document.getElementById("ailment-description");
    disclaimer = document.getElementById("ailment-disclaimer");

    // get quetionaire elements
    questionLabel = document.getElementById("ailment-question");
    previousButton = document.getElementById("previous-button");
    trueButton = document.getElementById("true-button");
    trueButton.onclick = function()
    {
    };
    falseButton = document.getElementById("false-button");
    falseButton.onclick = function()
    {
    };

    // start
    setAilmentButtons();
    ailmentButtons[ailmentSelected].click();
};
