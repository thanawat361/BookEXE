<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login_page.aspx.vb" Inherits="BookEXE.Login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="css/loginstyle.css" >
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" id="container">
        <div class="form-container sign-up">
            <form>
            </form>
        </div>
        <div class="form-container sign-in">
            <form>
                <h1>เข้าสู่ระบบ</h1>
                <span>ระบุชื่อผู้ใช้งาน & รหัสผ่าน</span>
                <asp:TextBox ID="Username" runat="server"></asp:TextBox>
                <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                <a href="#">Forget Your Password?</a>
                <asp:Button ID="BtnLogin"  runat="server" Text="Login" />
            </form>
        </div>
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-right">
                    
                    <h1>สมัครเลย!</h1>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/bookicon.png" Width="50px" Height="50px" />
                    <p>สมัครสมาชิกเพื่อข้อมูลของเรา</p>
                    <asp:Button ID="BtnSignup" runat="server" Text="Signup" />
                </div>
            </div>
        </div>
    </div>
        <asp:SqlDataSource ID="LoginSDS" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
