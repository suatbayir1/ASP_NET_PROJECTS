<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanıcıGelenMesajlar.aspx.cs" Inherits="Talep.kullanıcıGelenMesajlar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="kullanıcı.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 21px;
        }
        .auto-style4 {
            width: 32px;
            height: 23px;
        }
        .auto-style5 {
            height: 21px;
            width: 227px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div>
            <div class="menu" style="margin-top:0; margin-left:175px;">
                <p style="font-size:25px; text-align:center; color:#fff; margin-top:8px;">Mesaj Görüntüleme Paneli</p>
            </div>

            <div>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">ANASAYFA</asp:LinkButton>
            </div>
       
            </div>
        
            <div style="margin-left:400px;">

                <asp:DataList ID="dl_mesajlar" runat="server" Height="140px" Width="707px">
                    <HeaderTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">
                                    <table class="auto-style1">
                                        <tr>
                                            <td class="auto-style5">MESAJ ID</td>
                                            <td class="auto-style3">MESAJ BAŞLIK</td>
                                            <td class="auto-style3">GÖSTER</td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="auto-style3">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td class="auto-style3">&nbsp;</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">
                                    <asp:Literal ID="a" runat="server" Text='<%# Eval("m_ID") %>'></asp:Literal>
                                </td>
                                <td class="auto-style3">
                                    <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("m_Baslik") %>'></asp:Literal>
                                </td>
                                <td class="auto-style3">
                                  <a href="kullanıcıMesajGoster.aspx?m_ID=<%# Eval("m_ID") %>"> <img alt="" class="auto-style4" src="images/magnifying_glass.png" /></a> 
                                    &nbsp; 
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>

          
                
        </div>
        <asp:Label ID="lbl_ID" runat="server" ClientIDMode="Static" Text="Label"></asp:Label>
             

        <div>

            <br />

        </div>
    </form>
</body>
</html>
