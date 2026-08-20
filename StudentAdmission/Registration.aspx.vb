Imports System.Data
Imports System.Data.SqlClient
Partial Class Registration
    Inherits System.Web.UI.Page

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\StudentAdmission\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("insert into stud values(@unm,@psw,@nm,@email,@mobile,@address,@city,@state,@marks,@stream)", cn)
        cmd.Parameters.AddWithValue("@unm", TextBox1.Text)
        cmd.Parameters.AddWithValue("@psw", TextBox2.Text)
        cmd.Parameters.AddWithValue("@nm", TextBox3.Text)
        cmd.Parameters.AddWithValue("@email", TextBox4.Text)
        cmd.Parameters.AddWithValue("@mobile", TextBox5.Text)
        cmd.Parameters.AddWithValue("@address", TextBox6.Text)
        cmd.Parameters.AddWithValue("@city", TextBox7.Text)
        cmd.Parameters.AddWithValue("@state", TextBox8.Text)
        cmd.Parameters.AddWithValue("@marks", "")
        cmd.Parameters.AddWithValue("@stream", "")

        cn.Open()
        cmd.ExecuteNonQuery()
        MsgBox("Registration Successfully!!")
        Dim da As New SqlDataAdapter("select * from stud", cn)
        Dim dt As New DataTable()
        da.Fill(dt)
        Response.Redirect("~/Login.aspx")
        cn.Close()

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
    End Sub
End Class




