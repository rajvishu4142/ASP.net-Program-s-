Imports System.Data
Imports System.Data.SqlClient
    Partial Class Login
        Inherits System.Web.UI.Page

        Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\StudentAdmission\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("select count(unm) from stud where unm='" + TextBox1.Text + "'and psw='" + TextBox2.Text + "'", cn)
            cn.Open()
            Dim count = cmd.ExecuteScalar
            cn.Close()

        Session("unm") = TextBox1.Text
            If count > 0 Then

            Response.Redirect("~/Stream.aspx")
            Else
                MsgBox("Your Email or Password is Wrong!")
            End If

        End Sub
    End Class
