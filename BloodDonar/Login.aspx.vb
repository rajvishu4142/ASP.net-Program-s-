Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\BloodDonar\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("select count(unm) from donar where unm='" + TextBox1.Text + "'and psw='" + TextBox2.Text + "'", cn)

        cn.Open()
        Dim count As Integer = cmd.ExecuteScalar
        cn.Close()
        If count > 0 Then
            Session("unm") = TextBox1.Text
            MsgBox("Login Succesfully")
            Response.Redirect("./SearchPage.aspx")
        Else
            MsgBox("Invalid username or password")
        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("./Signup.aspx")
    End Sub
End Class
