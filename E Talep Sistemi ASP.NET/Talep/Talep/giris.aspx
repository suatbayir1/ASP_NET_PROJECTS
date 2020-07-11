<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="Talep.giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="admin.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            background-color: #2a595c;
            color: #fff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
         <div style="background-color:#2a595c; height:40px;margin-top:0;">
            <p style="font-size:20px; color:#fff; text-align:center; margin-top:10px; "> TALEP BİLGİ SİSTEMİ</p> 
        </div>

        <div style="margin-top:150px;">
            <div style="margin-left:550px; ">
                <asp:Button ID="Button1" runat="server" Text="Admin Girişi" CssClass="butonGorsel" Height="70px" Width="200px" OnClick="Button1_Click" />
            </div>
            
            <div style="margin-left:550px; margin-top:20px;">
                 <asp:Button ID="Button2" runat="server" Text="Kullanıcı Girişi" CssClass="butonGorsel" Height="70px" Width="200px" OnClick="Button2_Click" />
            </div>
        </div>
        </div>
    </form>
</body>
</html>
