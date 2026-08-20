Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\StudentTable\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
    Protected Sub grid()
        Dim da As New SqlDataAdapter("select * from stud", cn)
        Dim dt As New DataTable()
        da.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand("insert into stud values(@rollno,@name,@course,@percentage)", cn)
        cmd.Parameters.AddWithValue("@rollno", TextBox1.Text)
        cmd.Parameters.AddWithValue("@name", TextBox2.Text)
        cmd.Parameters.AddWithValue("@course", TextBox3.Text)
        cmd.Parameters.AddWithValue("@percentage", TextBox4.Text)
        cn.Open()
        cmd.ExecuteNonQuery()
        MsgBox("Inserted Succesfully")
        grid()
        cn.Close()
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim cmd As New SqlCommand("update stud set percentage=@percentage where name=@name", cn)
        cmd.Parameters.AddWithValue("@name", TextBox5.Text)
        cmd.Parameters.AddWithValue("@percentage", TextBox6.Text)
        cn.Open()
        cmd.ExecuteNonQuery()
        MsgBox("Updated Succesfully")
        grid()
        cn.Close()
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim cmd As New SqlCommand("delete from stud where rollno=@rollno", cn)
        cmd.Parameters.AddWithValue("@rollno", TextBox7.Text)
        cn.Open()
        cmd.ExecuteNonQuery()
        MsgBox("Delete Successfully")
        grid()
        cn.Close()
    End Sub
End Class
