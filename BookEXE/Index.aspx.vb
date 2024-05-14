Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSer_Click(sender As Object, e As EventArgs) Handles btnSer.Click
        GridView1.DataBind()




    End Sub

    Protected Sub MainDTS_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles MainDTS.Selecting

    End Sub


End Class