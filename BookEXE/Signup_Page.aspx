<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Signup_Page.aspx.vb" Inherits="BookEXE.Signup_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignIn</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="css/loginstyle.css" 
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" id="container">
        <div class="form-container sign-up">
            <form>
            </form>
        </div>
        <div class="form-container sign-in">
            <div ><center><a href="Index.aspx">
                <asp:Image ID="LogoSignup" runat="server" ImageUrl="~/img/logorb6.png" Height="126px" /></a><br />
                <h1>สมัครสมาชิก</h1>
                <span>ระบุชื่อผู้ใช้งาน & รหัสผ่าน</span><br />
                <span>ชื่อผู้ใช้งาน : </span><asp:TextBox ID="UsernameTB" runat="server" Width="200px"></asp:TextBox><br />
                <span>รหัสผ่าน : </span><asp:TextBox ID="PasswordTB" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                <asp:Button ID="BtnSignup"  runat="server" Text="SignUp" Width="300px" BackColor="#CCFFCC" />
                <br /><a href="Index.aspx">กลับสู่หน้าหลัก</a>
                </center> 
            </div>
        </div>
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-right">
                    
                    <h1>เข้าสู่ระบบ</h1>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/bookicon.png" Width="50px" Height="50px" />
                    <p>เข้าสู่ระบบเพื่อใช้งาน</p>
                    <asp:Button ID="BtnLogin" runat="server" Text="Login" />
                </div>
            </div>
        </div>
    </div>
        <asp:SqlDataSource ID="UsersignupSDS" runat="server" ConnectionString="<%$ ConnectionStrings:JokMuDBConnectionString %>" InsertCommand="INSERT INTO UserLogin(UserName, Pass) VALUES (@UserNameSignUp, @PassSignUp)">
            <InsertParameters>
                <asp:ControlParameter ControlID="UsernameTB" Name="UserNameSignUp" PropertyName="Text" />
                <asp:ControlParameter ControlID="PasswordTB" Name="PassSignUp" PropertyName="Text" />
            </InsertParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
