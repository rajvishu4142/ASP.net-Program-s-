Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox2.Text <> TextBox3.Text Then
            MsgBox("New password and confirm password are not same")
        End If
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\StudentAdmission\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("select count(unm) from stud where unm='" + Session("unm") + "' and psw=@psw", cn)
        cmd.Parameters.AddWithValue("@psw", TextBox1.Text)
        cn.Open()
        Dim chk As Integer = cmd.ExecuteScalar()
        cn.Close()

        If chk > 0 Then
            Dim cmdx As New SqlCommand("update stud set psw='" + TextBox2.Text + "' where unm='" + Session("unm") + "'", cn)
            cn.Open()
            cmdx.ExecuteNonQuery()
            cn.Close()
            MsgBox("Password changed successfully")
        Else
            MsgBox("Current password is not correct")
        End If

    End Sub
End Class

