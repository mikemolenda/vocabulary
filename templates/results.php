<!--TODO make each word a POST hyperlink-->
<?php foreach ($synonyms as $synonym): ?>
  <h2><?= $synonym["word"] ?></h2>
  <p><?= $synonym["sense"] ?></p>
<?php endforeach ?>