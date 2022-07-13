<?php 
    require_once dirname(__FILE__) . "/functions.php";
    
    /*
     * Kommunikation mit der Datenbank
     */
    class Database {
        private $connection = null;
        
        // Verbindung zur Datenbank aufbauen
        public function __construct() {
            require_once("config.php");
            $this->connection = pg_connect("host=$host port=$port dbname=$name user=$user password=$password");
            if ($this->connection == null) {
                log_error("Datenbankverbindung konnte nicht hergestellt werden!");
            }
        }

        // Verbindung zur Datenbank beenden
        public function __destruct() {
            if ($this->connection != null) {
                pg_close($this->connection);
            }
        }

        // Führt ein SQL-Query auf der Datenbank aus
        public function send_query($query, $arguments = false) {           
            if ($arguments !== false) {
                foreach ($arguments as $key => $value) {
                    $query = str_replace($key, pg_escape_string($value), $query);
                }
            }
            pg_send_query($this->connection, $query) or log_error("Datenbankverbindung nicht vorhanden!");
            return new Query_result(pg_get_result($this->connection));
        }
    }

    /*
     * Ergebnis einer Abfrage
     */
    class Query_result {
        private $error = "";
        public $result = null;

        // Erstellung des Ergebnis-Objekts
        public function __construct($db_result) {
            global $DB_ERROR;

            $this->result = $db_result;
            $this->error = pg_result_error($db_result);
            $DB_ERROR = pg_result_error_field($db_result, PGSQL_DIAG_SQLSTATE) . " " . pg_result_error($db_result);
        }

        // returnt True, wenn Fehler aufgetreten ist
        public function error() {
            return $this->error != "";
        }

        // Gibt die Anzahl betroffener/gefundener Zeilen zurück
        public function count_rows() {
            if ($this->result == null)
                return 0;
            return pg_num_rows($this->result);
        }

        // Gibt die nächste Ergebniszeile als assoziatives Array zurück
        public function fetch_row($counter = null) {
            if ($this->result == null) {
                return false;
            }
            return pg_fetch_assoc($this->result); 
        }
    }

    $DB_ERROR = "";
    $DB = new Database;
?>