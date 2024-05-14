Public Class WelcomeToMyWorld
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridView1.RowCommand
        HiddenField1.Value = e.CommandArgument.ToString
        If e.CommandName = "DeleteUser" Then
            If SDS.Delete() Then
                Page.ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('ลบข้อมูลแล้ว');", True)
                GridView1.DataBind()
            End If
        End If

    End Sub


    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)
    End Sub

End Class