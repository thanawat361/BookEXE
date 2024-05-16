Public Class WebForm4
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DateNowLabel.Text = DateTime.Today.ToString("f")
    End Sub

    Protected Sub BTNSubmit_Click(sender As Object, e As EventArgs) Handles BTNSubmit.Click
        WorkSDS.Insert()
        DetailTb.Text = ""
    End Sub
End Class