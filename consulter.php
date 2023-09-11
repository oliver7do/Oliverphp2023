<!-- Inclure les liens CSS de Bootstrap -->
<?php
require_once('./inc/header.php');
require_once('./model/db_consulter.php');

$advertList = advertList();
// var_dump($advertsList);
// $listHotel = hotelList();
?>
<h1 class="display-3 text-center">Consulter toutes les annonces</h1>
<!-- Liste des annonces -->
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
        <?php foreach ($advertList as $advert) { ?>
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