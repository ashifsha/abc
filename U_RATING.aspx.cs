using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class U_RATING : System.Web.UI.Page
{
    Db_operations db = new Db_operations();
    SqlCommand cmd = new SqlCommand();
    static int id;
    static int r1,r2,r3,r4,r5,r=0;
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.CommandText = "select NAME from Reg_tb where ID=" + Session["id"] + "";
        DataTable dt = db.getdata(cmd);
        if (dt.Rows.Count > 0)
        {
            Label1.Text = dt.Rows[0][0].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        cmd.CommandText = "select max(id) from rating";
        id = db.max_id(cmd);
        cmd.CommandText = "insert into rating values('"+id+"','"+Session["id"]+"','"+TextBox1.Text+"','"+r+"')";
        db.execute(cmd);
        Response.Write("<script>alert('success')</script>");

    }
    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {
        r1 = 1;
        r = r + r1;
        TextBox2.Text = r.ToString();

    }
    protected void ImageButton2_Command(object sender, CommandEventArgs e)
    {
        r2 = 1;
        r = r1 + r2;
        TextBox2.Text = r.ToString();
    }
    protected void ImageButton3_Command(object sender, CommandEventArgs e)
    {
        r3 = 1;
        r = r1 +r2+ r3;
        TextBox2.Text = r.ToString();
    }
    protected void ImageButton4_Command(object sender, CommandEventArgs e)
    {
        r4 = 1;
        r = r1+r2+r3 + r4;
        TextBox2.Text = r.ToString();
    }
    protected void ImageButton5_Command(object sender, CommandEventArgs e)
    {
        r5 = 1;
        r = r1+r2+r3+r4 +r5;
        TextBox2.Text = r.ToString();
    }
}