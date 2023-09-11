<!-- Inclure les liens CSS de Bootstrap -->
<?php
require_once('./inc/header.php');
?>

<div class="container">
    <h1 class="display-3 text-center">Ajouter une annonce</h1>

    <form action="./inc/db_register.php" method="post">
        <div class="form-group">
            <label for="title">Titre de l'annonce :</label>
            <input type="text" class="form-control" id="title" name="title" required>
        </div>
        <div class="form-group">
            <label for="description">Description de l'annonce :</label>
            <textarea class="form-control" id="description" name="description" rows="4" required></textarea>
        </div>

        <div class="form-group">
            <label for="postal_code">Code postal :</label>
            <input type="text" class="form-control" id="postal_code" name="postal_code" required>
        </div>

        <div class="form-group">
            <label for="city">Ville :</label>
            <input type="text" class="form-control" id="city" name="city" required>
        </div>

        <div class="form-group">
            <label for="type">Type d'annonce :</label>
            <select class="form-control" id="type" name="type">
                <option value="location">Choisissez l'une des options</option>
                <option value="location">Location</option>
                <option value="vente">Vente</option>
            </select>
        </div>

        <div class="form-group">
            <label for="price">Prix :</label>
            <input type="number" class="form-control" id="price" name="price" rows="4" required></input>
        </div>

        <button type="submit" class="btn btn-primary" name="valider">Ajouter l'annonce</button>
    </form>
</div>
<?php
require_once('./inc/footer.php');
?>