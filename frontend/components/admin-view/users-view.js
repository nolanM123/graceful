import { Component } from "/frontend/gracefuljs/graceful.js";
import { } from "/frontend/components/admin-view/user-container.js";


class UsersView extends Component {

    ready() {
        super.ready();

        this._users = [];
    }

    update() {
        super.update();

        if (this.props.UserContainers) {
            this.props.UserContainers.forEach((element, i) => {
                element.user = this.users[i];
            });
        }
    }

    render() {
        super.render();

        return `
            ${Array.from({ length: this.users.length }, () => {return `<user-container class="UserContainers"></user-container>`}).join("\n")}
        `;
    }

    set users(newUsers) {
        this._users = newUsers;
        this.update();
    }

    get users() {
        return this._users;
    }
}

customElements.define("users-view", UsersView);
