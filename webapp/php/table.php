<?php
    require_once dirname(__FILE__) . "/functions.php";
    require_once dirname(__FILE__) . "/database.php";

    $reply = (object)["action" => $_POST["action"]];
    switch($_POST["action"]) {
        case "load_table":
            $table_rows = array();                
            $_POST["limit"] += 1;
            
            // SQL-Query für Tabelle zusammensetzen und abschicken
            $query =   "SELECT h.device, STRING_AGG(aha.vorname || ' ' || aha.nachname, ', ') AS autor, ar.titel, ar.jahr, ar.journal
                        FROM artikel ar
                        JOIN Artikel_has_Autor aha ON ar.DOI = aha.DOI
                        JOIN Artikel_has_Review ahr ON ar.DOI = ahr.A_DOI
                        JOIN Review r ON ahr.R_DOI = r.DOI
                        JOIN Review_uses_HMD ruh ON r.DOI = ruh.DOI
                        JOIN HMD h ON ruh.device = h.device
                        WHERE h.device ILIKE '%!device_filter%'
                        AND ar.titel ILIKE '%!titel_filter%'
                        AND ar.jahr >= !min_a_jahr_filter AND ar.jahr <= !max_a_jahr_filter
                        AND ar.journal ILIKE '%!journal_filter%'
                        GROUP BY h.device, ar.titel, ar.jahr, ar.journal
                        HAVING STRING_AGG(aha.vorname || ' ' || aha.nachname, ', ') ILIKE '%!autor_filter%'
                        ORDER BY !orderBy !order
                        LIMIT !limit";
            
            // Query abschicken
            $result = $DB->send_query($query, 
                array(
                    "!device_filter" => $_POST["device_filter"],
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
                    $table_rows[] = "<tr class=\"loadmore\">
                                    <td class=\"center\" colspan=\"4\">
                                        <span class=\"info-text\" >( weitere 100 Ergebnisse laden <img src=\"images/load.png\" /> )</span>
                                    </td>
                                </tr>";
                    break;
                }
                $table_rows[] = "<tr class=\"row\">
                                <td>" . search_highlight($row["device"], $_POST["device_filter"]) . "</td>
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