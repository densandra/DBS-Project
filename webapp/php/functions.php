<?php
    function return_from_php($status, $reply) {
        global $DB;
        echo $status . ":" . json_encode($reply, JSON_NUMERIC_CHECK);
        $DB = null;
        exit;
    }

    // Setzt die Klasse "highlight" für im Text gefundene Filter
    function search_highlight($text, $filter, $only_from_beginning = false, $single_match = false) { 
        if ($filter == "") {
            return htmlspecialchars($text);
        }
        $result = ""; // Rückgabestring mit gespanten Texten
        
        // Text und Filter Wort für Wort in Arrays exploden, Filter trimmen
        $text_array = explode(" ", $text);
        $text_array = explode(" ", $text);
        $filter_array = explode(" ", trim(preg_replace("/\s+/", " ", mb_strtolower($filter))));

        // von hier bis Funktionsende Wort für Wort von Text (textarray) abarbeiten
        for ($i = 0; $i < count($text_array); $i++) {  
            if ($result != "")
                $result .= " "; // nach jedem Wort Leerzeichen einfügen

            // für jedes Wort aus Textarray Array aus Buchstaben (letters) und gleichlanges Array initial aus Nullen (highlight_indicator)erzeugen
            $letters = preg_split("/(?<!^)(?!$)/u", $text_array[$i]);
            $highlight_indicator = array_fill(0, count($letters), 0);

            // von hier Wort für Wort von Filter abarbeiten
            foreach ($filter_array as $filter_string) {
                $needle = mb_strtolower(preg_quote($filter_string, "/"));
                $haystack = mb_strtolower($text_array[$i]);

                // gefundene Strings sowie Positionen der Vorkommen werden im dreidimensionalen Array $matches gespeichert
                if (preg_match_all("/" . ($only_from_beginning ? "^" : "") . $needle . "/", $haystack, $matches, PREG_OFFSET_CAPTURE)) {
                    for ($j = 0; $j < count($matches[0]); $j++) {
                        // Position des Vorkommens
                        $start = $matches[0][$j][1];
                        for ($k = $start; $k < $start + mb_strlen($matches[0][$j][0]); $k++) {
                            $highlight_indicator[$k] = 1;
                        }
                        if ($single_match)
                            break;
                    }
                }
            }
            // im Indikator-Array mit 1 markierte Stellen im Text mit Tags versehen
            $found = false;
            for ($m = 0; $m < count($letters); $m++) {
                if ($highlight_indicator[$m] == 1 && !$found) {
                    $found = true;
                    $result .= "<span class=\"highlight\">";
                } else if ($highlight_indicator[$m] == 0 && $found) {
                    $found = false;
                    $result .= "</span>";
                }
                $result .= htmlspecialchars($letters[$m]);
                // schließendes span-Tag am Ende anhängen
                if ($found && $m == count($letters) - 1) {
                    $found = false;
                    $result .= "</span>";
                }
            }
        }
        return $result;
    }

    // SQL-Query ergab einen Fehler
    function db_error() {
        global $DB_ERROR;
        log_error("Datenbankfehler " . $DB_ERROR, 2);
    }

    // Loggt Fehler und beendet Ausführung des Skripts
    function log_error($message, $backtrace_level = 1, $code = 500) {
        write_logfile($message, true, $backtrace_level);
        return_from_php("ERROR", (object)["message" => $message, "code" => $code]);
    }

    // Überschreibt Logfile
    function write_logfile($message, $show_path = true, $backtrace_level = 0) {
        $prefix = date("d.m.Y H:i:s") . ": ";
        $message = preg_replace("/\s+/", " ", $message);
        $path = debug_backtrace()[$backtrace_level]["file"];
        $backtrace = $show_path == true ? " (" . $path . ", Zeile " . debug_backtrace()[$backtrace_level]["line"] . ")" : "";
        file_put_contents(dirname(__FILE__) . "/../log/logfile.log", $prefix . $message . $backtrace . PHP_EOL, FILE_APPEND);  
    }

    // Aus JavaScripts errorlog
    if ($_SERVER["REQUEST_METHOD"] === "POST" && basename($_SERVER["SCRIPT_NAME"]) === "functions.php") {
        log_error($_POST["message"]);
    }
?>