Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\EmployeeDetail\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("insert into user_login values(@unm,@mobile,@email,@psw)", cn)
        cmd.Parameters.AddWithValue("@unm", TextBox1.Text)
        cmd.Parameters.AddWithValue("@mobile", TextBox2.Text)
        cmd.Parameters.AddWithValue("@email", TextBox3.Text)
        cmd.Parameters.AddWithValue("@psw", TextBox4.Text)

        cn.Open()
        cmd.ExecuteNonQuery()
        MsgBox("Login Successfully")
        cn.Close()
        Session("unm") = TextBox1.Text
        Session("mobile") = TextBox2.Text
        Response.Redirect("~/EmployeeData.aspx")

    End Sub
End Class
