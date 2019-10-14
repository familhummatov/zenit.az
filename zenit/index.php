<?php require_once "header.php";  


?>
<div id="slider">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators" style="z-index: 1;">
                  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner ">
                  <div class="carousel-item active">
                        <img src="img/1.jpg" class="d-block " alt="...">
                  </div>
                  <div class="carousel-item">
                        <img src="img/2.jpg" class="d-block " alt="...">
                  </div>
                  <div class="carousel-item">
                        <img src="img/3.jpg" class="d-block " alt="...">
                  </div>
            </div>

      </div>

</div>


<div id="partnyor" class="container-fluid">
      <div class="d-flex">
            <img  src="img/Uralmash.png" alt="">
            <img  src="img/makita.png" alt="">
            <img  src="img/zenit.png" alt="">
            <img  src="img/kzubr.jpg" alt="">
            <img  src="img/zid.jpg" alt="">
            <img  src="img/makute.jpg" alt="">
      </div>
</div>

<div id="new-data" class="mehsul">
      <div class="altmehsul">
       <div class="row ml-0 mr-0">
            <?php     
            $products=$db->prepare('SELECT * FROM products ORDER BY id desc limit 12');
            $products->execute();
            while ($product=$products->fetch(PDO::FETCH_ASSOC)) {
                  $productID=$product['id'];
                  $product_images=$db->prepare('SELECT * FROM images WHERE product_id=:productID ');
                  $product_images->execute(["productID"=>$productID]);
                  $images=$product_images->fetch(PDO::FETCH_ASSOC);
                  ?>
                  <div id="<?php echo $product['id']; ?>" data-id="<?php echo $product['id']; ?>"  class="productCard  col-lg-2 col-md-3 col-sm-4 col-6">
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

   $(window).scroll(function(e){
      if ($(window).scrollTop()+$(window).height()>=$('#footer').offset().top) {
            var last_id=$(".productCard:last").data("id");
            if(last_id!=1){
                  $.ajax({
                        url: "newData.php?last_id="+last_id,
                        type: "GET",
                        async: false,
                        cache: false,
                        success:function(msg){
                              $("#new-data").append(msg);
                        }
                  });
            }
      }
      
      // e.preventDefault();
      // e.stopImmediatePropagation();
      // return false;
});

            
</script>

<?php require_once "footer.php"; ?>

