<%@ Page Language="C#"  EnableEventValidation ="false" AutoEventWireup="true" CodeBehind="adminAnasayfa.aspx.cs" Inherits="Talep.adminAnasayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title></title>
   <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#takvim1,#takvim2").datepicker({
                showOn: "button",
                buttonImage: "images/takvim.png",
                buttonImageOnly: true,
                dateFormat: "yy-mm-dd",
                monthNames: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran", "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"],
                dayNamesMin: ["Pts", "Sl", "Çrş", "Prş", "Cm", "Cts", "Pzr"]
            });
        });
    </script>

      <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous"/>
    <link href="kullanıcı.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" />


    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 30px;
        }
        .auto-style2 {
            width: 453px;
            height: 36px;
        }
        .auto-style3 {
            width: 83px;
            height: 36px;
        }
        .auto-style4 {
            height: 34px;
            width: 37px;
        }
        .auto-style5 {
            height: 28px;
            width: 31px;
        }
        .auto-style6 {
            height: 36px;
        }
        .auto-style8 {
            width: 100%;
            height: 296px;
        }
        .auto-style9 {
            display: inline-block;
            width: 29px;
            height: 46px;
            background-size: 100% 100%;
            background: url('data:image/svg+xml;charset=utf8,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' fill=\'%23fff\' viewBox=\'0 0 8 8\'%3E%3Cpath d=\'M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z\'/%3E%3C/svg%3E') no-repeat center;
        }
        .auto-style10 {
            float: left;
        }
        </style>
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
                      <img class="d-block w-100" src=  "images/s2.jpg"    alt="2.Resim"/>
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
          
            <div class="menu">
                <asp:Button ID="btn_TalepGoruntule" runat="server" Text="Talep Durumları" CssClass="menubuton btn btn-danger" OnClick="btn_TalepGoruntule_Click" />
                <asp:Button ID="btn_CevaplanmışTalepler" runat="server" Text="Talep İçerikleri" CssClass="menubuton btn btn-danger" OnClick="btn_CevaplanmışTalepler_Click"  />
                <asp:Button ID="btn_MesajGonder" runat="server" Text="Mesaj Gönder" CssClass="menubuton btn btn-danger" OnClick="btn_MesajGonder_Click" />
                <asp:Button ID="btn_kEkle" runat="server" Text="Kullanıcı Ekle" CssClass="menubuton btn btn-danger" OnClick="btn_kEkle_Click" />
                <asp:Button ID="Button3" runat="server" Text="Admin Ekle" CssClass="menubuton btn btn-danger" OnClick="Button3_Click"  />
                <asp:Button ID="Button1" runat="server" Text="Kullanıcı Bilgileri" CssClass="menubuton btn btn-danger" OnClick="Button1_Click"  />
                <asp:Button ID="Button2" runat="server" Text="ÇIKIŞ" CssClass="btn btn-danger" OnClick="Button2_Click" Width="51px" Height="48px" style="margin-top: 22"   />
            </div>
            <div class="govde">
                <div >
                    <div >
                        <p style="font-size:25px; color:#fff; ">PROFİLİM</p>
                    </div>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                       <asp:Label ID="Label5" runat="server" Text="PROFİLİM" Font-Size="25pt" ForeColor="#CC0000"></asp:Label> 
                        <asp:Panel ID="Panel1" runat="server">
                                            Yetki&nbsp;:
                        <asp:Label ID="lbl_Yetki" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ad :
                        <asp:Label ID="lbl_Ad" runat="server" Text="Label"></asp:Label>
                        
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Soyad :
                        <asp:Label ID="lbl_Soyad" runat="server" Text="Label"></asp:Label>
                       
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E-mail :
                        <asp:Label ID="lbl_Email" runat="server" Text="Label"></asp:Label>
                        
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kullanıcı Ad&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbl_KullanıcıAd" runat="server" Text="Label"></asp:Label>
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbl_ID" runat="server" Text='<%# Eval("lbl_ID") %>'></asp:Label>

                        </asp:Panel>
                </div>   

                    <div style="float:left; margin-left:50px; margin-top:20px;">
                       <p><asp:Label ID="Label3" runat="server" Text="Başlangıç : "></asp:Label><asp:TextBox ID="takvim1" runat="server"></asp:TextBox></p>
                    </div>

                    <div style="float:left; margin-left:50px; margin-top:20px;">
                       <p >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button class="btn btn-outline-primary" ID="btn_listele" runat="server" Text="Listele" OnClick="btn_listele_Click" ValidateRequestMode="Enabled" Width="123px" /></p>
                    </div>

                    <div style="float:right; margin-right:50px; margin-top:20px;">   
                       <p> <asp:Label ID="Label4" runat="server" Text="Bitiş : "></asp:Label><asp:TextBox ID="takvim2" runat="server"></asp:TextBox></p>
                    </div>
                
                    <div>
                    </div>

                    <div style="margin-top:150px; margin-left:150px;" runat="server">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  DataKeyNames="t_ID"  Height="154px" OnRowCommand="GridView1_RowCommand1" OnRowDataBound="GridView1_RowDataBound1" Width="731px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                       
                                        <%--isible='<%#Eval("DosyaYol").ToString() == "" ? "" : Eval("DosyaYol", "true")%>'--%>

                                        <asp:ImageButton runat="server" ID="myImageButton" Visible='<%# Eval("DosyaYol").ToString()!=""  %>'  style="width:25px; height:25px;"  ImageUrl="images/dosya.jpg" CommandName="dosya"  CommandArgument='<%#Bind("t_ID") %>' />
                                        

                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField InsertVisible="False" SortExpression="t_ID">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("t_ID") %>'></asp:Label>
                                        
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="goruntule" CommandName="goster" CommandArgument='<%# Bind("t_ID") %>' runat="server">Görüntüle</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="t_ID" HeaderText="Talep ID" ReadOnly="True" SortExpression="t_ID" />
                                <asp:BoundField DataField="t_GonderenID" HeaderText="Gönderen ID" SortExpression="t_GonderenID" />
                                <asp:BoundField DataField="t_GelenTarih" HeaderText="Gelen Tarih" SortExpression="t_GelenTarih" />
                                <asp:BoundField DataField="t_Baslik" HeaderText="Başlık" SortExpression="t_Baslik" />
                                <asp:BoundField DataField="t_İslemDurumu" HeaderText="İşlem Durumu" SortExpression="t_İslemDurumu" />
                                
                                <asp:BoundField  DataField="DosyaYol" Visible="false" HeaderText="DosyaYol" SortExpression="DosyaYol" />
                                
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                     
                    
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:talepSistemiConnectionString %>" DeleteCommand="DELETE FROM [talep] WHERE [t_ID] = @t_ID" InsertCommand="INSERT INTO [talep] ([t_GonderenID], [t_GelenTarih], [t_Baslik], [t_İslemDurumu]) VALUES (@t_GonderenID, @t_GelenTarih, @t_Baslik, @t_İslemDurumu)" SelectCommand="SELECT [t_ID], [t_GonderenID], [t_GelenTarih], [t_Baslik], [t_İslemDurumu]  FROM [talep]   WHERE [t_GelenTarih] BETWEEN @k1 and @k2 ORDER BY [t_GelenTarih]  " UpdateCommand="UPDATE [talep] SET [t_GonderenID] = @t_GonderenID, [t_GelenTarih] = @t_GelenTarih, [t_Baslik] = @t_Baslik, [t_İslemDurumu] = @t_İslemDurumu WHERE [t_ID] = @t_ID">
                             <SelectParameters>
                                <asp:ControlParameter Name="k1" ControlID="takvim1" PropertyName="Text" />
                                <asp:ControlParameter Name="k2" ControlID="takvim2" PropertyName="Text" />
                            </SelectParameters>  
                            <DeleteParameters>
                                <asp:Parameter Name="t_ID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="t_GonderenID" Type="Int32" />
                                <asp:Parameter Name="t_GelenTarih" Type="DateTime" />
                                <asp:Parameter Name="t_Baslik" Type="String" />
                                <asp:Parameter Name="t_İslemDurumu" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="t_GonderenID" Type="Int32" />
                                <asp:Parameter Name="t_GelenTarih" Type="DateTime" />
                                <asp:Parameter Name="t_Baslik" Type="String" />
                                <asp:Parameter Name="t_İslemDurumu" Type="String" />
                                <asp:Parameter Name="t_ID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                    </div>
          
                    <div style="margin-top:25px; margin-left:450px;" class="auto-style10">
                        <asp:Button ID="btn_Excel" runat="server" Text="Excel'e Aktar" class="btn btn-primary" Height="40px" Width="125px" OnClick="btn_Excel_Click"/>
                    </div>

                    <div style="margin-top:100px; margin-left:150px;">

                    <asp:DataList ID="dl_cevaplanmısTalepler" runat="server" Width="684px" Height="16px">
                        <HeaderTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style2">TALEP ADI</td>
                                    <td class="auto-style3">GÖSTER</td>
                                    <td class="auto-style6">SİL</td>
                                </tr>
                            </table>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("t_Baslik") %>'></asp:Literal>
                                    </td>
                                    <td class="auto-style3">
                                       <a href="talepGoster.aspx?t_ID=<%#Eval("t_ID")%>"><img alt="" class="auto-style4" src="images/magnifying_glass.png"/></a>
                                    </td>
                                    <td class="auto-style6">
                                        <a href="adminAnasayfa.aspx?t_ID=<%# Eval("t_ID") %>&islem=sil"><img alt="" class="auto-style5" src="images/sil.jpg" /></a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>

                    </div>

                <div>
                 <%--   --%>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="t_ID"  Height="154px" OnRowCommand="GridView1_RowCommand1" OnRowDataBound="GridView1_RowDataBound1" Width="662px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnRowCreated="GridView2_RowCreated" Visible="False">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:ImageButton runat="server" Visible="false" ID="myImageButton0" style="width:25px; height:25px;"  ImageUrl="images/dosya.jpg" CommandName="dosya"  CommandArgument='<%#Bind("t_ID") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField InsertVisible="False" SortExpression="t_ID">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("t_ID") %>'></asp:Label>
                                        
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="goruntule0" CommandName="goster" CommandArgument='<%# Bind("t_ID") %>' runat="server">Görüntüle</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="t_ID" HeaderText="Talep ID" ReadOnly="True" SortExpression="t_ID" />
                                <asp:BoundField DataField="t_GonderenID" HeaderText="Gönderen ID" SortExpression="t_GonderenID" />
                                <asp:BoundField DataField="t_GelenTarih" HeaderText="Gelen Tarih" SortExpression="t_GelenTarih" />
                                <asp:BoundField DataField="t_Baslik" HeaderText="Başlık" SortExpression="t_Baslik" />
                                <asp:BoundField DataField="t_İslemDurumu" HeaderText="İşlem Durumu" SortExpression="t_İslemDurumu" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>

                </div>
            </div>
        &nbsp;&nbsp;&nbsp;
        </div>
    </form>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <%--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</body>
</html>
