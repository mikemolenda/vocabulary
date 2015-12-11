<!DOCTYPE html>

<html>

<head>
  <meta name="author" content="Mike Molenda">
  <meta name="description" content="Vocabulary web app">

  <?php if (isset($title)): ?>
      <title>Vocabulary: <?= htmlspecialchars($title) ?></title>
  <?php else: ?>
      <title>Vocabulary</title>
  <?php endif ?>

</head>

<body>
  <div id="container">
    
    <div id="heading">
      <h1>Vocabulary</h1>
    </div>

    <div id="content">
