Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\EmpManagementSite\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand("select count(unm) from emp where unm='" + TextBox1.Text + "'and psw='" + TextBox2.Text + "'", cn)

        cn.Open()
        Dim count = cmd.ExecuteScalar
        cn.Close()
        If count > 0 Then
            Session("unm") = TextBox1.Text
            MsgBox("Login Successfully!!")
            Response.Redirect("./SearchPage.aspx")
        Else
            MsgBox("invalid username or password")
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("./Signup.aspx")
    End Sub
End Class
