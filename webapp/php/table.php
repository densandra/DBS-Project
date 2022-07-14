<?php
    require_once dirname(__FILE__) . "/functions.php";
    require_once dirname(__FILE__) . "/database.php";

    $reply = (object)["action" => $_POST["action"]];
    switch($_POST["action"]) {
        case "load_table":
            $table_rows = array();                
            $_POST["limit"] += 1;
            
            // SQL-Query für Tabelle zusammensetzen und abschicken
            $query =   "SELECT h.name, h.typ, STRING_AGG(da.vorname || ' ' || da.nachname, ', ') AS autor, ar.titel, ar.jahr, ar.journal
                        FROM artikel ar
                        JOIN doi_autor da ON ar.DOI = da.DOI
                        JOIN doi_hmd dh ON ar.DOI = dh.DOI
                        JOIN hmd h ON dh.name = h.name
                        WHERE h.name ILIKE '%!device_filter%'
                        AND h.typ LIKE '%!ar_vs_vr_filter%'
                        AND ar.titel ILIKE '%!titel_filter%'
                        AND ar.jahr >= !min_a_jahr_filter AND ar.jahr <= !max_a_jahr_filter
                        AND ar.journal ILIKE '%!journal_filter%'
                        GROUP BY h.name, h.typ, ar.titel, ar.jahr, ar.journal
                        HAVING STRING_AGG(da.vorname || ' ' || da.nachname, ', ') ILIKE '%!autor_filter%'
                        ORDER BY !orderBy !order
                        LIMIT !limit";
            
            // Query abschicken
            $result = $DB->send_query($query, 
                array(
                    "!device_filter" => $_POST["device_filter"],
                    "!ar_vs_vr_filter" => $_POST["ar_vs_vr_filter"] == "-" ? "" : $_POST["ar_vs_vr_filter"],
                    "!autor_filter" => $_POST["autor_filter"],
                    "!titel_filter" => $_POST["titel_filter"],
                    "!min_a_jahr_filter" => $_POST["min_a_jahr_filter"] == "" ? 0 : $_POST["min_a_jahr_filter"],
                    "!max_a_jahr_filter" => $_POST["max_a_jahr_filter"] == "" ? 3000 : $_POST["max_a_jahr_filter"],
                    "!journal_filter" => $_POST["journal_filter"],
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
                                <td>" . $row["typ"] . "</td>
                                <td>" . search_highlight($row["autor"], $_POST["autor_filter"]) . "</td>
                                <td>" . search_highlight($row["titel"], $_POST["titel_filter"]) . "</td>
                                <td>" . $row["jahr"] . "</td>
                                <td>" . search_highlight($row["journal"], $_POST["journal_filter"]) . "</td>
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