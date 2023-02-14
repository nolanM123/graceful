import { Component } from "/frontend/gracefuljs/graceful.js";
import {} from "/frontend/components/index-view/product-container.js";


class ProductsView extends Component{

    ready() {
        super.ready();

        this._products = [];
    }

    update() {
        super.update();

        this.props.back.addEventListener("click", () => {
            this.updated();
        });
        
        if (this.products.length) {
            this.props.productContainers.forEach((prop, i) => {
                prop.product = this.products[i];
            });
        }
    }

    render() {
        super.render();

        return `
            <button id="back">Back</button>
            ${Array.from({ length: this.products.length }, () => {return `<product-container class="productContainers"></product-container>`}).join("\n")}
        `;
    }

    set products(newProducts) {
        this._products = newProducts;
        this.update();
    }

    get products() {
        return this._products;
    }
}

customElements.define("products-view", ProductsView);
