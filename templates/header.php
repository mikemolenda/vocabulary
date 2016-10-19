<!DOCTYPE html>

<html>

<head>
  <meta name="author" content="">
  <meta name="description" content="Vocabulary web app">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
  <link href="/css/default.css" rel="stylesheet"/>

  <?php if (isset($title)): ?>
      <title>Vocabulary: <?= htmlspecialchars($title) ?></title>
  <?php else: ?>
      <title>Vocabulary</title>
  <?php endif ?>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>

<body>
  <div class="container">
    
    <div class="content">

      <div class="page-header">
        <h1>Vocabulary</h1>
      </div>
