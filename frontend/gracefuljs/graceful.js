export class Component extends HTMLElement {

    constructor() {
        super();
        this.owner;
        this.props;
        this.ready();
        this.update();
    }

    ready() { 

    }

    render() {

    }

    update() {
        this.props = {}
        this.innerHTML = `<div class="${this.constructor.name}">${this.render()}</div>`

        let elements = [...this.children];
        while (elements.length) {
            let element = elements.pop();
            
            if (element.id) {
                this.props[element.id] = element;
            }

            if (element.className) {
                if (!Array.isArray(this.props[element.className])) {
                    this.props[element.className] = [];
                }
                
                this.props[element.className].push(element);
            }

            if (!(element instanceof Component)) {
                elements = elements.concat([...element.children].reverse());
            } else {
                element.owner = this;
            }
        }
        
        this.updated();
    }

    updated() {

    }

    destroy() {
        if (this.id && this.owner.props[this.id] == this) {
            delete this.owner.props[this.id];
        }

        if (this.className && this.owner.props[this.className]) {
            this.owner.props[this.className].filter(element => element !== this);
        }

        this.parentNode.removeChild(this);
        this.updated();
    }
}