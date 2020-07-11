<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanıcıKayit.aspx.cs" Inherits="Talep.kullanıcı.kullanıcıKayit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="kullanıcı.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="menu" style="text-align:right; font-size:25px; color:#fff; width:100%">
                <p style="font-size:20px; color:#fff; text-align:center; margin-top:8px;">Kullanıcı Kayıt Paneli</p>
            </div>

            <table class="auto-style1" style="margin-left:200px;">
                <tr>
                    <td style="text-align: right">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: right">Ad :</td>
                    <td>
                        <asp:TextBox ID="txt_Ad" runat="server" MaxLength="20"  CssClass="textboxGorsel" Height="36px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">Soyad :</td>
                    <td>
                        <asp:TextBox ID="txt_Soyad" runat="server" MaxLength="20" CssClass="textboxGorsel" Height="38px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">E-mail :</td>
                    <td>
                        <asp:TextBox ID="txt_Email" runat="server" MaxLength="25" CssClass="textboxGorsel" Height="38px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">Kullanıcı Adı :</td>
                    <td>
                        <asp:TextBox ID="txt_kAd" runat="server" MaxLength="15" CssClass="textboxGorsel" Height="40px" Width="275px"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">Şifre :</td>
                    <td>
                        <asp:TextBox ID="txt_Sifre" runat="server" MaxLength="15" CssClass="textboxGorsel" TextMode="Password" Height="32px" Width="275px"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" ForeColor="#CC0000" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">Departman :</td>
                    <td>
                        <asp:TextBox ID="txt_departman" runat="server" MaxLength="20" CssClass="textboxGorsel" Height="32px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_KayıtOl" runat="server" CssClass="butonGorsel" Text="Kayıt Ol" Height="39px" Width="156px" OnClick="btn_KayıtOl_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
