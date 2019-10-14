   <div id="footer">
   <div class="row ml-0 mr-0">
      <div class="col-lg-5  company">
            <h3><b>Şirkət</b></h3>
            <p style="text-align:justify-all;"><?php echo $page['info']; ?></p>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-6 col-12 connect">
            <h3><b>Əlaqə</b></h3>
            <ul class="adress">
                  <li>
                        <img src="img/adress.svg" alt="">
                        <a href="https://goo.gl/maps/BDTr5pKvvN8aGZ7H7"><?php echo $page['address']; ?></a>
                  </li>
               
                  <li>
                        <img src="img/telephone.svg" alt="">
                         <p><?php echo $page['phone_number_1']; ?> </p>
                 
                  </li>
                  <li>
                        <img src="img/mail.svg" alt="">
                        <p><?php echo $page['e_mail']; ?></p>
                  </li>
            </ul>

      </div>
      <div class="col-lg-3 col-md-6 col-sm-6 col-12 follow">
            <h3><b>Bizi izləyin</b></h3>
            <ul class="social">
                  <li>
                        <img src="img/facebook-logo.svg" alt="">
                        <a href="<?php echo $page['social_fb'] ?>">Facebook</a>
                  </li>
                  <li>
                        <img src="img/instagram.svg" alt="">
                        <a href="<?php echo $page['social_inst'] ?>">Instagram</a>
                  </li>
                  <li>
                        <img src="img/youtube.svg" alt="">
                        <a href="<?php echo $page['social_ytb'] ?>">Youtube</a>
                  </li>
                  
            </ul>
      </div>
      </div>
</div>

<div id="by" class="row">
      <p id="p1" class="col-6">ZENIT.AZ &copy; 2019 Bütün hüquqlar qorunur.</p>
      <p id="p2" class="col-6">Site by NFC-Web Studio</p>
</div>
<div id='gotop'>
      <a href="#" id="back-to-top" title="Back to top">&uarr;</a>
</div>

<script>
                  //active class code
                  $("#cat li").click(function () {
                        $("#cat li").removeClass("activebg");
                        $(this).addClass("activebg");
                  });

                  $($(".page-link")[1]).addClass("activebg");
                  $(".page-link").click(function () {
                        $(".page-link").removeClass("activebg");
                        $(this).addClass("activebg");
                  });
                  // end active class code




                  // Back to top code
                  if ($('#back-to-top').length) {
                        var scrollTrigger = 100, // px
                        backToTop = function () {
                              var scrollTop = $(window).scrollTop();
                              if (scrollTop > scrollTrigger) {
                                    $('#back-to-top').addClass('show');
                              } else {
                                    $('#back-to-top').removeClass('show');
                              }
                        };
                        backToTop();
                        $(window).on('scroll', function (e) {
                              backToTop();
                              e.preventDefault();
                              e.stopImmediatePropagation();
                              return false;
                        });
                        $('#back-to-top').on('click', function (e) {
                              e.preventDefault();
                              $('html,body').animate({
                                    scrollTop: 0
                              }, 700);
                        });
                  }
                  // end Back to top code



                 


                  
                  // end popup code
            </script>

         

            
      </div>
</body>

</html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
crossorigin="anonymous">
</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
crossorigin="anonymous">
</script>
<script
src="https://code.jquery.com/jquery-3.4.1.js"
integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
crossorigin="anonymous"></script>
<script type="text/javascript">
      $(document).ready(function(){
            $(".card").click(function(){
                  var id=$(this).attr("id");
                  console.log(id);
                  window.location.href="aboutProduct.php?click_id="+id;

            })
      })
      

</script>


</script>