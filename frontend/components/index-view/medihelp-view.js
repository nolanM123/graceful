import { Component } from "/frontend/gracefuljs/graceful.js";
import { } from "/frontend/components/index-view/ailments-view.js";
import { } from "/frontend/components/index-view/questions-view.js";
import { } from "/frontend/components/index-view/products-view.js";


class MedihelpView extends Component {
    ready() {
        super.ready();
    }

    async update() {
        super.update();

        this.props.ailmentsView.ailments = await fetch(
            "/ailments",
            { method: "GET" }
        ).then(response => response.json())

        this.props.ailmentsView.updated = async () => {
            this.props.questionsView.questions = await fetch(
                `/questions?aid=${this.props.ailmentsView.ailment["aid"]}`,
                { method: "GET" }
            ).then(response => response.json());

            this.props.questionsView.style.display = "block";
            this.props.productsView.style.display = "none";
        };

        this.props.questionsView.updated = async () => {
            if (!this.props.questionsView.answers.length) {
                return;
            }

            let query = `aid=${this.props.ailmentsView.ailment["aid"]}`;
            for (let i = 0; i < this.props.questionsView.answers.length; i++) {
                query += `&qid${i+1}=${this.props.questionsView.answers[i]}`;
            }

            this.props.productsView.products = await fetch(
                `/products?${query}`,
                { method: "GET" }
            ).then(response => response.json());

            this.props.MedihelpView[0].scrollTo({ top: 0, behavior: 'smooth' });
            this.props.questionsView.style.display = "none";
            this.props.productsView.style.display = "block";
        }

        this.props.productsView.updated = () => {
            this.props.MedihelpView[0].scrollTo({ top: 0, behavior: 'smooth' });
            this.props.questionsView.style.display = "block";
            this.props.productsView.style.display = "none";
        };

        this.props.ailmentsView.updated();
    }

    render() {
        super.render();

        return `
            <ailments-view id="ailmentsView"></ailments-view>
            <questions-view id="questionsView"></questions-view>
            <products-view id="productsView"></products-view>
        `;
    }
}

customElements.define("medihelp-view", MedihelpView);


window.onload = () => {
    document.body.innerHTML = "<medihelp-view></medihelp-view>"
}
