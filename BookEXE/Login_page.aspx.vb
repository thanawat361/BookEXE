Imports System.Data.SqlClient
Public Class Login_page
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnLogin_Click(sender As Object, e As EventArgs) Handles BtnLogin.Click
        Dim conn As New SqlConnection
        Dim cmd As New SqlCommand
        conn.ConnectionString = "Data Source=XDPC\SQLEXPRESS01;Initial Catalog=JokMuDB;Integrated Security=True"
        Dim objconn As SqlConnection = Nothing
        Dim objcmd As SqlCommand = Nothing

        objconn = New SqlConnection("Data Source=XDPC\SQLEXPRESS01;Initial Catalog=JokMuDB;Integrated Security=True")
        objconn.Open()

        Dim stmt As String = "SELECT COUNT(*) FROM UserLogin WHERE UserName=@username AND Pass = @pass  "
        objcmd = New SqlCommand(stmt, objconn)
        objcmd.Parameters.AddWithValue("@username", Username.Text)
        objcmd.Parameters.AddWithValue("@Pass", Password.Text)
        Dim count As Integer = objcmd.ExecuteScalar()
        If (count > 0) Then
            Response.Redirect("Logindone/WelcomeTOMyWorld.aspx")
        Else
            Response.Redirect("logindone/Loginfail.aspx")
        End If
    End Sub
End Class