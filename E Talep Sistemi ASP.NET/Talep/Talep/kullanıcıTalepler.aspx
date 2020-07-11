<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanıcıTalepler.aspx.cs" Inherits="Talep.kullanıcıTalepler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<link href="kullanıcı.css" rel="stylesheet" />--%>
    <link href="admin2.css" rel="stylesheet" />
    <!--bootstrap css-->
     <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" />

    <!--Jquery datepicker kütüphanesi-->
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

    <style type="text/css">
        .auto-style1 {
            float: left;
            width: 314px;
        }
        .auto-style2 {
            float: left;
            width: 230px;
        }
        .auto-style3 {
            float: left;
            width: 249px;
        }
        .auto-style4 {
            float: left;
            width: 211px;
        }
    </style>

    </head>
<body>
    <form id="form1" runat="server">

            <div class="menu">
                <asp:Label ID="lbl_kID" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="lbl_ilktarih" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="lbl_ikincitarih" runat="server" Text="Label"></asp:Label>
                <p style="font-size:25px;text-align:center;color:#fff; margin-top:8px;">Kullanıcı Talepler</p>
            </div>

            <div>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">ANASAYFA</asp:LinkButton>
            </div>
            


            <div class="govde">
           
                <div style="margin-left:120px;">

                            <div style="margin-left:100px; margin-top:50px;" class="auto-style1">
                    <div style="margin-left:50px; " class="auto-style3">
                       <asp:Label ID="Label3" runat="server" Text="Başlangıç : "></asp:Label><asp:TextBox ID="takvim1" runat="server" Width="133px"></asp:TextBox>
                    </div>
            </div>

        <div style="margin-left:20px; margin-top:50px;" class="auto-style4">

         <div style="float:left; margin-left:10px; margin-top:20px;">
              <p >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button class="btn btn-outline-primary" ID="btn_listele" runat="server" Text="Listele" OnClick="btn_listele_Click" ValidateRequestMode="Enabled" Width="91px" /></p>
         </div>
            </div>
             <div style="margin-left:20px; margin-top:50px; " class="auto-style2">   
                       <asp:Label ID="Label4" runat="server" Text="Bitiş : "></asp:Label><asp:TextBox ID="takvim2" runat="server" Width="136px"></asp:TextBox>
                 </div>

</div>

                <div class="govdesag" style="float:left; margin-left:300px; margin-top:50px;">                 
                    <asp:GridView ID="GridView1" runat="server" Height="305px" OnRowDataBound="GridView1_RowDataBound1" Width="681px" AutoGenerateColumns="False" DataKeyNames="t_ID"  CellPadding="4" ForeColor="White" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="t_ID" HeaderText="Talep ID" InsertVisible="False" ReadOnly="True" SortExpression="t_ID" />
                            <asp:BoundField DataField="t_GelenTarih" HeaderText="Gidiş Tarihi" SortExpression="t_GelenTarih" />
                            <asp:BoundField DataField="t_Baslik" HeaderText="Başlık" SortExpression="t_Baslik" />
                            <asp:BoundField DataField="t_CevapTarih" HeaderText="Cevap Tarih" SortExpression="t_CevapTarih" />
                            <asp:BoundField DataField="t_İslemDurumu" HeaderText="İşlem Durumu" SortExpression="t_İslemDurumu" />
                            <asp:BoundField DataField="adminAD" HeaderText="Cevaplayan" SortExpression="adminAD" />          
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle HorizontalAlign="Left" BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:talepSistemiConnectionString %>" SelectCommand="SELECT [t_ID], [t_GelenTarih], [t_Baslik], [t_CevapTarih], [t_İslemDurumu], [t_CevaplayanID],[adminAd]  FROM [talep]   LEFT JOIN admin ON [t_CevaplayanID]=[adminID]  WHERE[t_GonderenID]=@t_ID and [t_GelenTarih] BETWEEN @k1 and @k2 ORDER BY [t_GelenTarih]">
                         <SelectParameters>
                                <asp:ControlParameter Name="t_ID" ControlID="lbl_kID" PropertyName="Text"/>
                                <asp:ControlParameter Name="k1" ControlID="takvim1" PropertyName="Text" />
                                <asp:ControlParameter Name="k2" ControlID="takvim2" PropertyName="Text" />
                        </SelectParameters>  
                    </asp:SqlDataSource>            
                </div>
            </div>
            <div class="alt" style="margin-bottom:10px;"></div>
    </form>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

</body>
</html>
