<%@ Page Title="ผู้ใช้ทั้งหมด" Language="vb" AutoEventWireup="false" MasterPageFile="~/DMain.Master" CodeBehind="AllUser.aspx.vb" Inherits="BookEXE.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" runat="server">
    <link href="bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/bg.css" />

    <div><center><h2>ผู้ใช้</h2></center></div><br />
   <div class="container">
       <center><asp:Image ID="Image1" runat="server" ImageUrl="~/img/person.png" Width="117px" Height="117px"/></center>
       <br /><br /><br />
       <label class="col-sm-2 control-label" >ค้นหาผู้ใช้งาน</label>
        <div class="col-sm-4">    
    <asp:TextBox ID="tbser" runat="server" AutoComplete="false" AutoPostBack="false" onkeypress="return event.keyCode != 13;" placeHolder="ระบุ ID หรือ ชื่อ" Height="31px" Width="135px"></asp:TextBox>
            <asp:Button ID="btnSer" cssclass="btn btn-success" runat="server" Text="ค้นหา" />
         </div>
       <br />
    <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="UserDS">
        <Columns>
            <asp:BoundField DataField="UserID" HeaderText="รหัสผู้ใช้งาน" SortExpression="UserID" />
            <asp:BoundField DataField="UserName" HeaderText="ชื่อผู้ใช้งาน" SortExpression="UserName" />
            <asp:BoundField DataField="UserGender" HeaderText="เพศ" SortExpression="UserGender" />
            <asp:BoundField DataField="UserType" HeaderText="ประเภทผู้ใช้งาน" SortExpression="UserType" />
        </Columns>
    </asp:GridView>
    <br /><br />
       <div class="container">
           <asp:Button ID="BTNShowsBtnAdd" CssClass="btn-success" runat="server" Text="เพิ่มผู้ใช้งาน" /></div>
       <asp:Panel ID="Panel1" runat="server" Visible="false">
    <div class="container">
        <h2>เพิ่มผู้ใช้งาน </h2>
    <label class="col-sm-2 control-label">รหัสผู้ใช้งาน</label>
            <div class="col-sm-4">
        <asp:TextBox ID="UserIDTB" runat="server"></asp:TextBox>
        </div><br />
        <label class="col-sm-2 control-label">ชื่อผู้ใช้งาน</label>
        <div class="col-sm-4">
        <asp:TextBox ID="UserNameTB" runat="server"></asp:TextBox>
        </div><br />
        <label class="col-sm-2 control-label">เพศ</label>
        <div class="col-sm-4">
            <asp:DropDownList ID="GenderDD" runat="server">
                <asp:ListItem>ชาย</asp:ListItem>
                <asp:ListItem>หญิง</asp:ListItem>
                <asp:ListItem>ปลอม</asp:ListItem>
            </asp:DropDownList>
        </div><br />
        <label class="col-sm-2 control-label">ประเภทผู้ใช้งาน</label>
        <div class="col-sm-4">
         <asp:DropDownList ID="UserTypeDD" runat="server">
             <asp:ListItem>นักศึกษา</asp:ListItem>
             <asp:ListItem>ผู้แต่ง</asp:ListItem>
            </asp:DropDownList>
        </div>
        <br /><br />
         <asp:Button cssclass="btn btn-success" ID="BtnAdd" runat="server" Text="เพิ่ม" /> &nbsp;
        <asp:Button CssClass="btn btn-danger" ID="BtnCanecl" runat="server" Text="ยกเลิก" />
        </div>
    <br />
       </div>
</asp:Panel>




    <asp:SqlDataSource ID="UserDS" runat="server" ConnectionString="<%$ ConnectionStrings:JokMuDBConnectionString %>" SelectCommand="SELECT UserID, UserName, UserGender, UserType FROM UserTB WHERE (UserID = @tbUIS) OR (UserName = @tbUNS)" InsertCommand="INSERT INTO UserTB(UserID, UserGender, UserName, UserType) VALUES (@UIDA, @UGA, @UNA, @UTA)">
        <InsertParameters>
            <asp:ControlParameter ControlID="UserIDTB" Name="UIDA" PropertyName="Text" />
            <asp:ControlParameter ControlID="GenderDD" Name="UGA" PropertyName="Text" />
            <asp:ControlParameter ControlID="UserNameTB" Name="UNA" PropertyName="Text" />
            <asp:ControlParameter ControlID="UserTypeDD" Name="UTA" PropertyName="Text" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="tbser" Name="tbUIS" PropertyName="Text" />
            <asp:ControlParameter ControlID="tbser" Name="tbUNS" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>



