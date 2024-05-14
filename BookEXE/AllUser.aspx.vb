Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub btnSer_Click(sender As Object, e As EventArgs) Handles btnSer.Click
        GridView1.DataBind()
    End Sub

    Protected Sub BtnAdd_Click(sender As Object, e As EventArgs) Handles BtnAdd.Click
        UserDS.Insert()

    End Sub

    Protected Sub SqlDataSource1_Selecting1(sender As Object, e As SqlDataSourceSelectingEventArgs)

    End Sub

    Protected Sub BTNShowsBtnAdd_Click(sender As Object, e As EventArgs) Handles BTNShowsBtnAdd.Click

        UserIDTB.Text = ""
        UserNameTB.Text = ""

        Panel1.Visible = True
    End Sub

    Protected Sub BtnCanecl_Click(sender As Object, e As EventArgs) Handles BtnCanecl.Click
        Panel1.Visible = False
    End Sub
End Class