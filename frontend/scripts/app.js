function getQuestions(async)
{
	var request = new XMLHttpRequest();
	request.open("GET", "/questions/1/", async);
	request.send();

	return JSON.parse(request.responseText);
};

window.onload = function() 
{
	let questions = getQuestions(false);
	const root = document.getElementById("root")
	
	for (let i = 0; i < questions.length; i++)
	{
		let p = document.createElement("p");
		p.innerHTML = questions[i]["question"]
		root.appendChild(p);
	};
};
