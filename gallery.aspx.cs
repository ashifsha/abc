using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class gallery : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    Db_operations db = new Db_operations();

    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.CommandText = "select NAME from Reg_tb where ID=" + Session["id"] + "";
        DataTable dt = db.getdata(cmd);
        if (dt.Rows.Count > 0)
        {
            Label1.Text = dt.Rows[0][0].ToString();
        }
        
        cmd.CommandText = "select * from image_tb";
        DataGrid1.DataSource = db.getdata(cmd);
        DataGrid1.DataBind();
    }
}