import { Component } from "/frontend/gracefuljs/graceful.js";


class QuestionContainer extends Component {

    ready() {
        super.ready();

        this.answer = "None";
        this._question;
    }

    update() {
        super.update();

        this.props.true.addEventListener("click", () => {
            this.answer = "True";
            this.props.false.className = "";
            this.props.true.className = "selected";
            this.updated();
        });
        this.props.false.addEventListener("click", () => {
            this.answer = "False";
            this.props.false.className = "selected";
            this.props.true.className = "";
            this.updated();
        });
        this.props.hint.addEventListener("click", () => {
            if (this.props.tooltip.style.display == "block") {
                this.props.tooltip.style.display = "none";
            } else {
                this.props.tooltip.style.display = "block";
            }
        });
    }

    render() {
        super.render();

        return `
            <div id="prompt">
                <h2 id="label"></h2>
                <button id="hint">?</button>
            </div>
            <div id="tooltip"></div>
            <button id="true">Yes</button>
            <button id="false">No</button>
        `;
    }

    set question(newQuestion) {
        this._question = newQuestion;
        this.props.label.textContent = this.question["question"];
        this.props.tooltip.textContent = this.question["description"];
    }

    get question() {
        return this._question;
    }
}

customElements.define("question-container", QuestionContainer);
