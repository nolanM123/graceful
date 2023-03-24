import { Component } from "/frontend/gracefuljs/graceful.js";
import { } from "/frontend/components/admin-view/admin-taskbar.js";
import { } from "/frontend/components/admin-view/users-view.js";


class AdminView extends Component {

    ready() {
        super.ready();
    }

    update() {
        super.update();

        this.props.adminTaskbar.updated = async () => {
            this.props.usersView.style.display = "none";

            switch (this.props.adminTaskbar.index) {
                case 0:
                    this.props.usersView.users = await fetch(
                        `/users`,
                        { method: "GET" }
                    ).then(response => response.json());

                    this.props.usersView.style.display = "block";
                    break;
                case 1:
                    break;
                case 2:
                    break;
                case 3:
                    break;
                case 4:
                    break;
            }
        }

        this.props.adminTaskbar.updated();
    }

    render() {
        super.render();

        return `
            <admin-taskbar id="adminTaskbar"></admin-taskbar>
            <users-view id="usersView"></users-view>
        `;
    }
}

customElements.define("admin-view", AdminView);
