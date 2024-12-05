import $ from 'jquery';

class MyNotes {
    constructor(){
        this.events();
    }
    events(){
        $(".delete-note").on("click", this.deleteNote);
    }
    // Methods
    deleteNote(){
        alert("Delete Note?");
    }
}

export default MyNotes;