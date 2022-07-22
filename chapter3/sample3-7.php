<!doctype html>
<html lang="ja">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/style.css">

<title>よくわかるPHPの教科書</title>
</head>
<body>
<header>
<h1 class="font-weight-normal">1年後までのカレンダーを作成する</h1>    
</header>

<main>
<h2>Practice</h2>
<pre>
<?php
  for($i = 1; $i <= 365; $i ++) {
    $timestamp = strtotime('+'.$i.'day');
    $day = date('n/j(D)', $timestamp);
    print($day."\n");
  }
?>
</pre>
</main>
</body>    
</html>