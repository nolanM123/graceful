import { Component } from "/frontend/gracefuljs/graceful.js";


class AilmentNavbar extends Component {

    ready() {
        super.ready();

        this._index = 0;
        this._shown = 4;
        this._offset = 0;
        this._options = [];
    }

    update() {
        super.update();

        if (!this.options.length) {
            return;
        }

        this.props.prev.addEventListener("click", () => this.offset -= 1);
        this.props.next.addEventListener("click", () => this.offset += 1);
        this._setNavButtons();

        let j = this.offset;
        for (let i = 0; i < this.props.NavButtons.length; i++) {
            if (j >= this.options.length)
                j = 0;

            this.props.NavButtons[i].addEventListener("click", () => {
                let newIndex = this.offset + i;

                if (newIndex >= this.options.length)
                    newIndex -= this.options.length;
        
                if (newIndex != this.index) {
                    this.index = newIndex;
                    this._setNavButtons();
                    this.updated();
                }
            });

            j++;
        }
    }

    render() {
        super.render();

        return `
            <button id="prev"><img src="/frontend/public/images/angle-left.svg" /></button>
            ${Array.from({ length: Math.min(this.shown, this.options.length) }, () => {return `<button class="NavButtons"></button>`}).join("\n")}
            <button id="next"><img src="/frontend/public/images/angle-right.svg" /></button>
        `;
    }

    _setNavButtons() {
        if (this.shown <= 0)
            return;

        let j = this.offset;
        for (let i = 0; i < this.props.NavButtons.length; i++) {
            if (j >= this.options.length) {
                j = 0;
            }
            
            if (j == this.index) {
                this.props.NavButtons[i].className = "NavButtons selected";
            } else {
                this.props.NavButtons[i].className = "NavButtons";
            }

            this.props.NavButtons[i].textContent = this.options[j];
            j++;
        }
    }

    set index(newIndex) {
        if (newIndex == this._index)
            return;
        
        this._index = newIndex;
        this._setNavButtons();
    }

    get index() {
        return this._index;
    }

    set offset(newOffset) {
        this._offset = newOffset;

        if (this._offset < 0)
            this._offset = this.options.length - 1;

        if (this._offset >= this.options.length)
            this._offset = 0;
        
        this._setNavButtons();
    }

    get offset() {
        return this._offset;
    }

    set shown(shown) {
        this._shown = shown;
        this.update();
    }

    get shown() {
        return this._shown;
    }

    set options(newOptions) {
        let oldOptions = this._options;
        this._options = newOptions;

        if (oldOptions.length < this.shown && this._options.length != oldOptions.length)
            this.update();

        else
            this._setNavButtons();
    }

    get options() {
        return this._options;
    }
}

customElements.define("ailment-navbar", AilmentNavbar);
