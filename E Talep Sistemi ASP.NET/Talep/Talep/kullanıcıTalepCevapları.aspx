<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanıcıTalepCevapları.aspx.cs" Inherits="Talep.kullanıcıTalepCevapları" %>

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
            width: 704px;
            height: 21px;
        }
        .auto-style3 {
            width: 117px;
            height: 21px;
        }
        .auto-style4 {
            height: 21px;
        }
        .auto-style5 {
            width: 38px;
            height: 23px;
        }
        .auto-style6 {
            height: 21px;
            width: 184px;
        }
        .auto-style7 {
            width: 172px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
               <div class="kutu">
            
            <div class="menu">
                <p style="font-size:25px;text-align:center;color:#fff; margin-top:8px;">Kullanıcı Talep Cevapları</p>
            </div>

            <div>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">ANASAYFA</asp:LinkButton>
            </div>

            <div class="govde">
                
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                
                <div class="govdesag">
                    <asp:DataList ID="dl_talepCevapları" runat="server" Height="192px" Width="614px">
                        <HeaderTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style7">TALEP ID</td>
                                    <td class="auto-style2">TALEP ADI&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; İŞLEM DURUMU</td>
                                    <td class="auto-style3">GÖSTER</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style6">
                                        <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("t_ID") %>'></asp:Literal>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("t_Baslik") %>'></asp:Literal>
                                        &nbsp;&nbsp;&nbsp;<asp:Literal ID="Literal3" runat="server" Text='<%# Eval("t_İslemDurumu") %>'></asp:Literal>
                                        &nbsp;&nbsp;&nbsp;<asp:Literal ID="Literal4" runat="server" Text='<%# Eval("t_CevaplayanID") %>'></asp:Literal>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td class="auto-style3">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                       <a href="kullanıcıCevapGoruntule.aspx?t_ID=<%#Eval("t_ID") %>"> <img alt="" class="auto-style5" src="images/magnifying_glass.png" /></a>
                                    </td>
                                    <td class="auto-style4">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>

            </div>
            
        </div>
    </form>
</body>
</html>
