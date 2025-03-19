

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

function isNumeric() {

    var rgx = /\d+/; //'[0-9]+';

    var vEvent = $( "#event" ).val();
    var vCause = $( "#cause" ).val();

    if ( vEvent != "" && !rgx.test(vEvent) ) {
        $( "#sp" ).text("event");
        $( "#alert" ).attr("hidden", false);
    }
    else if ( vCause != "" && !rgx.test(vCause) ) {
        $( "#sp" ).text("cause");
        $( "#alert" ).attr("hidden", false);
    }
    else {
        $( "#alert" ).attr("hidden", true);
        $( "#findSubmit" ).attr("disabled", false);
    }
/*
    if ( ! rgx.test(ob.value) ) {
        $( "#alert" ).attr("hidden", false);
        $( "#sp" ).text(ob.name);
        //document.getElementById("alert").hidden = false;
    }
    else {
        $( "#alert" ).attr("hidden", true);
        //document.getElementById("alert").hidden = true;
    }
    return;
*/
}
