<?php
    require_once dirname(__FILE__) . "/functions.php";
    require_once dirname(__FILE__) . "/database.php";

    $reply = (object)["action" => $_POST["action"]];
    switch($_POST["action"]) {
        case "load_table":
            $table_rows = array();                
            $_POST["limit"] += 1;
            
            // SQL-Query für Tabelle zusammensetzen
            $query =   "SELECT h.name, h.typ AS ar_vs_vr, h.jahr AS h_jahr, h.preis, h.display, h.hersteller,
                               ar.doi, STRING_AGG(da.vorname || ' ' || da.nachname, ', ') AS autor, 
                               ar.titel, ar.jahr, ar.journal, ar.typ, ar.quelle
                        FROM artikel ar
                        JOIN doi_autor da ON ar.DOI = da.DOI
                        JOIN doi_hmd dh ON ar.DOI = dh.DOI
                        JOIN hmd h ON dh.name = h.name
                        WHERE h.name ILIKE '%!device_filter%'
                        AND h.hersteller ILIKE '%!hersteller_filter%'
                        AND h.typ LIKE '%!ar_vs_vr_filter%'
                        AND h.jahr >= !min_h_jahr_filter AND h.jahr <= !max_h_jahr_filter
                        AND h.preis >= !min_h_preis_filter AND h.preis <= !max_h_preis_filter
                        AND h.display ILIKE '%!display_filter%'
                        AND ar.doi ILIKE '%!doi_filter%'
                        AND ar.titel ILIKE '%!titel_filter%'
                        AND ar.jahr >= !min_a_jahr_filter AND ar.jahr <= !max_a_jahr_filter
                        AND ar.journal ILIKE '%!journal_filter%'
                        AND ar.typ ILIKE '%!typ_filter%'
                        AND ar.quelle ILIKE '%!quelle_filter%'
                        GROUP BY h.name, h.typ, h.jahr, h.preis, h.display, h.hersteller,
                                 ar.doi, ar.titel, ar.jahr, ar.journal, ar.typ, ar.quelle
                        HAVING STRING_AGG(da.vorname || ' ' || da.nachname, ', ') ILIKE '%!autor_filter%'
                        ORDER BY !orderBy !order
                        LIMIT !limit";
            
            // Query abschicken
            $result = $DB->send_query($query, 
                array(
                    "!device_filter" => $_POST["device_filter"],
                    "!hersteller_filter" => $_POST["hersteller_filter"],
                    "!ar_vs_vr_filter" => $_POST["ar_vs_vr_filter"] == "-" ? "" : $_POST["ar_vs_vr_filter"],
                    "!min_h_jahr_filter" => $_POST["min_h_jahr_filter"] == "" || !is_numeric($_POST["min_h_jahr_filter"]) ? 0 : $_POST["min_h_jahr_filter"],
                    "!max_h_jahr_filter" => $_POST["max_h_jahr_filter"] == "" || !is_numeric($_POST["max_h_jahr_filter"]) ? 3000 : $_POST["max_h_jahr_filter"],
                    "!min_h_preis_filter" => $_POST["min_h_preis_filter"] == "" || !is_numeric($_POST["min_h_preis_filter"]) ? 0 : $_POST["min_h_preis_filter"],
                    "!max_h_preis_filter" => $_POST["max_h_preis_filter"] == "" || !is_numeric($_POST["max_h_preis_filter"]) ? 240000 : $_POST["max_h_preis_filter"],
                    "!display_filter" => $_POST["display_filter"],
                    "!doi_filter" => $_POST["doi_filter"],
                    "!autor_filter" => $_POST["autor_filter"],
                    "!titel_filter" => $_POST["titel_filter"],
                    "!min_a_jahr_filter" => $_POST["min_a_jahr_filter"] == "" || !is_numeric($_POST["min_a_jahr_filter"]) ? 0 : $_POST["min_a_jahr_filter"],
                    "!max_a_jahr_filter" => $_POST["max_a_jahr_filter"] == "" || !is_numeric($_POST["max_a_jahr_filter"]) ? 3000 : $_POST["max_a_jahr_filter"],
                    "!journal_filter" => $_POST["journal_filter"],
                    "!typ_filter" => $_POST["typ_filter"],
                    "!quelle_filter" => $_POST["quelle_filter"] == "-" ? "" : $_POST["quelle_filter"],
                    "!limit" => $_POST["limit"],
                    "!orderBy" => $_POST["orderBy"],
                    "!order" => $_POST["order"]
                )
            );
            if ($result->error()) {
                db_error();
            } 
            
            // gefetchte Ergebniszeilen konvertieren und in Array abspeichern
            $counter = 0;
            while ($row = $result->fetch_row()) {
                $counter++; 
                if ($counter == $_POST["limit"]) {
                    $table_rows[] = "<tr id=\"loadmore\" class=\"row\">
                                        <td colspan=\"100%\" class=\"center\">weitere 50 Ergebnisse laden</td>
                                    </tr>";
                    break;
                }
                $table_rows[] = "<tr class=\"row\">
                                <td>" . search_highlight($row["name"], $_POST["device_filter"]) . "</td>
                                <td>" . search_highlight($row["hersteller"], $_POST["hersteller_filter"]) . "</td>
                                <td>" . $row["ar_vs_vr"] . "</td>
                                <td>" . $row["h_jahr"] . "</td>
                                <td>" . $row["preis"] . "</td>
                                <td>" . search_highlight($row["display"], $_POST["display_filter"]) . "</td>
                                <td>" . search_highlight($row["doi"], $_POST["doi_filter"]) . "</td>
                                <td>" . search_highlight($row["autor"], $_POST["autor_filter"]) . "</td>
                                <td>" . search_highlight($row["titel"], $_POST["titel_filter"]) . "</td>
                                <td>" . $row["jahr"] . "</td>
                                <td>" . search_highlight($row["journal"], $_POST["journal_filter"]) . "</td>
                                <td>" . search_highlight($row["typ"], $_POST["typ_filter"]) . "</td>
                                <td>" . $row["quelle"] . "</td>
                            </tr>"; 
            }
            $reply->table_rows = $table_rows;
            break;
        default:
            log_error("Aktion " . $_POST["action"] . " nicht definiert!");
            break;
    }

    return_from_php("OK", $reply);
?>