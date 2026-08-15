Imports System.Data
Imports System.Data.SqlClient
Partial Class ViewTicket
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\OneDrive\Desktop\ASPNetSem5\MovieTicketBooking\App_Data\Database.mdf;Integrated Security=True;User Instance=True")

        Dim da As New SqlDataAdapter("select * from booktkt", cn)
        Dim dt As New DataTable()
        da.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub
End Class
