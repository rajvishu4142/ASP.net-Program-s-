Imports System.Data
Imports System.Data.SqlClient
Partial Class Signup
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\InventoryManagement\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("INSERT INTO user_login(unm,email,psw) VALUES (@unm,@email,@psw)", cn)
        cmd.Parameters.AddWithValue("@unm", TextBox2.Text)
        cmd.Parameters.AddWithValue("@email", TextBox3.Text)
        cmd.Parameters.AddWithValue("@psw", TextBox4.Text)
        cn.Open()
        cmd.ExecuteNonQuery()
        MsgBox("Registration successful")
        Response.Redirect("./Login.aspx")
        cn.Close()

    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("./Login.aspx")
    End Sub
End Class
