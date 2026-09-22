Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\InventoryManagement\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("insert into suplier values(@sname,@name,@mobile,@email,@address,@city,@state,1)", cn)
        cmd.Parameters.AddWithValue("@sname", TextBox2.Text)
        cmd.Parameters.AddWithValue("@name", TextBox3.Text)
        cmd.Parameters.AddWithValue("@mobile", TextBox4.Text)
        cmd.Parameters.AddWithValue("@email", TextBox5.Text)
        cmd.Parameters.AddWithValue("@address", TextBox6.Text)
        cmd.Parameters.AddWithValue("@city", TextBox7.Text)
        cmd.Parameters.AddWithValue("@state", TextBox8.Text)
        cmd.Parameters.AddWithValue("@isactive", True)
        cn.Open()
        Dim ct As Integer = cmd.ExecuteNonQuery()
        cn.Close()

        If ct = 1 Then
            MsgBox("One Record Successfully")
        Else
            MsgBox("Something Happend")
        End If
    End Sub
End Class
