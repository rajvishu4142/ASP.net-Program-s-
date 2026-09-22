Imports System.Data
Imports System.Data.SqlClient
Partial Class _Default
    Inherits System.Web.UI.Page

    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\InventoryManagement\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand("insert into product(pcode,pname,cname,uname,sname,purchase_price,selling_price,isactive) values(@pcode,@pname,@cname,@uname,@sname,@purchase_price,@selling_price,1)", cn)
        cmd.Parameters.AddWithValue("@pcode", TextBox1.Text)
        cmd.Parameters.AddWithValue("@pname", TextBox2.Text)
        cmd.Parameters.AddWithValue("@cname", DropDownList1.SelectedValue)
        cmd.Parameters.AddWithValue("@uname", DropDownList2.SelectedValue)
        cmd.Parameters.AddWithValue("@sname", DropDownList3.SelectedValue)
        cmd.Parameters.AddWithValue("@purchase_price", TextBox6.Text)
        cmd.Parameters.AddWithValue("@selling_price", TextBox7.Text)
        cmd.Parameters.AddWithValue("@isactive", True)

        cn.Open()
        Dim ct As Integer = cmd.ExecuteNonQuery()
        cn.Close()

        If ct = 1 Then
            MsgBox("One Record Successfully")
            Response.Redirect("./Search.aspx")
        Else
            MsgBox("Something Happend")
        End If
    End Sub
End Class
