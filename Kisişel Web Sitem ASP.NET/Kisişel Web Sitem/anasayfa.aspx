<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="Kisişel_Web_Sitem.anasayfa1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        body{
            background-color:#f5f1f1;
        }
    </style>

    <!-- AÇILIŞ RESMİ -->
    <section id="acılısresmi">
        <div class="overlay">
             <div class="container text-center">
                <div class="row text-center">
                    <div class="col-md-12">
                        <h3>BİRLİKTE KODLUYALIM</h3>
                        <asp:Button CssClass="btn btn-primary renkdegistir" ID="Button1" runat="server" Text="Ziyaret Et" Height="50px" Width="200px" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Programlama Türleri -->

    <section id="türler">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-4">
                    <img src="images/web.jpg" />
                    <h2>Web Programlama</h2>
                    <i class="fa fa-globe"></i>
                    <p>E-ticaret sisteminin gelişmesi ve insanların mağazalara gitmeden alışveriş yapmasını sağladığı için Web tabanlı programlama günümüzde ve gelecekte de popülülerliğini koruyacaktır.</p>
                </div>

                <div class="col-md-4">
                    <img src="images/desktop.jpg" />
                    <h2 >Masaüstü Programlama</h2>
                    <i class="fa fa-desktop"></i>
                    <p>Daha çok kurumsal şirketlerde, hastanelerde, devlet dairelerinde vs gibi yerlerde kullanılan programlama türüdür</p>
                </div>

                <div class="col-md-4">
                    <img src="images/mobil.png" />
                    <h2 >Mobil Programlama</h2>
                    <i class="fa fa-mobile"></i>
                    <p>Her zaman yanımızda telefonların bulunması ve kullanışı kolay olduğu için en fazla getirisi olan programlama türüdür.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <!-- PROGRAMLAMA DİLLERİ -->

    <section id="diller">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center">
                    <div class="sagakaydır">
                        <p><i class="fa fa-language"> </i></p>
                        <h3>Programlama Dilleri</h3>
                        <p>Programlama dili, programcının belli bir algoritmayı ifade etmek  için kullandığı standartlaşmış bir notasyondur. Bir programcı komutları yazmak için farklı programlama dilleri kullanabilir. Programlama dilleri, programcının bilgisayara hangi veri üzerinde işlem yapacağını, verinin nasıl depolanıp iletileceğini, hangi koşullarda hangi işlemlerin yapılacağını tam olarak anlatmasını sağlar. Şu ana kadar 2500'den fazla programlama dili yapılmıştır.</p>                      
                        <asp:Button CssClass="btn btn-primary renkdegistir" ID="Button2" runat="server" Text="Detaylı Bilgi" Height="50px" Width="200px" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="solakaydır">
                        <img src="images/language.png" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- SLİDER -->

        <section id="testimonials" class="text-center py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">   <!--8 sutunluk bolumu ortalar-->
                    <div class="quote">
                        <i class="fa fa-quote-left fa-4x"></i>
                    </div>
                    <div id="mySlider" class="carousel slide" data-ride="carousel" data-interval="10000">
                        <ol class="carousel-indicators">
                            <li data-target="#mySlider" data-slide-to="0" class="active"></li>
                            <li data-target="#mySlider" data-slide-to="1"></li>
                            <li data-target="#mySlider" data-slide-to="2"></li>
                            <li data-target="#mySlider" data-slide-to="3"></li>
                            <li data-target="#mySlider" data-slide-to="4"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <p>Teknolojinin ilerlemesi ve internetin gelişmesi ile beraber günümüzde bilginin gücü de ön plana çıkıtı ve bununla beraber internet dünyasındaki bir çok olgu ‘Bilgi Çöplüğü’ olarak anılmaya başladı. Bu çöplükten anlamlı verilerin de çıkabileceğini düşünen yazılım şirketleri, AR-GE çalışmalarını bu anlamda yürüterek Big Data olarak isimlendirdiğimiz olguyu ortaya çıkarttılar.</p>
                                <img src="images/bigdata.jpeg" class="img-fluid">
                            </div>

                            <div class="carousel-item ">
                                <p>Veri madenciliği, büyük ölçekli veriler arasından faydalı bilgiye ulaşma, bilgiyi madenleme işidir. Büyük veri yığınları içerisinden gelecekle ilgili tahminde bulunabilmemizi sağlayabilecek bağıntıların bilgisayar programı kullanarak aranması olarak da tanımlanabilir.</p>
                                <br /> 
                                <img src="images/datamining.png" class="img-fluid ">
                            </div>

                            <div class="carousel-item ">
                                <p>Nesnelerin interneti, fiziksel nesnelerin birbirleriyle veya daha büyük sistemlerle bağlantılı olduğu iletişim ağıdır. Nesnelerin tekil anahtar ile işaretlenerek İnternet altyapısı üzerinden birlikte çalışabilmesidir</p>
                                <br />
                                <img src="images/IOT.png" class="img-fluid ">
                            </div>

                            <div class="carousel-item ">
                                <p>Yapay zekâ, bir bilgisayarın veya bilgisayar kontrolündeki bir robotun çeşitli faaliyetleri zeki canlılara benzer şekilde yerine getirme kabiliyeti. İngilizce artificial intelligence kavramının akronimi olan AI sözcüğü de bilişimde sıklıkla kullanılır.</p>
                                <br />
                                <img src="images/yapayzeka.jpg" class="img-fluid ">
                            </div>

                            <div class="carousel-item ">
                                <p>Makine öğrenimi, bilgisayarların algılayıcı verisi ya da veritabanları gibi veri türlerine dayalı öğrenimini olanaklı kılan algoritmaların tasarım ve geliştirme süreçlerini konu edinen bir bilim dalıdır.                          </p>
                                <br /><br />
                                <img src="images/makineöğrenmesi.jpg" class="img-fluid ">
                            </div>

                        </div>

                        <div class="onceki">
                          <a class="carousel-control-prev" href="#mySlider" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                        </div>

                        <div class="sonraki">
                          <a class="carousel-control-next" href="#mySlider" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                          </a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- SİTE ÖRNEKLERİ VE FREELANCER -->

    <section id="freelance">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                      <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                      </ol>
                      <div class="carousel-inner">
                        <div class="carousel-item active">
                          <img class="d-block w-100" src="images/IEEE.png">
                        </div>
                        <div class="carousel-item">
                          <img class="d-block w-100" src="images/github.png">
                        </div>
                        <div class="carousel-item">
                          <img class="d-block w-100" src="images/computersociety.jpg">
                        </div>
                      </div>
                      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                      </a>
                      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                      </a>
                    </div>
                </div>

                <div class="col-md-6 text-center">
                    <h3>Freelance Olarak Çalışmaktayım</h3>
                    <i class="fa fa-bullhorn"></i>
                    <p>Merhaba, freelance olarak proje bazlı çalışmaktayım. Web siteleri, masaüstü otomasyon yazılımı, veritabanı gibi konularda iş teklifleriniz için iletişim bölümündeki formu doldurarak bana ulaşabilirsiniz.</p>
                    <asp:Button CssClass="btn btn-primary renkdegistir" ID="Button3" runat="server" Text="Form'a Git" Height="50px" Width="200px" />
                </div>
            </div>
        </div>
    </section>

    <!-- GALERİ -->

    <section id="galeri">
        <div class="container-fluid">
            <div class="row">

                <div class="col-md-3">
                    <a href="images/acılısresmi.jpg" data-lightbox="image-1" data-title="WEB DESIGN">
                        <div class="imageContainer">
                            <img src="images/acılısresmi.jpg" class="img-fluid">
                            <div class="imageOverlay">
                                <div class="imageText">
                                    <i class="fa fa-search-plus"></i>
                                    <h4>WEB DESIGN</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="images/acılısresmi.jpg" data-lightbox="image-1" data-title="WEB DESIGN">
                        <div class="imageContainer">
                            <img src="images/acılısresmi.jpg" class="img-fluid">
                            <div class="imageOverlay">
                                <div class="imageText">
                                    <i class="fa fa-search-plus"></i>
                                    <h4>WEB DESIGN</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="images/acılısresmi.jpg" data-lightbox="image-1" data-title="WEB DESIGN">
                        <div class="imageContainer">
                            <img src="images/acılısresmi.jpg" class="img-fluid">
                            <div class="imageOverlay">
                                <div class="imageText">
                                    <i class="fa fa-search-plus"></i>
                                    <h4>WEB DESIGN</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="images/acılısresmi.jpg" data-lightbox="image-1" data-title="WEB DESIGN">
                        <div class="imageContainer">
                            <img src="images/acılısresmi.jpg" class="img-fluid">
                            <div class="imageOverlay">
                                <div class="imageText">
                                    <i class="fa fa-search-plus"></i>
                                    <h4>WEB DESIGN</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>

            <div class="row">

                <div class="col-md-3">
                    <a href="images/acılısresmi.jpg" data-lightbox="image-1" data-title="WEB DESIGN">
                        <div class="imageContainer">
                            <img src="images/acılısresmi.jpg" class="img-fluid">
                            <div class="imageOverlay">
                                <div class="imageText">
                                    <i class="fa fa-search-plus"></i>
                                    <h4>WEB DESIGN</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="images/acılısresmi.jpg" data-lightbox="image-1" data-title="WEB DESIGN">
                        <div class="imageContainer">
                            <img src="images/acılısresmi.jpg" class="img-fluid">
                            <div class="imageOverlay">
                                <div class="imageText">
                                    <i class="fa fa-search-plus"></i>
                                    <h4>WEB DESIGN</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="images/acılısresmi.jpg" data-lightbox="image-1" data-title="WEB DESIGN">
                        <div class="imageContainer">
                            <img src="images/acılısresmi.jpg" class="img-fluid">
                            <div class="imageOverlay">
                                <div class="imageText">
                                    <i class="fa fa-search-plus"></i>
                                    <h4>WEB DESIGN</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="images/acılısresmi.jpg" data-lightbox="image-1" data-title="WEB DESIGN">
                        <div class="imageContainer">
                            <img src="images/acılısresmi.jpg" class="img-fluid">
                            <div class="imageOverlay">
                                <div class="imageText">
                                    <i class="fa fa-search-plus"></i>
                                    <h4>WEB DESIGN</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
