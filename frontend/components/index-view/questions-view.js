import { Component } from "/frontend/gracefuljs/graceful.js";
import {} from "/frontend/components/index-view/question-container.js";


class QuestionsView extends Component {

    ready() {
        super.ready();

        this._questions = [];
        this.answers = [];
    }

    update() {
        super.update();

        if (!this.questions.length) {
            return;
        }

        this.props.submit.addEventListener("click", () => {
            for (let i = 0; i < this.props.questionContainers.length; i++) {
                if (this.props.questionContainers[i].answer == "None") {
                    this.props.questionContainers[i].scrollIntoView({behavior: 'smooth'});
                    return;
                }
            }

            this.updated();
        });

        this.props.questionContainers.forEach((prop, i) => {
            prop.question = this.questions[i];
            prop.updated = () => { this.answers[i] = prop.answer; }
        });
    }

    render() {
        super.render();

        return `
            <button id="submit">Done</button>
            ${Array.from({ length: this.questions.length }, () => {return `<question-container class="questionContainers"></question-container>`}).join("\n")}
        `;
    }

    set questions(newQuestions) {
        this._questions = newQuestions;
        this.answers = [];
        this.update();
    }

    get questions() {
        return this._questions;
    }
}

customElements.define("questions-view", QuestionsView);
