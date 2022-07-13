/*
 * Servercall absetzen
 */

function ajaxCall(name, requestData) {
    // Falls bereits eine Abfrage existiert diese abbrechen
    if (ajaxCalls[name] != undefined) {
        ajaxCalls[name].abort();
    }
    ajaxCalls[name] = $.ajax({
        type: "POST",
        url: "php/" + name + ".php",
        cache: false,
        timeout: 5000,
        data: requestData
    // Antwort
    }).done(function(returnData) {
        // lässt sich Antwort parsen?
        var dataParts = returnData.split(/:(.+)/, 2);
        if (dataParts.length == 2) {
            try {
                returnData = {code: dataParts[0], data: JSON.parse(dataParts[1])};
                console.log(returnData.data);
            } catch (e) {
                returnData = {code: "NOJSON", data: returnData};
            }
        } else {
            returnData = {code: "NOJSON", data: returnData};
        }

        // Serverseitiger Fehler
        if (returnData.hasOwnProperty("code") && returnData.code == "ERROR") {
            returnFromAjax(name, {error: true, code: 550, returnData: returnData.data});       
        // Success
        } else if (returnData.hasOwnProperty("code") && returnData.code == "OK") {
            returnFromAjax(name, {error: false, code: 200, returnData: returnData.data});
        // Antwort konnte nicht geparst werden
        } else if (returnData.hasOwnProperty("code") && returnData.code == "NOJSON") {
            errorlog("Konnte nicht geparst werden: " + returnData.data);
            returnFromAjax(name, {error: true, code: "NOJSON", returnData: returnData});
        } else {
            errorlog("Beim Ajaxcall ist ein Fehler aufgetreten: " + returnData.data);
        }
    // keine Antwort
    }).fail(function(jqXHR) {
        if (jqXHR.statusText != "abort") {
            errorlog("Ajax fail! Code: " + jqXHR.status + ", statusText: " + jqXHR.statusText + ", requestData: " + JSON.stringify(requestData));
            returnFromAjax(name, {error: true, code: jqXHR.status, returnData: jqXHR.statusText});
        }
    });
}

/*
* Antwort des Servercalls bearbeiten
*/

function returnFromAjax(name, outputData) {
    //Fehler bei Übertragung
    if (outputData["error"]) { 
        //Serverfehler oder Antwort nicht parsbar
        if (outputData["code"] == 550 || outputData["code"] == "NOJSON") {
            alert("Serverfehler!"); 
        //Ajax fail
        } else {
            //Timeout
            if (outputData["returnData"] == "timeout") {
                alert("Die Kommunikation mit dem Server war nicht möglich (Zeitüberschreitung)!");
            } else {
                alert("Error " + outputData["code"] + ": " + outputData["returnData"]);
            }
        }
    //kein Fehler
    } else {
        var returnData = outputData["returnData"];
        switch (name) {
            case "table":
                if (returnData["action"] == "load_table") {
                    //Tabellenzeilen entfernen
                    $(".row, .loadmore").remove();
                    //Zeilen anhängen
                    for (var row of returnData["table_rows"]) {
                        $("table").append(row);
                    }
                    $(".info-text").html("( weitere 100 Ergebnisse laden !image )", {"!image": "<img src=\"images/load.png\" />"});
                } 
                break;
        }
    }
}