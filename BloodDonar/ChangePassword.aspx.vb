Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\BloodDonar\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("select count(unm) from donar where unm= '" + Session("unm") + "' and psw=@psw", cn)
        cmd.Parameters.AddWithValue("@psw", TextBox1.Text)
        cn.Open()
        Dim chk As Integer = cmd.ExecuteScalar
        cn.Close()
        If chk > 0 Then
            Dim cmdk As New SqlCommand("update donar set psw='" + TextBox3.Text + "' where unm='" + Session("unm") + "'", cn)
            cn.Open()
            cmdk.ExecuteNonQuery()
            cn.Close()
            MsgBox("Password has been Changed successfully")
        Else
            MsgBox("Password are not Same")
        End If


    End Sub
End Class
