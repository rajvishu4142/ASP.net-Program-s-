Imports System.Data
Imports System.Data.SqlClient
Partial Class Registration
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\MovieTicketBooking\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("insert into register values(@uid,@unm,@email,@psw)", cn)
        cmd.Parameters.AddWithValue("@uid", TextBox1.Text)
        cmd.Parameters.AddWithValue("@unm", TextBox2.Text)
        cmd.Parameters.AddWithValue("@email", TextBox3.Text)
        cmd.Parameters.AddWithValue("@psw", TextBox4.Text)
        cn.Open()
        cmd.ExecuteNonQuery()
        MsgBox("Record Inserted.")
        Dim da As New SqlDataAdapter("select * from register", cn)
        Dim dt As New DataTable()
        da.Fill(dt)
        Response.Redirect("~/LoginPage.aspx")
        cn.Close()


    End Sub
End Class
