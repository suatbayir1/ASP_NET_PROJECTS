<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanıcıAnasayfa.aspx.cs" Inherits="Talep.kullanıcı.a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="kullanıcı.css" rel="stylesheet" />
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous"/>
    <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" />
    </head>
<body>
    <form id="form1" runat="server">
        <div class="kutu">
           
                  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                      <img class="auto-style8" src="images/s1.jpg" alt="1.Resim"/>
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="images/s2.jpg" alt="2.Resim"/>
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="images/s3.jpg"  alt="3.Resim"/>
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="images/s4.jpg"  alt="4.Resim"/>
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="images/s5.jpeg"  alt="5.Resim"/>
                    </div>
                  </div>
                  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="auto-style9" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
         
            
            <div class="menu" style="text-align:center;">
                <asp:Button ID="btn_TalepGonder" runat="server" Text="Talep Gönder" CssClass="menubuton2 btn btn-outline-success" OnClick="btn_TalepGonder_Click"/>
                <asp:Button ID="btn_Talepler" runat="server" Text="Talep Durumları" CssClass="menubuton2 btn btn-outline-success" OnClick="btn_Talepler_Click"  />
                <asp:Button ID="btn_talepCevapları" runat="server" Text="Talep Cevapları" CssClass="menubuton2 btn btn-outline-success" OnClick="btn_talepCevapları_Click"  />
                <asp:Button ID="btn_GelenMesajlar" runat="server" Text="Gelen Mesajlar" CssClass="menubuton2 btn btn-outline-success" OnClick="btn_GelenMesajlar_Click" Width="151px" />
                <asp:Button ID="btn_Adminler" runat="server" Text="Yöneticiler" CssClass="menubuton2 btn btn-outline-success" OnClick="btn_Adminler_Click"  />
                <asp:Button ID="Button1" runat="server" Text="ÇIKIŞ" CssClass="menubuton2 btn btn-outline-danger" OnClick="Button1_Click" Width="57px" style="margin-left: 19px"   />
                </div>
            <div class="govde">
                <div class="govdesol">
                    <div class="govdesolbaslik">
                        <div><p style="font-size:25px; color:white;">PROFİLİM</p></div>
                    </div>
                    <div class="govdesolicerik label">
                        Ad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
                        <asp:Label ID="lbl_Ad" runat="server" Text="Label"></asp:Label>
                        <br />
                        Soyad&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
                        <asp:Label ID="lbl_Soyad" runat="server" Text="Label"></asp:Label>
                        <br />
                        Kullanıcı Adı&nbsp;&nbsp;&nbsp; :&nbsp;
                        <asp:Label ID="lbl_kAdi" runat="server" Text="Label"></asp:Label>
                        <br />
                        E-mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; :&nbsp;
                        <asp:Label ID="lbl_Email" runat="server" Text="Label"></asp:Label>
                        <br />
                        Kullanıcı ID&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
                        <asp:Label ID="lbl_ID" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lbl_MesajSayısı" runat="server" Font-Size="18pt" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Size="18pt" Text="Okunmamış mesajınız var"></asp:Label>
                        <br />
                    </div>
                </div>
                <div class="govdesag">
                    <div>
         
                    </div>
                    <br />
                    <br />
                </div>

            </div>
            
        </div>
    </form>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</body>
</html>
