<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanıcıCevapGoruntule.aspx.cs" Inherits="Talep.kullanıcıCevapGoruntule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="admin.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 231px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      

                 <div style="background-color:#2a595c; height:40px;margin-top:0;">

                <p style="font-size:20px; color:#fff; text-align:center; margin-top:8px;">Talep Cevabı Görüntüleme Paneli</p>

                 </div>

            <div>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">ANASAYFA</asp:LinkButton>
            </div>



            <div style="margin-top:100px; margin-left:200px;">

                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3" style="text-align: right">&nbsp;</td>
                        <td class="auto-style2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3" style="text-align: right">Cevaplanan Talep :</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txt_TalepBaslik" runat="server" CssClass="textboxGorsel" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" style="text-align: right">Cevaplanan Tarih :</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txt_CevaplananTarih" runat="server" CssClass="textboxGorsel" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" style="text-align: right">Talep Cevabı :</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txt_TalepCevabı" runat="server" CssClass="textboxGorsel" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" style="text-align: right">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <asp:Button ID="btn_Tamam" runat="server" CssClass="butonGorsel" Height="37px" OnClick="btn_Tamam_Click" Text="Tamam" Width="217px" />
                        </td>
                    </tr>
                </table>

            </div>

       
    </form>
</body>
</html>
