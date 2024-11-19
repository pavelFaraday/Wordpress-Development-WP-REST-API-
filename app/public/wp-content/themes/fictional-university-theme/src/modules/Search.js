import $ from 'jquery';

class Search {
    // 1. Describe & create/initiate an object
    constructor(){
        this.resultsDiv = $("#search-overlay__results");
        this.openButton = $(".js-search-trigger");
        this.closeButton =  $(".search-overlay__close");
        this.searchOverlay =  $(".search-overlay");
        this.isOverlayOpen = false;
        this.searchField = $("#search-term");
        this.typingTimer;
        this.events(); // call "events" method
        this.isSpinnerVisible = false;
        this.previousValue;
    }

    // 2. Events 
    events(){
        this.openButton.on("click", this.openOverlay.bind(this));
        this.closeButton.on("click", this.closeOverlay.bind(this));
        $(document).on("keydown", this.keyPressDispatcher.bind(this));
        this.searchField.on("keyup", this.typeInLogic.bind(this));
    }

    // 3. Methods (functions, action..)
    typeInLogic() {
        if (this.searchField.val() != this.previousValue) {
            clearTimeout(this.typingTimer);

            if (this.searchField.val()) {
                if (!this.isSpinnerVisible) {
                    this.resultsDiv.html("<div class='spinner-loader'>");
                    this.isSpinnerVisible = true;
                } 
                this.typingTimer = setTimeout(this.getResults.bind(this), 2000);
            } else {
                this.resultsDiv.html("");
                this.isSpinnerVisible = false;
            }


        }
        this.previousValue = this.searchField.val(); 
    }
    getResults() {
        $.getJSON('http://localhost:10033/wp-json/wp/v2/posts?search=' + this.searchField.val(), (posts) => {
            alert(posts[0].title.rendered);
        });
    }
    keyPressDispatcher(e){
       if (e.keyCode == 83 && !this.isOverlayOpen && !$("input, textarea").is(":focus")) {
        this.openOverlay();
       }
       if (e.keyCode == 27 && this.isOverlayOpen) {
        this.closeOverlay();
       }
    }
    openOverlay() {
        this.searchOverlay.addClass("search-overlay--active");
        $("body").addClass("body-no-scroll");
        this.isOverlayOpen = true;
    }
    closeOverlay() {
        this.searchOverlay.removeClass("search-overlay--active");
        $("body").removeClass("body-no-scroll");
        this.isOverlayOpen = false;
    }
}

export default Search;