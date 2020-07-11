<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Kisişel_Web_Sitem.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        body{
            background-color:#f5f1f1;
        }
    </style>

    <!-- FORM -->

    <section id="iletisim">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <form>
                        <h3 class="mt-2 mb-4">Aşağıdaki formu doldurarak bana soru sorabilirsiniz </h3>
                        <div class="form-group mt-2">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon text-center">
                                    <i class="fa fa-user fa-2x"></i>
                                </span>
                                <asp:TextBox  ID="TextBox1" runat="server" placeholder="Adınız ve Soyadınız.." Height="40px" Width="400px"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon text-center">
                                    <i class="fa fa-envelope fa-2x"></i>
                                </span>
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="Soru Başlığı.." Height="40px" Width="400px"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon text-center">
                                    <i class="fa fa-pencil fa-2x pt-5"></i>
                                </span>
                                <textarea id="TextArea1" rows="5" placeholder="Sorunuz.." style="width: 401px; margin-right: 0"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon text-center">
                                    <i class="fa fa-pencil fa-2x"></i>
                                </span>
                                <asp:TextBox ID="TextBox4" runat="server" placeholder="E-mail adresiniz.." Height="40px" OnTextChanged="TextBox4_TextChanged" Width="400px"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="input-group input-group-lg">
                                <asp:Button CssClass="btn btn-primary font" ID="Button1" runat="server" Text="Soru Sor" Height="40px" Width="440px" />
                            </div>
                        </div>
                    </form>
                </div>

                <div class="col-md-6">                 
                    <form>
                        <h3 class="mt-2 mb-4">Aşağıdaki formu doldurarak iş teklifinde bulunabilirsiniz.</h3>
                        <div class="form-group mt-2">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon text-center">
                                    <i class="fa fa-user fa-2x"></i>
                                </span>
                                <asp:TextBox  ID="TextBox5" runat="server" placeholder="Şirket ismi veya Adınız.." Height="40px" Width="400px"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon text-center">
                                    <i class="fa fa-envelope fa-2x"></i>
                                </span>
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="400px">
                                    <asp:ListItem Selected="True">İş Türünü Seçiniz..</asp:ListItem>
                                    <asp:ListItem>Web Programlama</asp:ListItem>
                                    <asp:ListItem>Masaüstü Programlama</asp:ListItem>
                                    <asp:ListItem>Mobil Programlama</asp:ListItem>
                                    <asp:ListItem>Diğer</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group input-group-lg">
                                <span class="input-group-addon text-center">
                                    <i class="fa fa-pencil fa-2x pt-5"></i>
                                </span>
                                <textarea id="TextArea2" rows="5" placeholder="İş Hakkında Bilgi.." style="width: 400px"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group input-group-lg ">
                                <span class="input-group-addon text-center">
                                    <i class="fa fa-pencil fa-2x"></i>
                                </span>
                                <asp:TextBox ID="TextBox8" runat="server" placeholder="E-mail adresiniz.." Height="40px" OnTextChanged="TextBox4_TextChanged" Width="400px"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="input-group input-group-lg">
                                <asp:Button  CssClass="btn btn-primary font" ID="Button3" runat="server" Text="İş Teklif Et" Height="40px" Width="440px" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
