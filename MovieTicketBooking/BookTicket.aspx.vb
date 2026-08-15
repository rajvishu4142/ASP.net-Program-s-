Imports System.Data
Imports System.Data.SqlClient
Partial Class BookTicket
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\OneDrive\Desktop\ASPNetSem5\MovieTicketBooking\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("insert into booktkt values(@moviename,@showtime,@seatno,@amount)", cn)
        cmd.Parameters.AddWithValue("@moviename", DropDownList1.Text)
        cmd.Parameters.AddWithValue("@showtime", DropDownList2.Text)
        cmd.Parameters.AddWithValue("@seatno", TextBox1.Text)
        cmd.Parameters.AddWithValue("@amount", DropDownList3.Text)
        cn.Open()
        cmd.ExecuteNonQuery()
        MsgBox("Your Tickets Booked.")
        Response.Redirect("~/ViewTicket.aspx")
        cn.Close()


    End Sub
End Class
