Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\InventoryManagement\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("SELECT * FROM user_login WHERE unm=@unm AND psw=@psw", cn)
        cmd.Parameters.AddWithValue("@unm", TextBox1.Text)
        cmd.Parameters.AddWithValue("@psw", TextBox2.Text)
        cn.Open()
        Dim count As Integer = Convert.ToInt32(cmd.ExecuteScalar())
        cn.Close()
        If count > 0 Then
            Session("unm") = TextBox1.Text
            MsgBox("Login Successfully")
            Response.Redirect("./Product.aspx")
        Else
            MsgBox("Invalid Username or Password")
        End If
    End Sub
    Protected Sub linkbutton1_click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("./Signup.aspx")
    End Sub
    
End Class
