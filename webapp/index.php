<!DOCTYPE html>
<html>
    <head>
        <?php echo file_get_contents("js.include"); ?>
    </head>
    <body>
        <?php
            require_once("html/navigation.html"); ?>
            <div id="ajax_content">
                <?php 
                    require_once("html/browse.html");
                ?>
            </div><?php
        ?>
    </body>
</html>