<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="talepGoster.aspx.cs" Inherits="Talep.talepGoster" %>

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
        .auto-style3 {
            border: 1px dotted #2a595c;
            margin-left: 154;
        }
        .auto-style4 {
            width: 122px;
        }
        .auto-style5 {
            height: 21px;
            width: 122px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="menu" style="text-align:center; color:#fff; font-size:25px; margin-top:0; margin-left:150px;">

            <p style="margin-top:8px;">TALEP CEVAPLAMA PANELİ</p>
        </div>

           <div>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">ANASAYFA</asp:LinkButton>
            </div>

        <div>
            <asp:Label ID="lbl_adminID" runat="server" Text="Label"></asp:Label>
        </div>
        <div style=" margin-left:350px;">

            <table class="auto-style1">
                <tr>
                    <td style="background-color: #2a595c; text-align: right; color: white;" class="auto-style4">Talep Gönderen : </td>
                    <td>
                        <asp:TextBox ID="txt_TalepGonderen" runat="server" CssClass="textboxGorsel" Height="28px" Width="76px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txt_GonderenAd" runat="server" CssClass="auto-style3" Height="28px" Width="236px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #2a595c; text-align: right; color: white;" class="auto-style4">Geliş Tarihi :</td>
                    <td>
                        <asp:TextBox ID="txt_GelisTarihi" runat="server" Height="27px" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #2a595c; text-align: right; color: white;" class="auto-style4">Başlık :</td>
                    <td>
                        <asp:TextBox ID="txt_Baslik" runat="server" Height="27px" Width="350px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #2a595c; text-align: right; color: white;" class="auto-style4">İçerik :</td>
                    <td>
                        <asp:TextBox ID="txt_Icerik" runat="server" Height="228px" Width="350px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #2a595c; text-align: right; color: white;" class="auto-style4">Dosya :</td>
                    <td>
                    <asp:TextBox ID="txt_dosya"  runat ="server" Height="30px" Width="102px"></asp:TextBox> &nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server"  OnClick="LinkButton2_Click" Font-Size="20pt" Width="60px">İndir</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="background-color: #2a595c; text-align: right; color: white;">Talep Cevabı :</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txt_TalepCevap" runat="server" Height="245px" Width="350px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="background-color: #2a595c; text-align: right; color: white;">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btn_Cevapla" runat="server" BackColor="#2A595C" CssClass="menubuton" ForeColor="White" Height="59px" Text="Cevapla" Width="278px" OnClick="btn_Cevapla_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" style="background-color: #2a595c; text-align: right; color: white;"></td>
                    <td class="auto-style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="İşleme Alındı" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Reddedildi" />
&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
