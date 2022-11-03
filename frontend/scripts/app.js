// attributes
var ailmentIndex = 0;
var ailmentSelected = 0;
var ailments;

var questionIndex = 0;
var questions;
var results = []

// elements
var questionBox;
var previousButton;
var trueButton;
var falseButton;

var title;
var description;
var disclaimer;

var leftArrow;
var rightArrow;
var ailmentButtons;


function getRange(list, start, range) 
{
    let i = start;
    let newList = [];

    for (let _ = 0; _ < range; _++) 
    {
        if (i >= list.length) 
        {
            i = 0;
        };

        newList.push(list[i]);
        i++;
    };

    return newList
};


function setAilmentButtons(length)
{
    let activeAilments = getRange(ailments, ailmentIndex, length);

    for (let i = 0; i < activeAilments.length; i++)
    {
        ailmentButtons[i].innerHTML = activeAilments[i]["name"];
    };
}


window.onload = function() 
{
    // get elements
    questionBox = document.getElementById("question-box");
    previousButton = document.getElementById("previous-button");
    trueButton = document.getElementById("true-button");
    falseButton = document.getElementById("false-button");

    title = document.getElementById("ailment-title");
    description = document.getElementById("ailment-description");
    disclaimer = document.getElementById("ailment-disclaimer");

    leftArrow = document.getElementById("left-arrow");
    rightArrow = document.getElementById("right-arrow");
    ailmentButtons = [
        document.getElementById("ailment-b1"),
        document.getElementById("ailment-b2"),
        document.getElementById("ailment-b3"),
        document.getElementById("ailment-b4"),
    ];

    for (let i = 0; i < 4; i++)
    {
        ailmentButtons[i].onclick = function()
        {
            ailmentSelected = ailmentIndex + i % ailments.length;
            let ailment = ailments[ailmentSelected];

            let req = new XMLHttpRequest();
            req.open("GET", `/questions/${ailment["aid"]}/`, false);
            req.send();

            questions = JSON.parse(req.responseText)

            title.innerHTML = ailment["name"];
            description.innerHTML = ailment["description"];
            disclaimer.innerHTML = ailment["disclaimer"];

            for (let j = 0; j < 4; j++) {
                if (j != i) 
                {
                    ailmentButtons[j].style.setProperty("--color", "#CFCFCF");
                    ailmentButtons[j].style.setProperty("--background-color", "transparent");
                }
                else
                {
                    ailmentButtons[j].style.setProperty("--color", "#FFA800");
                    ailmentButtons[j].style.setProperty("--background-color", "#FFF2D8");
                };
            };
        };
    };

    // get ailments
    let req = new XMLHttpRequest();
    req.open("GET", "/ailments/", false);
    req.send();

    ailments = JSON.parse(req.responseText);

    // set elements
    setAilmentButtons(4);

    // start
    ailmentButtons[0].click();
};
