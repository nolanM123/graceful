import { Component } from "/frontend/gracefuljs/graceful.js";


class UserContainer extends Component{

    ready() {
        super.ready();

        this._user;
    }

    update() {
        super.update();

        this.props.save.addEventListener("click", async () => {
            let requestBody = {
                "uid": this._user["username"],
                "rank": this.props.rank.value,
                "username": this.props.username.value,
                "fname": this.props.fname.value,
                "lname": this.props.lname.value
            };

            await fetch(
                `/users`,
                { 
                    method: "PUT",
                    body: JSON.stringify(requestBody)
                }
            );
        });

        this.props.reset.addEventListener("click", () => {
            this.user = this.user;
        });

        this.props.delete.addEventListener("click", () => {
            this.destroy();
        });
    }

    render() {
        super.render();

        return `
            <input type="number" id="rank" name="rank" min="0" max="99" placeholder="Rank"/>
            <input type="email" id="username" name="username" placeholder="Username"/>
            <input type="text" id="fname" name="fname" placeholder="First Name"/>
            <input type="text" id="lname" name="lname" placeholder="Last Name"/><br><br>
            <input type="button" id="save" value="save"/>
            <input type="button" id="reset" value="reset"/>
            <input type="button" id="delete" value="delete"/>
        `;
    }

    set user(newUser) {
        this._user = newUser;
        this.props.rank.value = this._user["rank"];
        this.props.username.value = this._user["username"];
        this.props.fname.value = this._user["fname"];
        this.props.lname.value = this._user["lname"];
    }

    get user() {
        return this._user;
    }
}

customElements.define("user-container", UserContainer);
