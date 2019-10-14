<?php 

require_once "header.php";  
$search=$_GET['search'];

                
if ($_GET['search']=='' || $_GET['search']==null ) {
      header("Location:index.php");
}
$products=$db->prepare("SELECT * FROM products where name LIKE '".$search."%'");
$products->execute();

?>
<div class="mehsul" id="new-data">
      <div class="altmehsul">
            <div class="row ml-0 mr-0">
                  <?php     
                                    
                  while ($product=$products->fetch(PDO::FETCH_ASSOC)) {
                    $productID=$product['id'];
                    $product_images=$db->prepare('SELECT * FROM images WHERE product_id=:productID ');
                    $product_images->execute(["productID"=>$productID]);
                    $images=$product_images->fetch(PDO::FETCH_ASSOC);
                    ?>

                    <div id="<?php echo $product['id']; ?>"  class="productCard col-lg-2 col-md-3 col-sm-4 col-6">
                    <div id="<?php echo $product['id']; ?>" class="card">
                        <div class="photo"> 
                              <img src="<?= $images['img_path']?>"
                              class="card-img-top" alt="...">
                        </div>
                        <div class="card-body">
                              <p class="card-title"><b><?php echo $product['name']; ?></b></p>
                              <p class="card-title"><b><?php echo $product['price']; ?></b></p>
                        </div>
                  </div>
                  </div>
                  <?php 
            }
            ?>
      </div>
</div>



</div>
</div>


</div>

</div>

<?php require_once "footer.php"; ?>

