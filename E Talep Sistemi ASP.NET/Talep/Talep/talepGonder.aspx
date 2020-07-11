<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="talepGonder.aspx.cs" Inherits="Talep.kullanıcı.talepGonder" %>

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

        <div class="menu" style="width:100%; font-size:25px;>
           </div>
        <div style="margin-top:150px; margin-left:100px;">
        <p style="font-size:25px;text-align:center;color:#fff; margin-top:8px;">Talep Gönderme Paneli</p>    
        </div>
            <table class="auto-style1" style="margin-left:150px; margin-top:100px;" >
                <tr>
                    <td style="text-align: right">Talep Başlık :</td>
                    <td>
                        <asp:TextBox ID="txt_Baslik" runat="server" MaxLength="20" CssClass="textboxGorsel" Height="38px" Width="202px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">Talep İçerik :</td>
                    <td>
                        <asp:TextBox ID="txt_Icerik" runat="server" CssClass="textboxGorsel" Height="291px" TextMode="MultiLine" Width="615px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">E-mail Adresiniz :</td>
                    <td>
                        <asp:TextBox ID="txt_Email" runat="server" CssClass="textboxGorsel" Height="33px" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">Dosya Ekle :</td>
                    <td>
                        <asp:FileUpload ID="fu_dosya" runat="server" CssClass="textboxGorsel" Height="28px" Width="300px" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_tGonder" runat="server" CssClass="butonGorsel" Text="Talep Gönder" OnClick="btn_tGonder_Click" Height="40px" Width="202px" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>

        
            
    </form>
</body>
</html>
