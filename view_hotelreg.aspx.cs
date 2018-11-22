using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class view_hotelreg : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Db_operations db = new Db_operations();
    SendMail sm = new SendMail();
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from Hotel_tb";
        DataGrid1.DataSource = db.getdata(cmd);
        DataGrid1.DataBind();
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        MultiView1.SetActiveView(View2);
       Label1.Text = e.Item.Cells[0].Text;
        TextBox15.Text = e.Item.Cells[1].Text;
        TextBox13.Text = e.Item.Cells[2].Text;
        Image1.ImageUrl = e.Item.Cells[8].Text;
        TextBox9.Text = e.Item.Cells[3].Text;
        TextBox10.Text = e.Item.Cells[4].Text;
        TextBox14.Text = e.Item.Cells[6].Text;
        TextBox11.Text = e.Item.Cells[5].Text;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from Hotel_tb where id=" + Label1.Text + "";
        db.execute(cmd);
        Response.Write("<script>alert('Blocked')</script>");
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Random rd = new Random();
        string pwd = rd.Next(0000, 9999).ToString();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update  Hotel_tb set STATUS='ACCEPT' where id=" + Label1.Text + "";
        db.execute(cmd);
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "insert into login_tb values('"+Label1.Text+"','"+TextBox11.Text+"','"+pwd+"','hotel')";
        db.execute(cmd1);
        Response.Write("<script>alert('Accepted')</script>");
        sm.sendmail(TextBox11.Text, pwd, "your username and password");
    }
}