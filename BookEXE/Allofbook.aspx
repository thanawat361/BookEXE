<%@ Page Title="หนังสือทั้งหมด" Language="vb" AutoEventWireup="false" MasterPageFile="~/DMain.Master" CodeBehind="Allofbook.aspx.vb" Inherits="BookEXE.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <link href="bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/bg.css" />

    <div class="container">
        <center><h1>หนังสือทั้งหมด</h1>
        <asp:Image ID="img"  runat="server" ImageUrl="~/img/rb6header.png" BorderWidth="1px" /><br /><br /></center>


    <h3>ข้อมูลหนังสือ</h3>
        <dir class="container"><asp:Button ID="BtnAddBook" runat="server" Text="เพิ่มข้อมูล" CssClass="btn btn-info" /></dir>
<asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" runat="server"  AutoGenerateColumns="False" DataSourceID="BookSD" DataKeyNames="BookID">
    <Columns>    
        <asp:BoundField DataField="BookID" HeaderText="รหัสหนังสือ" ReadOnly="True" SortExpression="BookID" />
            <asp:BoundField DataField="BookName" HeaderText="ชื่อหนังสือ" SortExpression="BookName" />
            <asp:BoundField DataField="BookCat" HeaderText="ประเภทหนังสือ" SortExpression="BookCat" />
            <asp:BoundField DataField="BookPirace" HeaderText="ราคาหนังสือ" SortExpression="BookPirace" />
            <asp:BoundField DataField="UserName" HeaderText="ผู้แต่ง" SortExpression="UserName" />
            <asp:TemplateField HeaderText="แก้ไข">
                <ItemTemplate>
                    <asp:Button ID="BtnEdit" runat="server" Text="แก้ไข" CssClass="btn btn-info btn-xs" CommandName="EditBook" CommandArgument='<%#Eval("BookID") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        <asp:TemplateField HeaderText="ลบออก">
            <ItemTemplate>
                    <asp:Button ID="BtnDel" runat="server" Text="ลบออก" OnClientClick="return confirm('ยืนยัน ?')" CssClass="btn btn-danger btn-xs" CommandName="DeleteBook" CommandArgument='<%#Eval("BookID") %>' />
                </ItemTemplate>
        </asp:TemplateField>

    </Columns>
    </asp:GridView></div>

    <asp:Panel ID="Panel1" runat="server" Visible="false">
        <div class="container">
    <dir class="row">
        <h2>ข้อมูล หนังสือ </h2>
    <label class="col-sm-2 control-label">รหัสหนังสือ</label>
            <div class="col-sm-4">
        <asp:TextBox ID="bookidtxt" runat="server" placeholder="ระบุรหัสหนังสือ"></asp:TextBox>
        </div><br />
        <label class="col-sm-2 control-label">ชื่อหนังสือ</label>
        <div class="col-sm-4">
        <asp:TextBox ID="booknametxt" runat="server" placeholder="ระบุชื่อหนังสือ"></asp:TextBox>
        </div><br />
        <label class="col-sm-2 control-label">ประเภทหนังสือ</label>
        <div class="col-sm-4">
         <asp:DropDownList runat="server" ID="bookcatDD" CssClass="btn-success">
             <asp:ListItem>วิชาการ</asp:ListItem>
             <asp:ListItem>อาหาร</asp:ListItem>
             <asp:ListItem>เอาชีวิตรอด</asp:ListItem>
             <asp:ListItem>กีฬา</asp:ListItem>
             <asp:ListItem>ราชการ</asp:ListItem>
             <asp:ListItem>การ์ตูน</asp:ListItem>
            </asp:DropDownList>
        </div><br />
        <label class="col-sm-2 control-label">ราคาหนังสือ</label>
        <div class="col-sm-4">
         <asp:TextBox ID="bookptxt" runat="server" placeholder="ระบุราคา"></asp:TextBox>
        </div><br />
        <label class="col-sm-2 control-label">ผู้แต่ง</label>
        <div class="col-sm-4">
         <asp:TextBox ID="Usernametxt" runat="server" placeholder="ระบุผู้แต่ง"></asp:TextBox>
        </div>
        <br />
        </dir>
        
        <div class="form-group col-md-2">
            <label>&nbsp;</label>
            <asp:Button ID="Btnsubmid" runat="server" Text="บันทึก" CssClass="bnt btn-success form-control" />
            <asp:Button ID="BtnUpdate" runat="server" Text="อัปเดท" CssClass="bnt btn-success form-control" />
        </div>
        <div class="form-group col-md-2">
        <label>&nbsp;</label>
          <asp:Button ID="BtnCan" runat="server" Text="ยกเลิก" CssClass="bnt btn-warning form-control" />
</div></div>
        <br /><div class="container">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/raiden_arms.gif" />
        </div>
    <br />
</asp:Panel>

    <asp:SqlDataSource ID="BookSD" runat="server" ConnectionString="<%$ ConnectionStrings:JokMuDBConnectionString %>" SelectCommand="SELECT BookID, BookName, BookCat, BookPirace, UserName FROM AllBook" DeleteCommand="DELETE FROM AllBook WHERE (BookID = @boolid)" InsertCommand="INSERT INTO AllBook(BookID, BookName, BookCat, BookPirace, UserName) VALUES (@Bid, @BNa, @BCa, @BPa, @UNa)" UpdateCommand="UPDATE AllBook SET BookCat = @bca, BookName = @bna, BookPirace = @bpi, UserName = @una WHERE (BookID = @boolid)">
        <DeleteParameters>
            <asp:ControlParameter ControlID="HiddenField1" Name="boolid" PropertyName="Value" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="bookidtxt" Name="Bid" PropertyName="Text" />
            <asp:ControlParameter ControlID="booknametxt" Name="BNa" PropertyName="Text" />
            <asp:ControlParameter ControlID="bookcatDD" Name="BCa" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="bookptxt" Name="BPa" PropertyName="Text" />
            <asp:ControlParameter ControlID="Usernametxt" Name="UNa" PropertyName="Text" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="bookcatDD" Name="bca" PropertyName="Text" />
            <asp:ControlParameter ControlID="booknametxt" Name="bna" PropertyName="Text" />
            <asp:ControlParameter ControlID="bookptxt" Name="bpi" PropertyName="Text" />
            <asp:ControlParameter ControlID="Usernametxt" Name="una" PropertyName="Text" />
            <asp:ControlParameter ControlID="HiddenField1" Name="boolid" PropertyName="Value" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="DataEditSD" runat="server" ConnectionString="<%$ ConnectionStrings:JokMuDBConnectionString %>" SelectCommand="SELECT BookID, BookName, BookCat, BookPirace, UserName FROM AllBook WHERE (BookID = @Bid)">
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenField1" Name="Bid" PropertyName="Value" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:HiddenField ID="HiddenField1" runat="server" />

</asp:Content>
