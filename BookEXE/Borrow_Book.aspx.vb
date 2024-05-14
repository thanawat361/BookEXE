Public Class Borrow_Book
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DateNowLabel.Text = DateTime.Today.ToString("yyyy/MM/dd")
    End Sub
    Protected Sub BtnSubmit_Click(sender As Object, e As EventArgs) Handles BtnSubmit.Click
        ShowBookSDS.Insert()
    End Sub
End Class