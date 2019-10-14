  <?php
  require_once "header.php"; 
  ob_start();
  $id=$_GET['category_id'];
  if ($_GET['sub_cat_id']!='null') {
  	$sub_id=$_GET['sub_cat_id'];	
  }
  else {
  	$sub_id=null;
  }
  if (is_null($sub_id)) {
   $products=$db->prepare("SELECT * FROM products WHERE category_id=:id");
   $products->execute([
    'id'=>$id
  ]);
 }
 else {
  $products=$db->prepare("SELECT * FROM products WHERE category_id=:id AND subCategory_id=:sub_id");
  $products->execute([
    'id'=>$id,
    'sub_id'=>$sub_id
  ]);
}

?>

<div class="mehsul">
  <div class="altmehsul">
   <div class="row mr-0 ml-0">
     <?php 

     while ($product=$products->fetch(PDO::FETCH_ASSOC)) {
      $productID=$product['id'];
      $product_images=$db->prepare('SELECT * FROM images WHERE product_id=:productID ');
      $product_images->execute(["productID"=>$productID]);
      $images=$product_images->fetch(PDO::FETCH_ASSOC);
      ?>

      <div id="<?php echo $product['id']; ?>" class="productCard  col-lg-2 col-md-3 col-sm-4 col-6">
        <div id="<?php echo $product['id']; ?>"  class="card">
          <div  class="photo">
            <img src="<?php echo $images['img_path']  ; ?>"
            class="card-img-top" alt="...">
          </div>
          <div class="card-body">
            <p class="card-title"><b><?php echo $product['name']; ?></b></p>
            <p class="card-text"><?php echo $product['price']; ?></p>
          </div>
        </div>
      </div>



      <?php 
    }
    ?>
  </div>



</div>


</div>



<?php require_once "footer.php"; ?>
