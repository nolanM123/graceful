import { Component } from "/frontend/gracefuljs/graceful.js";
import {} from "/frontend/components/index-view/ailment-navbar.js";


class AilmentsView extends Component {

    ready() {
        super.ready();

        this.ailment;
        this._ailments = [];
    }

    update() {
        super.update();

        if (!this.ailments.length) {
            return;
        }
        
        this.props.navbar.options = this.ailments.map(ailment => ailment.name);
        this.props.navbar.updated = () => {       
            this.ailment = this.ailments[this.props.navbar.index];
            this.props.description.textContent = `A modern and minimalist solution to your pharmaceutical needs - Take this short survey to receive a comprehensive diagnosis of your ${this.ailment["name"].toLowerCase()} needs.`;
            this.props.disclaimer.innerHTML = `<small>${this.ailment["disclaimer"]}</small>`;
            this.updated();
        }
        this.props.navbar.updated();
    }

    render() {
        super.render();

        return `
            <h1><a href="">MediHelp</a></h1>
            <ailment-navbar id="navbar"></ailment-navbar>
            <p id="description"></p>
            <p id="disclaimer"></p>
        `;
    }

    set ailments(newAilments) {
        this._ailments = newAilments;
        this.update();
    }

    get ailments() {
        return this._ailments;
    }
}

customElements.define("ailments-view", AilmentsView);
