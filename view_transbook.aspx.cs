using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class view_transbook : System.Web.UI.Page
{
    Db_operations db = new Db_operations();
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from Transport_tb where STATUS='pending'";
        DataGrid1.DataSource = db.getdata(cmd);
        DataGrid1.DataBind();
    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "APPROVE")
        {
            cmd.CommandText = "update Transport_tb set STATUS='APPROVE' where ID=" + e.Item.Cells[0].Text + "";
            db.execute(cmd);
            cmd.CommandText = "select * from Transport_tb where STATUS='pending'";
            DataGrid1.DataSource = db.getdata(cmd);
            DataGrid1.DataBind();
        }
        else
        {
            cmd.CommandText = "update Transport_tb set STATUS='REJECT' where ID=" + e.Item.Cells[0].Text + "";
            db.execute(cmd);
            cmd.CommandText = "select * from Transport_tb where STATUS='pending'";
            DataGrid1.DataSource = db.getdata(cmd);
            DataGrid1.DataBind();
        }
    }
}