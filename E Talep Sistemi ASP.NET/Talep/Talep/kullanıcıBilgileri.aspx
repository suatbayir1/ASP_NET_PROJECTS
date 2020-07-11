<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kullanıcıBilgileri.aspx.cs" Inherits="Talep.kullanıcıBilgileri" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="kullanıcı.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 1000px;
            height: 50px;
            float: left;
            background-color: #2a595c;
            margin-top: 5px;
            margin-bottom: 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style1" style="margin-left:200px; ">
                <p style="font-size:25px;color:#fff;margin-top:8px; text-align:center;">Kullanıcı Bilgileri</p>
                <p style="font-size:25px;color:#fff;margin-top:8px; text-align:center;">&nbsp;</p>
            </div>
            <div class="menu" style="margin-left:200px; background-color:#fff;">
              <p style="margin-left:300px;"> 
                  <asp:Button ID="btn_Anasayfa" runat="server" Text="Anasayfa" CssClass="menubuton btn btn-outline-danger" OnClick="btn_Anasayfa_Click"  />
                  <asp:Button ID="btn_Admin" runat="server" Text="Adminler" CssClass="menubuton btn btn-outline-danger" OnClick="btn_Admin_Click" />
                  <asp:Button ID="btn_Kullanıcı" runat="server" Text="Kullanıcılar" CssClass="menubuton btn btn-outline-danger" OnClick="btn_Kullanıcı_Click" />
              </p>
                
            </div>
           
        </div>

         <div style="margin-left:300px;">

             <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="k_ID" DataSourceID="SqlDataSource1" Height="16px" Width="766px">
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     <asp:BoundField DataField="k_ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="k_ID" />
                     <asp:BoundField DataField="k_Ad" HeaderText="AD" SortExpression="k_Ad" />
                     <asp:BoundField DataField="k_Soyad" HeaderText="SOYAD" SortExpression="k_Soyad" />
                     <asp:BoundField DataField="k_Email" HeaderText="E-MAIL" SortExpression="k_Email" />
                     <asp:BoundField DataField="k_Departman" HeaderText="DEPARTMAN" SortExpression="k_Departman" />
                 </Columns>
                 <HeaderStyle HorizontalAlign="Left" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:talepSistemiConnectionString %>" DeleteCommand="DELETE FROM [kullanici] WHERE [k_ID] = @k_ID" InsertCommand="INSERT INTO [kullanici] ([k_Ad], [k_Soyad], [k_Email], [k_Departman]) VALUES (@k_Ad, @k_Soyad, @k_Email, @k_Departman)" SelectCommand="SELECT [k_ID], [k_Ad], [k_Soyad], [k_Email], [k_Departman] FROM [kullanici]" UpdateCommand="UPDATE [kullanici] SET [k_Ad] = @k_Ad, [k_Soyad] = @k_Soyad, [k_Email] = @k_Email, [k_Departman] = @k_Departman WHERE [k_ID] = @k_ID">
                 <DeleteParameters>
                     <asp:Parameter Name="k_ID" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="k_Ad" Type="String" />
                     <asp:Parameter Name="k_Soyad" Type="String" />
                     <asp:Parameter Name="k_Email" Type="String" />
                     <asp:Parameter Name="k_Departman" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="k_Ad" Type="String" />
                     <asp:Parameter Name="k_Soyad" Type="String" />
                     <asp:Parameter Name="k_Email" Type="String" />
                     <asp:Parameter Name="k_Departman" Type="String" />
                     <asp:Parameter Name="k_ID" Type="Int32" />
                 </UpdateParameters>
             </asp:SqlDataSource>

            </div>

        <div style="margin-left:300px;">

            <asp:GridView ID="GridView2" runat="server" Height="130px" Width="727px" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="adminID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="adminID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="adminID" />
                    <asp:BoundField DataField="adminAd" HeaderText="AD" SortExpression="adminAd" />
                    <asp:BoundField DataField="adminSoyad" HeaderText="SOYAD" SortExpression="adminSoyad" />
                    <asp:BoundField DataField="adminEmail" HeaderText="E-MAIL" SortExpression="adminEmail" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:talepSistemiConnectionString %>" DeleteCommand="DELETE FROM [admin] WHERE [adminID] = @adminID" InsertCommand="INSERT INTO [admin] ([adminAd], [adminSoyad], [adminEmail]) VALUES (@adminAd, @adminSoyad, @adminEmail)" SelectCommand="SELECT [adminID], [adminAd], [adminSoyad], [adminEmail] FROM [admin]" UpdateCommand="UPDATE [admin] SET [adminAd] = @adminAd, [adminSoyad] = @adminSoyad, [adminEmail] = @adminEmail WHERE [adminID] = @adminID">
                <DeleteParameters>
                    <asp:Parameter Name="adminID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="adminAd" Type="String" />
                    <asp:Parameter Name="adminSoyad" Type="String" />
                    <asp:Parameter Name="adminEmail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="adminAd" Type="String" />
                    <asp:Parameter Name="adminSoyad" Type="String" />
                    <asp:Parameter Name="adminEmail" Type="String" />
                    <asp:Parameter Name="adminID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
