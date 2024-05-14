<%@ Page Title="หน้าหลัก" Language="vb" AutoEventWireup="false" MasterPageFile="~/DMain.Master" CodeBehind="Index.aspx.vb" Inherits="BookEXE.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <link href="bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/bg.css" />

<dir class="container ">    
    <br />
        <center><h2>หน้าหลัก</h2>
            <br /><asp:Image ID="Image1" runat="server" BorderStyle="None" Height="235px" ImageUrl="~/img/raiden_arms.gif" Width="467px" /></center>
    <br />
    <span id="ctl00_ContentPlaceHolder1_datalb"><h3>เอกสาร</h3><hr class='colorgraph' /><ul class='list-unstyled' style='line-height:35px'><li><a target='_blank' href='../fileDownload/resume_thanawat.pdf'><i class='fa fa-download'></i> Resume Thanawat</a></li><li><a target='_blank' href='../fileDownload/CV_thanawat.pdf'><i class='fa fa-download'></i>CV_Thanawat</a></li></ul><br /></span>

    <div class="form-group multiple-form-group input-group pull-right" style="width:300px; margin-left: 80px;">
    <label>ค้นหาหนังสือ&nbsp;&nbsp;&nbsp;&nbsp; </label>   
    <asp:TextBox ID="tbser" runat="server" AutoComplete="false" AutoPostBack="false" onkeypress="return event.keyCode != 13;" placeHolder="ระบุ ID "></asp:TextBox>
            <asp:Button ID="btnSer" cssclass="btn btn-success" runat="server" Text="ค้นหา" />
         </div>
       
    <br />
    <div cssclass="container">
    <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="MainDTS">
        <Columns>    
        <asp:BoundField DataField="BookID" HeaderText="รหัสหนังสือ" ReadOnly="True" SortExpression="BookID" />
            <asp:BoundField DataField="BookName" HeaderText="ชือ" SortExpression="BookName" />
            <asp:BoundField DataField="BookCat" HeaderText="ประเภท" SortExpression="BookCat" />
            <asp:BoundField DataField="BookPirace" HeaderText="ราคา" SortExpression="BookPirace" />
            <asp:BoundField DataField="UserName" HeaderText="ชื่อผู้แต่ง" SortExpression="UserName" />
    </Columns>
            </asp:GridView>
    </div>
</dir>
    <br />
        <asp:SqlDataSource ID="MainDTS" runat="server" ConnectionString="<%$ ConnectionStrings:JokMuDBConnectionString %>" SelectCommand="SELECT BookID, BookName, BookCat, BookPirace, UserName FROM AllBook WHERE (BookName = @tbname) OR (BookID = @tblike) ">
            <SelectParameters>
                <asp:ControlParameter ControlID="tbser" Name="tblike" PropertyName="Text" />
                <asp:ControlParameter ControlID="tbser" Name="tbname" PropertyName="Text" />
            </SelectParameters>

    </asp:SqlDataSource>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>