

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

function checkNumeric() {

    var rgx = /\d+/; //'[0-9]+';

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
