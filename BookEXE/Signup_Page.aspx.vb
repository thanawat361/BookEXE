Imports System.Data.SqlClient
Public Class Signup_Page
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnSignup_Click(sender As Object, e As EventArgs) Handles BtnSignup.Click
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



        'Insert user'
        strSQL = New StringBuilder
        strSQL.Append(" INSERT INTO UserLogin ")
        strSQL.Append(" (Username,Pass) ")
        strSQL.Append(" VALUES ")
        strSQL.Append("(@sUsername,@sPass)")
        objCmd = New SqlCommand(strSQL.ToString(), objConn)
        objCmd.Parameters.Add("@sUsername", SqlDbType.VarChar).Value = Me.UsernameTB.Text
        objCmd.Parameters.Add("@sPass", SqlDbType.VarChar).Value = Me.PasswordTB.Text
        objCmd.ExecuteNonQuery()

        objConn.Close()
        objConn = Nothing

        Page.ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('สมัครสมาชิกสำเร็จ');", True)

    End Sub

    Protected Sub BtnLogin_Click(sender As Object, e As EventArgs) Handles BtnLogin.Click
        Response.Redirect("Login_Page.aspx")
    End Sub
End Class