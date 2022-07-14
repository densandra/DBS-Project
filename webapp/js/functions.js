/* 
 * Globale Variablen
 */
var ajaxCalls = {};
//Maximale Anzahl an Tabellenzeilen
var limit = 50;

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
            $("#device_column").addClass("active");
            limit = 50;
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
        device_filter: $("#device_filter").val(),
        hersteller_filter: $("#hersteller_filter").val(),
        ar_vs_vr_filter: $("#ar_vs_vr_filter").val(),
        min_h_jahr_filter: $("#min_h_jahr_filter").val(),
        max_h_jahr_filter: $("#max_h_jahr_filter").val(),
        min_h_preis_filter: $("#min_h_preis_filter").val(),
        max_h_preis_filter: $("#max_h_preis_filter").val(),
        display_filter: $("#display_filter").val(),
        doi_filter: $("#doi_filter").val(),
        autor_filter: $("#autor_filter").val(),
        titel_filter: $("#titel_filter").val(),
        min_a_jahr_filter: $("#min_a_jahr_filter").val(),
        max_a_jahr_filter: $("#max_a_jahr_filter").val(),
        journal_filter: $("#journal_filter").val(),
        typ_filter: $("#typ_filter").val(),
        quelle_filter: $("#quelle_filter").val(),
        limit: limit,
        // nulls: nulls,
        orderBy: $("th.active").attr("data-sort"), 
        order: $("th.active").hasClass("asc") ? "ASC" : "DESC"
    });
}