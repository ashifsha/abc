using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class H_home : System.Web.UI.Page
{
    Db_operations db = new Db_operations();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "select HOTEL_NAME from Hotel_tb where ID=" + Session["id"] + "";
        DataTable dt = db.getdata(cmd);
        if (dt.Rows.Count > 0)
        {
            Label1.Text = dt.Rows[0][0].ToString();
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}