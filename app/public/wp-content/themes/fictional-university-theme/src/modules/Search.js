import $ from 'jquery';

class Search {
    // 1. Describe & create/initiate an object
    constructor(){
        this.openButton = $(".js-search-trigger");
        this.closeButton =  $(".search-overlay__close");
        this.searchOverlay =  $(".search-overlay");

        this.isOverlayOpen = false;

        this.events(); // call "events" method
    }

    // 2. Events 
    events(){
        this.openButton.on("click", this.openOverlay.bind(this));
        this.closeButton.on("click", this.closeOverlay.bind(this));
        $(document).on("keydown", this.keyPressDispatcher.bind(this));
    }

    // 3. Methods (functions, action..)
    keyPressDispatcher(e){
       if (e.keyCode == 83 && !this.isOverlayOpen) {
        this.openOverlay();
       }
       if (e.keyCode == 27 && this.isOverlayOpen) {
        this.closeOverlay();
       }
    }
    openOverlay() {
        this.searchOverlay.addClass("search-overlay--active");
        $("body").addClass("body-no-scroll");
        console.log("open method just ran!");
        this.isOverlayOpen = true;
    }
    closeOverlay() {
        this.searchOverlay.removeClass("search-overlay--active");
        $("body").removeClass("body-no-scroll");
        console.log("close method just ran!");
        this.isOverlayOpen = false;
    }
}

export default Search;