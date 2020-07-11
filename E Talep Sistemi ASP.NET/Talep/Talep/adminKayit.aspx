<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminKayit.aspx.cs" Inherits="Talep.admin.adminKayit" %>

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
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="menu" style="color:#fff; ">
            <p style="font-size:20px; color:#fff; text-align:center; margin-top:8px;">Admin Kayıt Paneli</p>
        </div>

        <table class="auto-style1" style="margin-top:200px; margin-left:150px;">
            <tr>
                <td style="text-align: right" class="auto-style2">Ad :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_Ad" runat="server" MaxLength="20" CssClass="textboxGorsel" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">Soyad :</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_Soyad" runat="server" MaxLength="20" CssClass="textboxGorsel" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">Kullanıcı Adı :</td>
                <td>
                    <asp:TextBox ID="txt_kAdi" MaxLength="15" runat="server" CssClass="textboxGorsel"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">Şifre :</td>
                <td>
                    <asp:TextBox ID="txt_sifre" runat="server" MaxLength="15" TextMode="Password" CssClass="textboxGorsel"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" ForeColor="#CC0000" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">E-mail :</td>
                <td>
                    <asp:TextBox ID="txt_email" runat="server" MaxLength="25" CssClass="textboxGorsel"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">&nbsp;</td>
                <td>
                    <asp:Button ID="btn_kayit" runat="server" Text="Kayıt Ol" CssClass="butonGorsel" OnClick="btn_kayit_Click" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
