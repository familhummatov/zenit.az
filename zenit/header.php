<?php require_once "db_config.php" ;
header('Content-Type: text/html; charset=utf-8');
ob_start();
$pages=$db->prepare("SELECT * FROM page_settings WHERE id=1");
$pages->execute();
$page=$pages->fetch(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <title> <?php echo $page['title']; ?></title>
  <link rel="stylesheet" href="css/header.css">
  <link rel="stylesheet" href="css/slider.css">
  <link rel="stylesheet" href="css/contact.css">
  <link rel="stylesheet" href="css/product.css">
  <link rel="stylesheet" href="css/mainnav.css">
  <link rel="stylesheet" href="css/search.css">
  <link rel="stylesheet" href="css/gotop.css">
  <link rel="stylesheet" href="css/popup.css">
  <link rel="stylesheet" href="css/shops.css">
  <link rel="stylesheet" href="css/responsive.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="css/animate.css">

</head>

<body>
  <div class="container-fluid">


    <div id="all">


      <header>
        <div id="head">
          <div class="row" style="margin: 0">
            <div style="text-align: center; margin: 25px 0px" class="mainlogo col-lg-1 col-md-1">
              <a href="index.php"><img src="<?php echo $page['logo_path']; ?>" alt="Logo" /></a>
            </div>
            <div class="col-lg-11 col-md-11 col-sm-12" id="mainnav">
              <div class="row mainnavigation" style="width: 100%">
                <div class="col-lg-6 col-md-6 col-sm-12">
                  <ul>
                    <li><a href="index.php">Ana Səhifə</a></li>
                    <li><a href="shops.php">Mağazalarımız</a></li>
                    <li><a href="contact.php">Əlaqə</a></li>
                  </ul>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12">
                  <form method="GET" action="productsFromSearch.php">
                    <div class="searchbar">

                      <input class="search_input" type="text" name="search" placeholder="Axtar..." autocomplete="none">
                      <button style="border: none; background: transparent;" type="submit"><i
                          class="fas fa-search"></i></button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>

        <nav id="menu">
          <ul id="cat" class="row">
            <li class="altcat col-lg-2 col-md-2 col-sm-6 col-xs-6 col-6">
              <?php 

            $cat=$db->prepare("SELECT * FROM `category` WHERE name='Otbichenler'");
            $cat->execute();
            $category=$cat->fetch(PDO::FETCH_ASSOC);
            $cat_id=$category['id'];
            ?>
              <a class="first" href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=null">
                <img src="img/lawn-mover.svg" alt="">Otbiçənlər</a>

              <ul class="subcat">
                <?php 

               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='ChiyindenAsilan'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id;?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Çiyindən asılan</a></li>
                <?php 
               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Qazonbichen'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Qazonbiçən</a>
                </li>
              </ul>

            </li>

            <li class="altcat col-lg-2 col-md-2 col-sm-6 col-xs-6 col-6">
              <?php 

            $cat=$db->prepare("SELECT * FROM `category` WHERE name='Motopila'");
            $cat->execute();
            $category=$cat->fetch(PDO::FETCH_ASSOC);
            $cat_id=$category['id'];
            ?>
              <a class="first" href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=null">
                <img src="img/chainsaw.svg" alt="">Motopilalar</a>

              <ul class="subcat">
                <?php 

               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Benzin'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id;?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Benzin</a>
                </li>
                <?php 
               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Elektrik'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Elektrikli</a>
                </li>
              </ul>

            </li>

            <li class="altcat col-lg-2 col-md-2 col-sm-6 col-xs-6 col-6">
              <?php 

            $cat=$db->prepare("SELECT * FROM `category` WHERE name='ElektrikAletleri'");
            $cat->execute();
            $category=$cat->fetch(PDO::FETCH_ASSOC);
            $cat_id=$category['id'];
            ?>
              <a class="first" href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=null">
                <img src="img/driller.svg" alt="">Elektrik alətləri</a>

              <ul class="subcat">
                <?php 

               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Elektrik'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id;?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Elektrik</a>
                </li>
                <?php 
               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Hava'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Hava(Kompressor)</a>
                </li>
                <?php 
               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Batareya'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Batareya</a>
                </li>
              </ul>

            </li>

            <li class="altcat col-lg-2 col-md-2 col-sm-6 col-xs-6 col-6">
              <?php 

            $cat=$db->prepare("SELECT * FROM `category` WHERE name='EhtiyyatHisseleri'");
            $cat->execute();
            $category=$cat->fetch(PDO::FETCH_ASSOC);
            $cat_id=$category['id'];
            ?>
              <a class="first" href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=null">
                <img src="img/icon-gears.svg" alt="">Ehtiyyat hissələri</a>

              <ul class="subcat">
                <?php 

               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Benzin'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id;?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Benzinli
                    alətlərin ehtiyyat hissələri</a></li>
                <?php 
               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Elektrik'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Elektrikli
                    alətlərin ehtiyyat hissələri</a></li>
                <?php 
               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Diger'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Digər
                    alətlərin ehtiyyat hissələri</a></li>

              </ul>

            </li>
            <li class="altcat col-lg-2 col-md-2 col-sm-6 col-xs-6 col-6">
              <?php 

            $cat=$db->prepare("SELECT * FROM `category` WHERE name='Dermansepen'");
            $cat->execute();
            $category=$cat->fetch(PDO::FETCH_ASSOC);
            $cat_id=$category['id'];
            ?>
              <a class="first" href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=null">
                <img src="img/sprayer.svg" alt="">Dərmansəpən</a>

              <ul class="subcat">
                <?php 

               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Benzin'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id;?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Benzinlə
                    işləyən</a></li>
                <?php 
               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Elektrik'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Elektriklə
                    işləyən</a></li>
                <?php 
               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Mexaniki'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Mexaniki</a>
                </li>

              </ul>

            </li>

            <li class="altcat col-lg-2 col-md-2 col-sm-6 col-xs-6 col-6">
              <?php 

            $cat=$db->prepare("SELECT * FROM `category` WHERE name='Diger'");
            $cat->execute();
            $category=$cat->fetch(PDO::FETCH_ASSOC);
            $cat_id=$category['id'];
            ?>
              <a class="first" href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=null">
                <img src="img/mode.svg" alt="">Digər</a>

              <ul class="subcat">
                <?php 

               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Benzin'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id;?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Benzinlə
                    işləyən</a></li>
                <?php 
               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Elektrik'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Elektriklə
                    işləyən</a></li>
                <?php 
               $sub_cat=$db->prepare("SELECT * FROM `sub_category` WHERE name='Hava'");
               $sub_cat->execute();
               $sub_category=$sub_cat->fetch(PDO::FETCH_ASSOC);
               $sub_cat_id=$sub_category['id'];
               ?>
                <li><a
                    href="productByCategory.php?category_id=<?php echo $cat_id; ?>&sub_cat_id=<?php echo $sub_cat_id; ?>">Hava
                    ilə işləyən</a></li>
              </ul>
            </li>
            </li>
          </ul>
        </nav>
      </header>