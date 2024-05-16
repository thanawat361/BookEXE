
Imports System.Data.SqlClient
Public Class Login_page
    Inherits System.Web.UI.Page
    Protected Sub BtnLogin_Click(sender As Object, e As EventArgs) Handles BtnLogin.Click
        Dim objConn As SqlConnection
        Dim strConnString As String
        Dim strSQL As StringBuilder
        Dim objCmd As SqlCommand
        Dim intCount As Integer = 0

        '*** Open Connection ***'
        strConnString = "Data Source=XDPC\SQLEXPRESS01;Initial Catalog=JokMuDB;Integrated Security=True"
        objConn = New SqlConnection
        objConn.ConnectionString = strConnString
        objConn.Open()

        '*** Check Login ***'
        strSQL = New StringBuilder
        strSQL.Append(" SELECT COUNT(*) FROM UserLogin ")
        strSQL.Append(" WHERE UserName = @sUsername ")
        strSQL.Append(" AND Pass = @sPassword ")
        objCmd = New SqlCommand(strSQL.ToString(), objConn)
        objCmd.Parameters.Add("@sUsername", SqlDbType.VarChar).Value = Me.UsernameTB.Text
        objCmd.Parameters.Add("@sPassword", SqlDbType.VarChar).Value = Me.PasswordTB.Text
        intCount = objCmd.ExecuteScalar()

        objConn.Close()
        objConn = Nothing

        If intCount <= 0 Then
            Me.lblStatus.ForeColor = Drawing.Color.Red
            Me.lblStatus.Text = "Username or Password wrong!"
        Else
            Session("strUsername") = Me.ToString = UsernameTB.Text
            Response.Redirect("LoginDone/WelcomeToMyWorld.aspx")
        End If


    End Sub

    Protected Sub BtnSignup_click(sender As Object, e As EventArgs) Handles BtnSignup.Click
        Response.Redirect("Signup_Page.aspx")
    End Sub


End Class