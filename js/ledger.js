

/* serve per verificare se jquery funziona
window.onload = function() {
    if (window.jQuery) {  
        // jQuery is loaded  
        alert("Yeah!");
    } else {
        // jQuery is not loaded
        alert("Doesn't Work");
    }
}//*/

function coaList_switch_visibility( ob ) {
    if ($( ob ).next().attr("hidden")) {
        $( ob ).next().removeAttr("hidden");
    }
    else {
        $( ob ).next().attr("hidden", "true");
    }
}

function get_id( ob ) {
    return $( ob ).parent().parent().parent().prev().children().first().text();
}

function coaList_modify( ob ) {
    alert( $( ob ).parent().parent().parent().prev().children().first().text() );
    og2 = $( ob ).parent().parent().parent().prev();
    og2.css({"background-color": "#9d9"});
    og2.children().first().css({"background-color": "#d99"})
    //og3 = $( ob ).parent().parent().parent().prev().find().first().css({"background-color": "#99d"});
}

function checkNumeric() {

    var rgx = /\d+/; // aka --> '[0-9]+';

    var vEvent = $( "#event" ).val();
    var vCause = $( "#cause" ).val();
    var isDisabled = true;

    if ( vEvent != "" && !rgx.test(vEvent) ) {
        $( "#sp" ).text("event");
        $( "#alert" ).attr("hidden", false);
        isDisabled = true;
    }
    else if ( vCause != "" && !rgx.test(vCause) ) {
        $( "#sp" ).text("cause");
        $( "#alert" ).attr("hidden", false);
        isDisabled = true;
    }
    else {
        $( "#alert" ).attr("hidden", true);
        isDisabled = false;
    }

    if ( vEvent == "" || vCause == "" ) {
        isDisabled = true;
    }

    $( "#findSubmit" ).attr("disabled", isDisabled);

}

function btnDetailHover() {
    //$( ob ).css({"background-color": "#def", "font-weight": "bold"});
}

function btnDetailLeave(idvalue) {

}
