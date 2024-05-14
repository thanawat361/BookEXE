<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/DMain.Master" CodeBehind="Borrow_Book.aspx.vb" Inherits="BookEXE.Borrow_Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
        <link href="bootstrap.min.css" rel="stylesheet" />
<div class="container">
    <center><h2>ยืมหนังสือ</h2></center><br /><br />
    <br /><center><asp:Image runat="server" ImageUrl="~/img/borrowbook.jpg" Height="300px" Width="900px" /></center><br /><br />
    <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" runat="server" DataSourceID="ShowBookSDS" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="รหัสผู้ใช้งาน" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="ชื่อผู้ใช้งาน" SortExpression="UserName" />
            <asp:BoundField DataField="BookName" HeaderText="ชื่อหนังสือ" SortExpression="BookName" />
            <asp:BoundField DataField="BorrowTime" HeaderText="วันที่ยืม" SortExpression="BorrowTime" />
            <asp:BoundField DataField="ReturnTime" HeaderText="วันที่คืน" SortExpression="ReturnTime" />
        </Columns>
    </asp:GridView>
    <Columns>
            
        </Columns>


    <asp:Panel ID="Panel1" runat="server" >
        <asp:Label ID="ADDLabel" runat="server" Text="ทำรายการยืมหนังสือ"></asp:Label>
    <br />    <asp:Label ID="now" runat="server" Text="วันที่ปัจจุบัน : "></asp:Label>&nbsp;
            <asp:Label ID="DateNowLabel" runat="server" Text=""></asp:Label><br /><br />

    <label class="col-sm-2 control-label">รหัสผู้ใช้งาน</label>
            <div class="col-sm-4">
        <asp:TextBox ID="UserIDTB" runat="server"></asp:TextBox>
        </div><br />
    <label class="col-sm-2 control-label">ชื่อผู้ใช้งาน</label>
            <div class="col-sm-4">
        <asp:TextBox ID="UserNameTB" runat="server"></asp:TextBox>
        </div><br />
    <label class="col-sm-2 control-label">ชื่อหนังสือที่ต้องการ</label>
    <div class="col-sm-4"><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="BookSDS" DataTextField="BookName" DataValueField="BookName" Height="27px" Width="250px"></asp:DropDownList></div><br />
   <label class="col-sm-2 control-label">วันที่คืน</label>
            <div class="col-sm-4">
        <asp:TextBox ID="ReturnTB" runat="server" TextMode="Date"></asp:TextBox><br /></div>
                <asp:Button class="btn btn-success" ID="BtnSubmit" runat="server" Text="บันทึก" />
        </asp:Panel>
    
</div>
    


    <asp:SqlDataSource ID="ShowBookSDS" runat="server" ConnectionString="<%$ ConnectionStrings:JokMuDBConnectionString %>" InsertCommand="INSERT INTO BorrowBookTB(UserID, UserName, BookName, BorrowTime, ReturnTime) VALUES (@usid, @uname, @Bookname, @Btime, @Rtime)" SelectCommand="SELECT * FROM [BorrowBookTB]">
        <InsertParameters>
            <asp:ControlParameter ControlID="UserIDTB" Name="usid" PropertyName="Text" />
            <asp:ControlParameter ControlID="UserNameTB" Name="uname" PropertyName="Text" />
            <asp:ControlParameter ControlID="DropDownList1" Name="Bookname" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="DateNowLabel" Name="Btime" PropertyName="Text" />
            <asp:ControlParameter ControlID="ReturnTB" Name="Rtime" PropertyName="Text" />
        </InsertParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="BookSDS" runat="server" ConnectionString="<%$ ConnectionStrings:JokMuDBConnectionString %>" SelectCommand="SELECT [BookName] FROM [AllBook]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
