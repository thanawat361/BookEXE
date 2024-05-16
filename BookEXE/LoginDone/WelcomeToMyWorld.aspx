<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WelcomeToMyWorld.aspx.vb" Inherits="BookEXE.WelcomeToMyWorld" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="../css/bg.css" />

    <div style="width:100%; background-color:gray;" class="hidden-xs">
        <div id="menubar1" class="container" style="margin-top:0px;">
            <br />
            <ul class="nav navbar-nav pull-center">
            <li class="list-group-item list-group-item-action list-group-item-info"><a href="../Index.aspx">หน้าหลัก</a></li>&nbsp;
            <li class="list-group-item list-group-item-info"><a href="Work_All_Day.aspx">บันทึกฝึกงาน</a></li>

    </ul>
            </div></div><br /><br />
</head>
<body >
    <form id="form1" runat="server">
        <div class="container">
            <br /><center><h2>ล็อคอินสำเร็จ</h2><br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/img/boyAndGirl.jpg" Height="388px" Width="452px" BorderWidth="2px" /></center>
        </div><br /><br />
        <div></div>

        <div class="container">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover" AutoGenerateColumns="False" DataSourceID="SDS">
                <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="รหัสผู้ใช้งาน" SortExpression="UserID" />
                    <asp:BoundField DataField="UserName" HeaderText="ชื่อผู้ใช้งาน" SortExpression="UserName" />
                    <asp:BoundField DataField="UserGender" HeaderText="เพศ" SortExpression="UserGender" />
                    <asp:BoundField DataField="UserType" HeaderText="ประเภทผู้ใช้งาน" SortExpression="UserType" />
                    <asp:TemplateField HeaderText="ลบออก">
                        <ItemTemplate>
                            <asp:Button ID="DEL" runat="server" Text="ลบ" OnClientClick="return confirm('ยืนยัน?')" CssClass="btn btn-danger btn-xs" CommandName="DeleteUser" CommandArgument='<%#Eval("UserID") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div><asp:HiddenField ID="HiddenField1" runat="server" />
    </form>

    <asp:SqlDataSource ID="SDS" runat="server" ConnectionString="<%$ ConnectionStrings:JokMuDBConnectionString %>" SelectCommand="SELECT * FROM [UserTB]" DeleteCommand="DELETE FROM UserTB WHERE (UserID = @useridhidd)">
        <DeleteParameters>
            <asp:ControlParameter ControlID="HiddenField1" Name="useridhidd" PropertyName="Value" />
        </DeleteParameters>
    </asp:SqlDataSource>
    

</body>
    <footer style="background:#2b2c2f; color:#77715f;" id="footer"><br />
	<div class="container" style="font-size:small; margin-top:-10px;">
		<div class="row">
			<div class="col-sm-6 col-lg-6">
				<div class="widget">
					<h4 style="color:#fec52d">made by thanawat</h4>
					<p>Email : thanawatpilumwong361@gmail.com</p>
				</div>
			</div>
			</div>
        </div>
        
	</footer>
</html>
