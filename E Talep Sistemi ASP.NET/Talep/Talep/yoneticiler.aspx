<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yoneticiler.aspx.cs" Inherits="Talep.yoneticiler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="kullanıcı.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" style="margin-left:auto; margin-right:auto">
        
            <div style="background-color:#2a595c; height:40px;margin-top:0;">
                <p style="font-size:25px; margin-top:8px; color:#fff; text-align:center;">Yöneticiler Listesi</p>
            </div>
        

        <div style=" margin-left:270px; margin-top:50px;">

        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="adminID" DataSourceID="SqlDataSource1" Height="181px" Width="774px" BackColor="White" BorderColor="#E7E7FF" BorderWidth="1px" CellPadding="3" BorderStyle="None" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="adminID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="adminID" />
                <asp:BoundField DataField="adminAd" HeaderText="AD" SortExpression="adminAd" />
                <asp:BoundField DataField="adminSoyad" HeaderText="SOYAD" SortExpression="adminSoyad" />
                <asp:BoundField DataField="adminEmail" HeaderText="E-MAIL" SortExpression="adminEmail" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle HorizontalAlign="Left" BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle ForeColor="#4A3C8C" HorizontalAlign="Right" BackColor="#E7E7FF" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" ForeColor="#F7F7F7" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:talepSistemiConnectionString %>" SelectCommand="SELECT [adminID], [adminAd], [adminSoyad], [adminEmail] FROM [admin]"></asp:SqlDataSource>
    </div>

    </form>
</body>
</html>
