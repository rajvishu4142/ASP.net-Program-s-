Imports System.Data
Imports System.Data.SqlClient
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\RAJ VISHWAKARMA\Desktop\ASPNetSem5\StudentAdmission\App_Data\Database.mdf;Integrated Security=True;User Instance=True")
        Dim da As New SqlDataAdapter("select nm,stream,marks from stud", cn)
        Dim dt As New DataTable()
        da.Fill(dt)
        GridView2.DataSource = dt
        GridView2.DataBind()
    End Sub
End Class
