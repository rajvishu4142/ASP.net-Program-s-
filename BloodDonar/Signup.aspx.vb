Imports System.Data
Imports System.Data.SqlClient
Partial Class Signup
    Inherits System.Web.UI.Page

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\BloodDonar\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("insert into donar values(@unm,@psw,@name,@bldgrp,@email,@mobile,@address,@city,@state,@lastdndate)", cn)
        cmd.Parameters.AddWithValue("@unm", TextBox1.Text)
        cmd.Parameters.AddWithValue("@psw", TextBox2.Text)
        cmd.Parameters.AddWithValue("@name", TextBox3.Text)
        cmd.Parameters.AddWithValue("@bldgrp", DropDownList1.SelectedValue)
        cmd.Parameters.AddWithValue("@email", TextBox4.Text)
        cmd.Parameters.AddWithValue("@mobile", TextBox5.Text)
        cmd.Parameters.AddWithValue("@address", TextBox6.Text)
        cmd.Parameters.AddWithValue("@city", TextBox7.Text)
        cmd.Parameters.AddWithValue("@state", TextBox8.Text)
        cmd.Parameters.AddWithValue("@lastdndate", Calendar1.SelectedDate)

        cn.Open()
        Dim ct As Integer = cmd.ExecuteNonQuery()
        cn.Close()


        If ct > 0 Then
            MsgBox("Registration Successfully!!")
            Response.Redirect("./Login.aspx")
        Else
            MsgBox("Something happens??")
        End If


    End Sub
End Class
