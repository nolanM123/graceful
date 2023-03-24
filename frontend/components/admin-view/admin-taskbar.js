import { Component } from "/frontend/gracefuljs/graceful.js";


class AdminTaskbar extends Component {

    ready() {
        super.ready();

        this._index = 0;
        this._toggled = false;
    }

    update() {
        super.update();

        this.props.toggle.addEventListener("click", () => {
            if (this._toggled) {
                this.header.style.borderBottom = "0.2em solid var(--tertiary)";
                this.props.toggle.style.float = "right";
                this.AdminTaskbar[0].style.width = "20%";

                for (let i = 0; i < this.props.toggled.length; i++) {
                    this.props.toggled[i].style.display = "block";
                }
            } else {
                this.header.style.borderBottom = "0";
                this.props.toggle.style.float = "none";
                this.AdminTaskbar[0].style.width = "3.6em";

                for (let i = 0; i < this.props.toggled.length; i++) {
                    this.props.toggled[i].style.display = "none";
                }
            }

            this._toggled = !this._toggled;
            this.updated();
        });

        for (let i = 0; i < this.props.TaskButtons.length; i++) {
            this.props.TaskButtons[i].addEventListener("click", () => {
                if (i == this.index) {
                    return;
                }

                this.index = i;
                this._setTaskButtons();
                this.updated();
            });
        }

        this._setTaskButtons();
    }

    render() {
        super.render();

        return `
            <div id="header">
                <img id="toggle" src="/frontend/public/images/menu-icon.svg"></img>
                <a href=""><h2 class="Toggled">Medihelp</h2></a>
                <p id="username" class="Toggled">Welcome, Nolan McAllister</p>
            </div>
            <div class="TaskButtons">
                <img src="/frontend/public/images/user-icon.svg"></img>
                <h3 class="Toggled">Users</h3>
            </div>
            <div class="TaskButtons">
                <img src="/frontend/public/images/search-icon.svg"></img>
                <h3 class="Toggled">Ailments</h3>
            </div>
            <div class="TaskButtons">
                <img src="/frontend/public/images/question-icon.svg"></img>
                <h3 class="Toggled">Questions</h3>
            </div>
            <div class="TaskButtons">
                <img src="/frontend/public/images/list-icon.svg"></img>
                <h3 class="Toggled">Formulas</h3>
            </div>
            <div class="TaskButtons">
                <img src="/frontend/public/images/giving-icon.svg"></img>
                <h3 class="Toggled">Products</h3>
            </div>
        `;
    }

    _setTaskButtons() {
        for (let i = 0; i < this.props.TaskButtons.length; i++) {
            if (i == this.index) {
                this.props.TaskButtons[i].className = "TaskButtons selected";
            } else {
                this.props.TaskButtons[i].className = "TaskButtons";
            }
        }
    }

    set index(newIndex) {
        if (newIndex > 4) {
            newIndex = 4;
        }

        this._index = newIndex;
        this._setTaskButtons();
    }

    get index() {
        return this._index;
    }
}

customElements.define("admin-taskbar", AdminTaskbar);
