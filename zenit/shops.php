<?php require_once "header.php" ?>


<div id="shops">
    <h3 class="shp">Mağazalarımız</h3>
    <div id="shop">
        <div class="row ml-0 mr-0">
            <?php for ($i = 0; $i < 12; $i++) {
                        ?>
            <div class="col-lg-3 col-md-3 col-sm-4 col-6">
                <div class="subshop">
                <h3 class="shp" id="city">City</h3>
                <p id="street">street adress</p>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>
<?php require_once "footer.php" ?>