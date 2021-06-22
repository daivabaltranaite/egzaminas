<?php
$db = mysqli_connect("localhost", "root", "", "mokykla");
$kursaiQuery = "SELECT * FROM Kursai";
$kursai = mysqli_query($db, $kursaiQuery);
$kursaiHTML = '';
while ($kursas = mysqli_fetch_assoc($kursai)) {
    $komentaraiQuery = mysqli_query($db, "SELECT count(*) as total from Komentarai where kursas=" . $kursas['id']);
    $data = mysqli_fetch_assoc($komentaraiQuery);
    $komentarai = $data['total'];

    $autoriusQuery = "SELECT * FROM Autoriai WHERE id=" . $kursas['autorius'];
    $autorius = mysqli_fetch_assoc(mysqli_query($db, $autoriusQuery));
    $stars = '';
    for ($i = 0; $i < $kursas['reitingas']; $i++) {
        $stars = $stars . '<i class="fas fa-star"></i>';
    }
    for ($i = 5; $i > $kursas['reitingas']; $i--) {
        $stars = $stars . '<i class="far fa-star"></i>';
    }
    $kursaiHTML = $kursaiHTML . '
    <div class="card">
            <img class="card-image" src="' . $kursas['nuotrauka'] . '">
            <div class="card-content">
                <h3><a class="card-title" href="#">' . $kursas['pavadinimas'] . '</a></h3>
                <div>' . $autorius['vardas'] . ' ' . $autorius['pavarde'] . '</div>
                <div class="divider"></div>
                <p>' . $kursas['aprasas'] . '</p>
                <div class="divider"></div>
                <div class="ratings">
                    <div class="stars">
                        <div class="stars-count">' . $kursas['reitingas'] . '</div>
                        ' . $stars . '
                    </div>
                    <div class="comments">
                        <i class="far fa-comment"></i>
                        <div class="comments-count">' . $komentarai . '</div>
                    </div>
                </div>
            </div>
        </div>
    ';
}

echo '
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Daiva Baltranaite</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Exo:ital,wght@0,100;0,200;0,300;0,400;1,100;1,200;1,300&display=swap"
          rel="stylesheet">
    <script src="https://kit.fontawesome.com/7979f30438.js" crossorigin="anonymous"></script>
</head>
<body>
<header class="header">
    <img class="logo" src="images/logo.png">
</header>
<section class="section">
    <h1 class="title">Naujausi kursai</h1>
    <div class="cards">' . $kursaiHTML . '</div>
</section>
<section class="section form">
    <h3 class="form-title">Sekite naujienas</h3>
    <p class="form-subtitle">Norite gauti pranešimus apie naujus kursus? Užsisakykite mūsų naujienlaiškį!</p>
    <div id="success"></div>
    <div class="form-field">
        <label>Vardas</label>
        <input id="name"/>
    </div>
    <div class="form-field">
        <label>El. paštas</label>
        <input id="email"/>
    </div>
    <button onclick="validateForm()" class="form-button">Užsisakyti</button>
</section>
<section class="section">
    <div class="divider"></div>
    <footer>
        &#169; 2021 Daiva Baltranaitė
    </footer>
</section>
<script src="script.js"></script>
</body>
</html>
';