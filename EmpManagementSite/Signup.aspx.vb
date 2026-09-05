Imports System.Data
Imports System.Data.SqlClient
Partial Class Signup
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\EmpManagementSite\App_Data\Database.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand("insert into emp values(@unm,@psw,@email,@mobile,@address,@city,@state,@bldgrp)", cn)
        cmd.Parameters.AddWithValue("@unm", TextBox1.Text)
        cmd.Parameters.AddWithValue("@psw", TextBox2.Text)
        cmd.Parameters.AddWithValue("@email", TextBox3.Text)
        cmd.Parameters.AddWithValue("@mobile", TextBox4.Text)
        cmd.Parameters.AddWithValue("@address", TextBox5.Text)
        cmd.Parameters.AddWithValue("@city", TextBox6.Text)
        cmd.Parameters.AddWithValue("@state", TextBox7.Text)
        cmd.Parameters.AddWithValue("@bldgrp", TextBox8.Text)
        cn.Open()
        cmd.ExecuteNonQuery()
        MsgBox("Registration successful")
        Response.Redirect("./LoginPage.aspx")
        cn.Close()
    End Sub
  
    
End Class
