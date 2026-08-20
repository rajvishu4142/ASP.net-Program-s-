Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\StudentAdmission\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("update stud set nm='" + TextBox1.Text + "' , email='" + TextBox2.Text + "', mobile='" + TextBox3.Text + "', address='" + TextBox4.Text + "', city='" + TextBox5.Text + "', state='" + TextBox6.Text + "' where unm='" + Session("unm"))
        cn.Open()
        Dim chk As Integer = cmd.ExecuteNonQuery()
        cn.Close()

        If chk = 1 Then
            MsgBox("Your Profile is Updated!!")
        Else
            MsgBox("Something Error in Code")
        End If


    End Sub
End Class
