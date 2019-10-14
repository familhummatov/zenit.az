  <?php require_once "db_config.php" ;?>  
  <div class="col-md-8">
            <?php     
            $pr_id=$_POST['click_id'];
            $products_info=$db->prepare("SELECT name,info FROM products where id='+$pr_id'");
            $products_info->execute();
            while ($product_info=$products_info->fetch(PDO::FETCH_ASSOC)) {
                  ?>
                  <h5><?php echo strtoupper($product_info['name']); ?></h5>
                  <hr>
                  <h6>Xüsusiyyətlər:</h6>
                  <hr>
                  <p id="specs">
                        <?php echo $product_info['info']; ?>     
                  </p>
            <?php } ?>
      </div>