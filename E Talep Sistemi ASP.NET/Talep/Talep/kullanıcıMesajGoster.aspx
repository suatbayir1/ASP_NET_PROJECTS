<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanıcıMesajGoster.aspx.cs" Inherits="Talep.kullanıcıMesajGoster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="kullanıcı.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="background-color:#2a595c; height:40px;margin-top:0;">
                <p style="font-size:25px;text-align:center;color:#fff; margin-top:8px;">Mesaj İçerik Paneli</p>
                </div>

               <div>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">ANASAYFA</asp:LinkButton>
            </div>

            <div style="margin-top:100px; margin-left:200px;">
                    
                    
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" style="text-align: right">Mesaj Gönderen :</td>
                        <td class="auto-style2" style="text-align: left">
                            <asp:TextBox ID="txt_mesajGonderen" runat="server" Height="30px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="text-align: right">Mesaj Başlık :</td>
                        <td class="auto-style2" style="text-align: left">
                            <asp:TextBox ID="txt_mesajBaslik" runat="server" Height="30px" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="text-align: right">Mesaj İçerik :</td>
                        <td class="auto-style2" style="text-align: left">
                            <asp:TextBox ID="txt_mesajIcerik" runat="server" Height="200px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="text-align: right">
                            <asp:Label ID="lbl_kID" runat="server" Text="Label"></asp:Label>
                            <asp:Label ID="lbl_mID" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="auto-style2" style="text-align: left">
                            <asp:Button ID="btn_tamam" runat="server" CssClass="butonGorsel" Height="40px" Text="Tamam" Width="184px" OnClick="btn_tamam_Click" />
                        </td>
                    </tr>
                </table>
                    
                    
            </div>
        </div>
    </form>
</body>
</html>
