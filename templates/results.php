<h3>Synonyms for <strong><?= $_GET["word"] ?></strong>:</h3>

<!-- neccessary to insert empty dummy table at start -->
<table class="dummy">
<?php
  $current = "";

  foreach ($synonyms as $synonym) {

    // print sense only once
    if ($synonym["sense"] != $current) {
      echo(
          "  </table>\n"
        . "  <h4>" . $synonym["sense"] . "</h4>\n"
        . "  <table class=\"table table-striped\">\n"
      );
      $current = $synonym["sense"];
    }

    // print list of words
    echo(
        "    <tr>\n"
      . "      <td>\n" 
      . "        <a href=\"index.php?word=" . $synonym["word"] . "\">" . $synonym["word"] . "</a>\n" 
      . "      </td>\n"
      . "    </tr>\n"
    );
  }
?>
</table>