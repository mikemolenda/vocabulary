<?php 
/**
 * index.php
 * Vocabulary web app
 *
 * Main controller for app.
 */

require("../includes/config.php");

// if no query, render form
if (!isset($_GET["word"]))
{
    render("form.php", ["title" => "Enter a Word"]);
}

// else, query database and render results
else
{
    // query database
    $rows = query("SELECT word, sense FROM WordSenses INNER JOIN Senses ON WordSenses.sense_id = Senses.sense_id WHERE WordSenses.sense_id IN (SELECT sense_id FROM WordSenses WHERE word = ?) ORDER BY WordSenses.sense_id", $_GET["word"]);

    // if results found, render results.php
    if (count($rows) > 0)
    {
        // put query results into array
        $synonyms = [];
        foreach ($rows as $row)
        {
            $synonyms[] = [
                "word" => $row["word"],
                "sense" => $row["sense"]
            ];
        }

        // pass synonyms to ressults.php and render
        render("results.php", ["title" => "Synonyms", "synonyms" => $synonyms]);
    }
    else
    {
        apologize("No results found.");
    }
}

?>
