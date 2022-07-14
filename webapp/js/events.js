/* 
 * Events anmelden
 */

$(function() {
    /* 
     * Bei Page Reload
     */
    loadHTML("browse");

    /* 
     * Navigation Bar
     */
    // Ansicht wechseln
    $("#header").on("click", ".view", function() {
        loadHTML($(this).attr("id"));
        // Unterdrücke Weiterleitung auf HTML-Dokument
        return false;
    });

    /* 
     * Browse Page
     */

    //Wenn th geklickt, Tabelle sortieren
    $("#ajax_content").on("click", ".sortable", function() {
        //Wird bereits aktiver th erneut geklickt, toggle defaultorder
        if ($(this).hasClass("active")) {
            $(this).toggleClass( function() {
                if ($(this).hasClass("nulls_first") || $(this).hasClass("nulls_last")) {
                    return "asc nulls_first desc nulls_last"
                } else { 
                    return "asc desc";
                }
            });
        //Wird inaktiver th geklickt sortiere nach dessen default Sortierung und setze aktiv
        } else {
            $(".sortable").each(function() {
                $(this).attr("class", "sortable " + $(this).attr("data-defaultorder"));
            });
            $(this).addClass("active");           
        }
        //Tabellenzeilen laden
        getTable();
    });

    //Filter Tabellenzeilen, wenn in Filter getippt wird
    $("#ajax_content").on("input", ".filter", function() {
        limit = 50;
        getTable();
    });

    $("#ajax_content").on("click", "#loadmore", function() {
        limit += 50;
        getTable();
    });
})   