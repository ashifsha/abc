using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class feedback : System.Web.UI.Page
{
    Db_operations db = new Db_operations();
    SqlCommand cmd = new SqlCommand();
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cmd.CommandText = "select NAME from Reg_tb where ID=" + Session["id"] + "";
            DataTable dt = db.getdata(cmd);
            if (dt.Rows.Count > 0)
            {
                Label1.Text = dt.Rows[0][0].ToString();
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "select max(ID) from feedback_tb";
        id = db.max_id(cmd);
        cmd.CommandText = "insert into feedback_tb values('"+id+"','"+Session["id"]+"','" + TextBox10.Text + "','" + TextBox11.Text + "')";
        db.execute(cmd);
        Response.Write("<script>alert('successful')</script>");
      
        TextBox10.Text = "";
        TextBox11.Text = "";
        

    }
}