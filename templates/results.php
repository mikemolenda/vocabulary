<h3>Synonyms for <strong><?= $_GET["word"] ?></strong>:</h3>
<table class="table table-striped">
  <?php foreach ($synonyms as $synonym): ?>
    <tr>
      <td>
        <a href="index.php?word=<?= $synonym["word"] ?>"><?= $synonym["word"] ?></a>
      </td>
      <td>
        <?= $synonym["sense"] ?>
      </td>
    </tr>
  <?php endforeach ?>
</table>