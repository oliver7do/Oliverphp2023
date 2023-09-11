<!-- Inclure les liens CSS de Bootstrap -->
<?php
require_once('./inc/header.php');
require_once('./model/db_consulter.php');

$consuladvert = consuladvert();
?>

<body>
    <h1 class="display-3 text-center">Bienvenue sur Le Bon Appart</h1>

    <div class="container">
        <table class="table">
            <thead>
                <tr>
                    <th>Titre de l'annonce</th>
                    <th>Description de l'annonce</th>
                    <th>Code postal</th>
                    <th>Ville</th>
                    <th>Type d'annonce</th>
                    <th>Prix</th>
                </tr>
            </thead>
            <?php foreach ($consuladvert as $advert) { ?>
                <tbody>
                    <tr>

                        <td><?= $advert['title']; ?></td>
                        <td><?= $advert['description']; ?></td>
                        <td><?= $advert['postal_code']; ?></td>
                        <td><?= $advert['city']; ?></td>
                        <td><?= $advert['type']; ?></td>
                        <td><?= $advert['price']; ?></td>
                    </tr>
                <?php } ?>
                </tbody>
        </table>
    </div>

    <?php
    require_once('./inc/footer.php');
    ?>