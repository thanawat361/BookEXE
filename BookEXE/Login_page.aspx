﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login_page.aspx.vb" Inherits="BookEXE.Login_page" %>

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
            <div ><center><a href="Index.aspx">
                <asp:Image ID="LogoLogin" runat="server" ImageUrl="~/img/logorb6.png" Height="126px" /></a><br />
                <h1>เข้าสู่ระบบ</h1>
                <span>ระบุชื่อผู้ใช้งาน & รหัสผ่าน</span><br />
                <span>ชื่อผู้ใช้งาน : </span><asp:TextBox ID="UsernameTB" runat="server" Width="200px"></asp:TextBox><br />
                <span>รหัสผ่าน : </span><asp:TextBox ID="PasswordTB" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                <asp:Button ID="BtnLogin"  runat="server" Text="Login" Width="300px" BackColor="#CCFFCC" />
                <br /><a href="Index.aspx">กลับสู่หน้าหลัก</a>
                </center> 
            </div>
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
    </form>
</body>
</html>
