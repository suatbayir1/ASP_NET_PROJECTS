<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminGiris.aspx.cs" Inherits="Talep.admin.admin" %>

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
            height: 26px;
        }
        .auto-style4 {
            background-color: #2a595c;
            color: #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="menu" style="width:100%; text-align: right; font-size:25px; color:#fff;">

               <p style="font-size:20px; color:#fff; text-align:center; margin-top:8px;"> Admin Giriş Paneli</p>

            </div>

            <table class="auto-style1" style="margin-top:100px; margin-left:100px;">
                <tr>
                    <td class="auto-style2" style="text-align: right">Kullanıcı Adı :</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_kAdi" runat="server" CssClass="textboxGorsel" Height="29px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: right">Şifre :</td>
                    <td class="auto-style3" style="margin-left: 40px">
                        <asp:TextBox ID="txt_kSifre" runat="server" CssClass="textboxGorsel" Height="29px" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">&nbsp;</td>
                    <td style="margin-left: 40px">
                        <asp:Button ID="btn_Giris" runat="server" Text="Giriş Yap" CssClass="auto-style4" Height="53px" Width="200px" OnClick="btn_Giris_Click1"  />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">&nbsp;</td>
                    <td>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
