Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\EmpManagementSite\App_Data\Database.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand("update emp set email='" + TextBox1.Text + "',mobile='" + TextBox2.Text + "',address='" + TextBox3.Text + "',city='" + TextBox4.Text + "',state='" + TextBox5.Text + "' where unm='" + Session("unm") + "'", cn)
        Dim chk As Integer
        cn.Open()
        chk = cmd.ExecuteNonQuery
        cn.Close()
        If (chk = 1) Then
            MsgBox("Update successfully")

        Else
            MsgBox("Please Try Again")
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim cmd As New SqlCommand("delete emp where unm=@unm", cn)
        cmd.Parameters.AddWithValue("@unm", TextBox6.Text)
        cn.Open()
        cmd.ExecuteNonQuery()
        MsgBox("Your Record has been Deleted")
        cn.Close()

    End Sub
End Class
