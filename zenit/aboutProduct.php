<?php require_once "header.php" ;

$pr_id=$_GET['click_id'];
?>
<div class="product_info row ml-0 mr-0">
	<div class="col-lg-4 col-md-4 col-sm-12">
		<div id="product_slider">
			<div id="carousel" class="carousel slide" data-ride="carousel">
			
				<div class="carousel-inner">
					<?php  $product_images=$db->prepare('SELECT img_path FROM images WHERE product_id=:productID ');
					$product_images->execute(["productID"=>$pr_id]);
					$images=$product_images->fetch(PDO::FETCH_ASSOC);
						?>
						<div class="carousel-item active">

							<img  src="<?php echo $images['img_path']; ?>" class="d-block"   alt="...">

						</div>


						
				</div>

			</div>
		</div>
	</div>
	<div class="col-lg-8 col-md-8 col-sm-12">
		<div class="product_info_content">
			<?php     
			$products_info=$db->prepare("SELECT name,info FROM products where id='+$pr_id'");
			$products_info->execute();
			while ($product_info=$products_info->fetch(PDO::FETCH_ASSOC)) {
				?>
				<h3><?php echo strtoupper($product_info['name']);?></h3>
				<hr>
				<h6>Xüsusiyyətlər:</h6>
				<hr>
				<p id="specs">
					<?php echo $product_info['info']; ?>     
				</p>
			<?php } ?>
		</div>
	</div>
</div>


<?php require_once "footer.php"; ?>