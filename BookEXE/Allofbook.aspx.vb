Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles BtnAddBook.Click
        bookidtxt.Text = ""
        booknametxt.Text = ""
        booknametxt.Text = ""
        bookptxt.Text = ""
        Usernametxt.Text = ""

        Btnsubmid.Visible = True
        BtnUpdate.Visible = False

        Panel1.Visible = True
        GridView1.Visible = False
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles BtnCan.Click
        Panel1.Visible = False
        GridView1.Visible = True
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Btnsubmid.Click
        If BookSD.Insert Then
            Page.ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('บันทึกข้อมูลแล้ว');", True)
            Panel1.Visible = False
            GridView1.Visible = True

        End If
    End Sub
    Private Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridView1.RowCommand

        HiddenField1.Value = e.CommandArgument.ToString
        If e.CommandName = "DeleteBook" Then

            If BookSD.Delete Then
                Page.ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('ลบข้อมูลแล้ว');", True)
                GridView1.DataBind()
            End If

        ElseIf e.CommandName = "EditBook" Then
            Btnsubmid.Visible = False
            BtnUpdate.Visible = True


            Dim dt As DataTable = CType(DataEditSD.Select(DataSourceSelectArguments.Empty), DataView).ToTable

            bookidtxt.Text = dt.Rows(0).Item("BookID")
            booknametxt.Text = dt.Rows(0).Item("BookName")
            bookptxt.Text = dt.Rows(0).Item("BookPirace")
            bookcatDD.Text = dt.Rows(0).Item("BookCat")
            Usernametxt.Text = dt.Rows(0).Item("UserName")


            Panel1.Visible = True
            GridView1.Visible = False
        End If

    End Sub

    Private Sub BookEXE_Allofbook_Init(sender As Object, e As EventArgs) Handles Me.Init
        Usernametxt.DataBind()

        If Request.QueryString("BookID") <> "" Then
            BookSD.FilterExpression = "BookID = " & Request.QueryString("BookID")
            GridView1.DataBind()
        Else
            GridView1.DataBind()
        End If

    End Sub
    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles BtnUpdate.Click
        If BookSD.Update Then
            Page.ClientScript.RegisterStartupScript(Me.GetType, "alert", "alert('อัปเดทข้อมูลแล้ว');", True)
            Panel1.Visible = False
            GridView1.Visible = True
        End If

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub
End Class