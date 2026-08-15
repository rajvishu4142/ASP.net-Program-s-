Imports System.Data
Imports System.Data.SqlClient
Partial Class Default2
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\EmployeeDetail\App_Data\Database.mdf;Integrated Security=True;User Instance=True")

    Protected Sub grid()
        Dim da As New SqlDataAdapter("select * from emp_data", cn)
        Dim dt As New DataTable()
        da.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub
    '''---Add Page Code Below
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cmd As New SqlCommand("insert into emp_data values(@eid,@enm,@mobile,@dob,@doj,@city,@salary)", cn)
        cmd.Parameters.AddWithValue("@eid", TextBox1.Text)
        cmd.Parameters.AddWithValue("@enm", TextBox2.Text)
        cmd.Parameters.AddWithValue("@mobile", Session("mobile"))
        cmd.Parameters.AddWithValue("@dob", TextBox4.Text)
        cmd.Parameters.AddWithValue("@doj", TextBox5.Text)
        cmd.Parameters.AddWithValue("@city", TextBox6.Text)
        cmd.Parameters.AddWithValue("@salary", TextBox7.Text)

        cn.Open()
        Dim chk As Integer = cmd.ExecuteNonQuery()
        grid()
        cn.Close()


        If chk = 1 Then
            MsgBox("One Employee Added in Company!!")
        Else
            MsgBox("Something Wrong in Code??")
        End If


    End Sub


    '''----Show Page Code Below
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        grid()
    End Sub

    ''--Updated Page Code Below
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim cmd As New SqlCommand("update emp_data set enm=@enm,mobile=@mobile,dob=@dob,doj=@doj,city=@city,salary=@salary where eid=@eid", cn)
        cmd.Parameters.AddWithValue("@eid", TextBox1.Text)
        cmd.Parameters.AddWithValue("@enm", TextBox2.Text)
        cmd.Parameters.AddWithValue("@mobile", TextBox3.Text)
        cmd.Parameters.AddWithValue("@dob", TextBox4.Text)
        cmd.Parameters.AddWithValue("@doj", TextBox5.Text)
        cmd.Parameters.AddWithValue("@city", TextBox6.Text)
        cmd.Parameters.AddWithValue("@salary", TextBox7.Text)
        
        cn.Open()
        cmd.ExecuteNonQuery()
        MsgBox("Updated Your Details Successfully!")
        grid()
        cn.Close()
        ''Dim chk As Integer = cmd.ExecuteNonQuery()
        


        ''If chk = 1 Then


        ''Else
        ''MsgBox("Something Else in Code ???")
        ''End If

    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim cmd As New SqlCommand("delete from emp_data where eid=@eid", cn)
        cmd.Parameters.AddWithValue("@eid", TextBox1.Text)
        cn.Open()
        cmd.ExecuteNonQuery()
        MsgBox("Delete Successfully")
        grid()
        cn.Close()
    End Sub
End Class
