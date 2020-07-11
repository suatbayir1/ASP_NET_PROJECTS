<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminMesajGonder.aspx.cs" Inherits="Talep.adminMesajGonder" %>

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
            border: 1px dotted #2a595c;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <div>
          <div class="menu" >
              <p style="font-size:20px; color:#fff; text-align:center; margin-top:8px;">Mesaj Gönderme Paneli</p>
           

                <div style="margin-top:150px;">
                &nbsp;<table class="auto-style1" style="background-color: #2a595c;">
                    <tr>
                        <td style="text-align: right; background-color: #2a595c; color: #FFFFFF">&nbsp;&nbsp;&nbsp; Gönderilecek Kişi :</td>
                        <td>
                            <asp:DropDownList ID="dd_kisiler" runat="server" Height="33px" Width="190px" OnSelectedIndexChanged="dd_kisiler_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;<asp:TextBox ID="txt_ID" runat="server" Width="32px"></asp:TextBox>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:talepSistemiConnectionString %>" SelectCommand="SELECT [k_Ad], [k_Soyad] FROM [kullanici]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; background-color: #2a595c; color: #FFFFFF">Mesaj Başlık :</td>
                        <td>
                            <asp:TextBox ID="txt_MesajBaslik" runat="server" CssClass="auto-style2" Height="26px" Width="290px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; background-color: #2a595c; color: #FFFFFF">Mesaj İçerik :</td>
                        <td>
                            <asp:TextBox ID="txt_MesajIcerik" runat="server" CssClass="auto-style2" Height="226px" TextMode="MultiLine" Width="290px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: right; background-color: #2a595c; color: #FFFFFF">&nbsp;</td>
                        <td>
                            <asp:Button ID="btn_MesajGonder" runat="server" CssClass="butonGorsel" Height="46px" Text="Mesaj Gönder" Width="169px" OnClick="btn_MesajGonder_Click" />
                        </td>
                    </tr>
                </table>

            </div>
                </div>
            </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
