<?php require_once "header.php" ?>
<div id="contact">
    <div class="row ml-0 mr-0">
        <div class="col-lg-6 col-md-6 col-sm-12 col-12">
            <div class="subcontact">
                <h3>Mərkəz Ofis</h3>
                <div class="altcontact d-flex">
                    <div class="imgborder d-flex">
                        <img src="img/adress.svg" alt="adress">
                    </div>
                    <div class="contactcontent d-flex">
                        <p class="m-0">Bakı,Qaradağ rayonu,<br>Bakı-Ələt-Qazax magistralı,1063,<br>
                            <b>Sədərək Ticarət Mərkəzi,<br>Təsərüffat bazarı,<br>Sıra 4,Mağaza 65-67</b> </p>
                    </div>
                </div>
                <div class="altcontact d-flex">
                    <div class="imgborder d-flex">
                        <img src="img/mail2.svg" alt="email">
                    </div>
                    <div class="contactcontent d-flex">
                        <p class="m-auto">contact@zenit.az</p>
                    </div>
                </div>
                <div class="altcontact d-flex">
                    <div class="imgborder d-flex">
                        <img src="img/clock2.svg" alt="clock">
                    </div>
                    <div class="contactcontent d-flex">
                        <p class="m-auto">08:00 - 18:00</p>
                    </div>
                </div>
                <div class="altcontact d-flex">
                    <div class="imgborder d-flex">
                        <img src="img/telephone.svg" alt="phone">
                    </div>
                    <div class="contactcontent d-flex">
                        <p class="m-auto">+994 50 366 92 58 <br>+994 50 548 38 00
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="message col-lg-6 col-md-6 col-sm-12 col-12">
            <div class="submessage">
                <h3>Bizimlə Əlaqə Yaradın</h3>
                <form action="mailToMail.php" method="POST">
                    <div class="row marginb ml-0 mr-0">
                        <div class="col-lg-4 col-md-4 col-sm-12 col-12" style="margin-right:5%">
                            <div id="ad">
                                <input type="text" name="name" placeholder="ADINIZ">
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-12 col-12 p-0">
                            <div id="soyad">
                                <input type="text" name="surName" placeholder="SOYADINIZ">
                            </div>
                        </div>
                    </div>
                    <div id="email" class="marginb">
                        <input type="email" name="clientEmail" placeholder="EMAIL">
                    </div>
                    <div class="row marginb mr-0 ml-0">
                        <div class="prefix col-lg-2 col-md-3 col-sm-3 col-2 pl-0">
                            <div id="prefix">
                                <input type="text" name="prefix" value="+994">
                            </div>
                        </div>
                        <div class="number col-lg-10 col-md-9 col-sm-9 col-10 pl-0">
                            <div id="number">
                                <input type="text" name="phoneNumber" placeholder="TELEFON">
                            </div>
                        </div>
                    </div>
                    <div id="text" class="marginb">
                        <textarea name="message" cols="70" rows="10" placeholder="MESAJINIZ"></textarea>
                    </div>
                    <div class="mybtn">
                            <button class="btn btn-info" type="submit">GÖNDƏR</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
    <div id="map">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3041.9385070895873!2d49.774552014759145!3d40.321522269349394!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40307f1adf8c1cd3%3A0x3a773a101ecbc724!2zIlPJmWTJmXLJmWsiIFRpY2FyyZl0IE3JmXJryZl6aQ!5e0!3m2!1saz!2s!4v1566477758645!5m2!1saz!2s"
            width="100%" height="500" frameborder="0" allowfullscreen></iframe>
    </div>
</div>
</div>
<?php require_once "footer.php" ?>