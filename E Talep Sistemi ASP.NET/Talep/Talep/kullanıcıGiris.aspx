<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanıcıGiris.aspx.cs" Inherits="Talep.admin.giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giriş Menüsü</title>
    <link href="admin2.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            background-color: #2a595c;
            color: #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="menu">
            <p style="font-size:20px; color:#fff; text-align:center; margin-top:8px;">Kullanıcı Giriş Paneli</p>
            </div>
        <table class="auto-style1" style="margin-top:200px; margin-left:100px;">
            <tr>
                <td style="text-align: right">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right">Kullanıcı Adı :</td>
                <td>
                    <asp:TextBox ID="txt_kAdi" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">Şifre :</td>
                <td>
                    <asp:TextBox ID="txt_Sifre" runat="server" CssClass="textboxGorsel" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">&nbsp;</td>
                <td style="margin-left: 40px">
                    <asp:Button ID="btnGiris" runat="server" Text="Giriş Yap" CssClass="auto-style2" OnClick="btnGiris_Click" Height="43px" Width="205px" />
                </td>
            </tr>
            <tr>
                <td style="text-align: right">&nbsp;</td>
                <td style="margin-left: 40px">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
            
        <div>
        </div>
    </form>
</body>
</html>
