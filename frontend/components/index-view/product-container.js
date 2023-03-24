import { Component } from "/frontend/gracefuljs/graceful.js";


class ProductContainer extends Component{

    ready() {
        super.ready();

        this._product;
    }

    update() {
        super.update();

    }

    render() {
        super.render();

        return `
            <div id="logo">
                <img id="image"></img>
                <a id="url" target="_blank">
                    <button>
                        <img src="/frontend/public/images/globe-icon.svg"></img>
                    </button>
                </a>
            </div>
            <h3 id="name"></h3>
            <p id="description"></p>
            <div id="links">
                <a id="facebook" target="_blank">
                    <div>
                        <img src="/frontend/public/images/facebook-icon.svg"></img>
                        <p>Facebook</p>
                    </div>
                </a>
                <a id="twitter" target="_blank">
                    <div>
                        <img src="/frontend/public/images/twitter-icon.svg"></img>
                        <p>Twitter</p>
                    </div>
                </a>
                <a id="reddit" target="_blank">
                    <div>
                        <img src="/frontend/public/images/reddit-icon.svg"></img>
                        <p>Reddit</p>
                    </div>
                </a>
                <a id="email" target="_blank">
                    <div>
                        <img src="/frontend/public/images/email-icon.svg"></img>
                        <p>Email</p>
                    </div>
                </a>
            </div>
        `;
    }

    set product(newProduct) {
        this._product = newProduct;
        this.props.image.src = this._product["image"];
        this.props.url.href = this._product["url"];
        this.props.name.textContent = this._product["name"];
        this.props.description.textContent = this._product["description"];
        this.props.facebook.href = `https://www.facebook.com/sharer/sharer.php?u=${this._product["url"]}`;
        this.props.twitter.href = `https://twitter.com/share?url=${this._product["url"]}&text=Medihelp suggestion - ${this._product["name"]} @ `;
        this.props.reddit.href = `https://reddit.com/submit?url=${this._product["url"]}&title=Medihelp suggestion - ${this._product["name"]}`;
        this.props.email.href = `mailto:?subject=Medihelp suggestion - ${this._product["name"]}&body=${this._product["url"]}`;
    }

    get product() {
        return this._product;
    }
}

customElements.define("product-container", ProductContainer);
