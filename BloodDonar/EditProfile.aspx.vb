Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page
    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\BloodDonar\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("update donar set email='" + TextBox1.Text + "',mobile='" + TextBox2.Text + "',address='" + TextBox3.Text + "',city='" + TextBox4.Text + "',state='" + TextBox5.Text + "' where unm='" + Session("unm") + "'", cn)
        cn.Open()
        Dim chk As Integer = cmd.ExecuteNonQuery
        cn.Close()
        If (chk = 1) Then
            MsgBox("Update Successfully")
        Else
            MsgBox("Somethhing happened in code???")
        End If

    End Sub
End Class
