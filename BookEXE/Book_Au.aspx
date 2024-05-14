<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DMain.Master" CodeBehind="Book_Au.aspx.vb" Inherits="BookEXE.Book_Au" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
        <link href="bootstrap.min.css" rel="stylesheet" />
    
<div class="container">
<asp:Label runat="server" Text="Login Form" Font-Size="XX-Large" Font-Bold="true" ForeColor="#9900CC"></asp:Label>
 

<div>
<asp:Label  runat="server" Text="Username:" Font-Bold="true" Font-Size="Larger"></asp:Label>
<asp:TextBox ID="UserTB" runat="server" Height="35px" Width="180px"></asp:TextBox>
</div>
<div>
<asp:Label  runat="server" Text="Password: " Font-Bold="true" Font-Size="Larger"></asp:Label>
<asp:TextBox ID="PassTB" runat="server" TextMode="Password" Width="180px" Height="35px"></asp:TextBox>
</div>
<div>
<asp:Button CssClass="btn btn-success" Font-Size="Large" ID="Button1" runat="server" Text="Login"  Height="40px" Width="90px"  />
 
</div>
    </div>

    <asp:SqlDataSource ID="LoginSD" runat="server" ConnectionString="<%$ ConnectionStrings:JokMuDBConnectionString %>">
        
        </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
