Imports System.Data
Imports System.Data.SqlClient
Partial Class LoginPage
    Inherits System.Web.UI.Page

    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\OneDrive\Desktop\ASPNetSem5\MovieTicketBooking\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("select count(email) from register where email='" + TextBox3.Text + "'and psw='" + TextBox4.Text + "'", cn)
        cn.Open()
        Dim count = cmd.ExecuteScalar
        cn.Close()

        If count > 0 Then
            Session("un") = TextBox3.Text
            Response.Redirect("~/BookTicket.aspx")
        Else
            MsgBox("Invalid EMail & Password??")

        End If

    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("~/Registration.aspx")
    End Sub
End Class
