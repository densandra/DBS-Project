/* 
 * Globale Variablen
 */
var ajaxCalls = {};
//Maximale Anzahl an Tabellenzeilen
var limit = 100;

/* 
 * Hilfsfunktionen
 */
function errorlog(message) {
    console.log(message);
    // Nachricht zum Server übertragen
    $.ajax({
        type: "POST",
        url: "php/functions.php",
        cache: false,
        timeout: 5000,
        data: {message: message}
    });
}

//HTML für entsprechende Ansicht laden
function loadHTML(ansicht) {
    $.ajax({ 
        type: "POST",
        url: "html/" + ansicht + ".html", 
        cache: false,
        timeout: 5000,
    }).done(function (html) {
        $("#ajax_content").empty().append(html);
        loadViewSettings(ansicht);
    });
}

//Ansichtspezifische Einstellungen laden
function loadViewSettings(ansicht) {
    $(".view").removeClass("active");
    $("#" + ansicht).addClass("active");
    switch(ansicht) {
        case "browse":
            $("#titel_column").addClass("active");
            limit = 100;
            getTable();
            break;
        case "statistics":
            break;
    }
}

// Texte für Tabelle laden
function getTable() {
    // Wie mit Nullwerten bei Tabellensortierung verfahren
    // var nulls = "";
    // if ($("th.active").is("#date_column")) {
    //     nulls = $("th.active").hasClass("nulls_last") ? "NULLS LAST" : "NULLS FIRST";
    // }
    // Tabellenzeilen laden
    ajaxCall("table", {
        action: "load_table",
        autor_filter: $("#autor_filter").val(),
        titel_filter: $("#titel_filter").val(),
        min_a_jahr_filter: $("#min_a_jahr_filter").val(),
        max_a_jahr_filter: $("#max_a_jahr_filter").val(),
        limit: limit,
        // nulls: nulls,
        orderBy: $("th.active").attr("data-sort"), 
        order: $("th.active").hasClass("asc") ? "ASC" : "DESC"
    });
}