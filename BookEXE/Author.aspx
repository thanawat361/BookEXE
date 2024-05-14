<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DMain.Master" CodeBehind="Author.aspx.vb" Inherits="BookEXE.Author" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
        <link href="bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/bg.css" />

    <dir class="container">
        <center><h1>รายชื่อผู้แต่ง</h1>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/Authorlogo.png" Width="70px" Height="70px"/></center><br /><br />

        <asp:GridView ID="GridView1"  CssClass="table table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="ADS">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="รหัสผู้ใช้งาน" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="ชื่อผู้ใช้งาน" SortExpression="UserName" />
            <asp:BoundField DataField="UserGender" HeaderText="เพศ" SortExpression="UserGender" />
        </Columns>
        </asp:GridView>
    </dir>

    
<p>
    <asp:SqlDataSource ID="ADS" runat="server" ConnectionString="<%$ ConnectionStrings:JokMuDBConnectionString %>" SelectCommand="SELECT UserID, UserGender, UserName FROM UserTB WHERE (UserType = N'ผู้แต่ง')"></asp:SqlDataSource>
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
