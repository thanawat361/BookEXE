<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Work_All_Day.aspx.vb" Inherits="BookEXE.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>งาน</title>
    <link rel="stylesheet" href="../bootstrap.min.css" />
    <link rel="stylesheet" href="../css/bg.css" />
    <div style="width:100%; background-color:cornflowerblue" class="hidden-xs">
        <div id="menubar1" class="container" style="margin-top:0px;">
            <br />
            <ul class="nav navbar-nav pull-center">
            <li class="list-group-item list-group-item-action list-group-item-info"><a href="WelcomeToMyWorld.aspx">หน้าหลัก</a></li>&nbsp;

    </ul>
            </div></div><br /><br />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <center><h1>งาน</h1></center><br /><br /><br />

        </div><br /><br />
        <div class="container">
            <asp:Label ID="now" runat="server" Text="วันที่ปัจจุบัน : "></asp:Label>&nbsp;
            <asp:Label ID="DateNowLabel" runat="server" Text=""></asp:Label><br /><br />
        </div>
        <div class="container">
            <div class="col-sm-3">
                <label>วันที่บันทึก : </label>&nbsp;&nbsp;
                <asp:TextBox ID="DateTB" runat="server" TextMode="Date"></asp:TextBox><br />
                <label>รายละเอียด : </label>&nbsp;&nbsp;
                <asp:TextBox ID="DetailTb" runat="server" Height="50px" Width="1000px" Font-Bold="True" Font-Size="Medium"></asp:TextBox><br /><br /><asp:Button ID="BTNSubmit" CssClass="btn-success" runat="server" Text="บันทึก" Height="30px" Width="69px" /><br /><br />
            </div>
        </div>
        <div class="container">
            <asp:Panel ID="PanelGridView" runat="server" >
                <p>ตาราง : </p>
                <asp:GridView ID="GridView_exe" CssClass="table table-bordered table-hover" runat="server" DataSourceID="WorkSDS" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="No." HeaderStyle-Width="5%">
                            <ItemTemplate>
                                <%#Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Work_Date" HeaderText="วันที่ลงบันทึก" SortExpression="Work_Date" />
                        <asp:BoundField DataField="Work_Detail" HeaderText="รายละเอียดงาน" SortExpression="Work_Detail" />
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </div>
        <asp:SqlDataSource ID="WorkSDS" runat="server" ConnectionString="<%$ ConnectionStrings:JokMuDBConnectionString %>" SelectCommand="SELECT Work_TB.* FROM Work_TB" InsertCommand="INSERT INTO Work_TB(Work_Date, Work_Detail) VALUES (@WorkDate, @WorkDetail)">
            <InsertParameters>
                <asp:ControlParameter ControlID="DateTB" Name="WorkDate" PropertyName="Text" />
                <asp:ControlParameter ControlID="DetailTb" Name="WorkDetail" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form> 
</body>
</html>
