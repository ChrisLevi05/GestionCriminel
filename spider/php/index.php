<?php
    // session_start();
    // include("../GestionCriminel/spider/config/connexion.php");
?>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../GestionCriminel/spider/css/bootstrap.css">
    <link rel="stylesheet" href="../spider/css/index.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
   <title>Accueil</title>
</head>
<body>
    <header class="header">
        <nav class="navbar">
            <ul>
                <li><a href="" class="active">Accueil</a></li>
                <li><a href="../GestionCriminel/spider/php/index.php?page=info">Informations</a></li>
                <img src="../images/logo.png" alt="" class="logo">
                <li><a href="../GestionCriminel/spider/php/index.php?page=wanted">Wanted</a></li>
                <li><a href="../GestionCriminel/spider/php/index.php?page=advice">Conseil</a></li>
            </ul>
            
        </nav>
        <section>
            <?php 
                if (isset($_GET['page'])){
                    switch($_GET['page']){
                        case "wanted" : include("../GestionCriminel/spider/php/wanted.php");
                        break;
                        case 'info' : include("../GestionCriminel/spider/php/information.php");
                        break;
                        case 'advice' : include("../GestionCriminel/spider/php/conseil.php");
                        break;
                        default : include("index.php");
                    }
                } else{
                    include("index.php");
                }
            ?>
        </section>
    </header>
    <script src="../GestionCriminel/spider/js/bootstrap.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</body>
</html>