<?php require_once "db_config.php";  ?>

<div id="new-data">
	<div class="altmehsul">
		<div class="row mr-0 ml-0">
			<?php
			$prod_id=$_GET['last_id'];
			// $products=$db->prepare('SELECT * FROM `products` where id<? ORDER BY id desc limit 12');
			$products=$db->prepare('SELECT * FROM `products` ORDER BY id desc limit '.$prod_id.' OFFSET 12');
			// $products->execute([$_GET['last_id']]);
			$products->execute();
			while ($product=$products->fetch(PDO::FETCH_ASSOC)) {
				  $productID=$product['id'];
                     $product_images=$db->prepare('SELECT * FROM images WHERE product_id=:productID ');
                     $product_images->execute(["productID"=>$productID]);
                     $images=$product_images->fetch(PDO::FETCH_ASSOC);
				?>
				<div  id="<?php echo $product['id']; ?>" data-id="<?php echo $product['id']; ?>"  class="productCard  col-lg-2 col-md-3 col-sm-4 col-6">
				<div id="<?php echo $product['id']; ?>" class="card">
					<div class="photo"> 
						<img src="<?php echo $images['img_path']  ; ?>" class="card-img-top" alt="...">
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
<script type="text/javascript">

      $(document).ready(function(){
            $(".card").click(function(){
                  var id=$(this).attr("id");
                  console.log(id);
                  window.location.href="aboutProduct.php?click_id="+id;

            })
      })
      

</script>