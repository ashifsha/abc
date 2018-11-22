using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class hotel_book : System.Web.UI.Page
{
    Db_operations db = new Db_operations();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cmd.CommandText = "select HOTEL_NAME from Hotel_tb where ID=" + Session["id"] + "";
            DataTable dt = db.getdata(cmd);
            if (dt.Rows.Count > 0)
            {
                Label1.Text = dt.Rows[0][0].ToString();
            }
            cmd.CommandText = "SELECT Hotel_booking.ID, Reg_tb.NAME, Hotel_booking.CHECK_IN, Hotel_booking.CHECK_OUT, Hotel_booking.TYPE, Hotel_booking.ADULT, Hotel_booking.CHILDREN, Hotel_booking.PURPOSE FROM  Reg_tb INNER JOIN Hotel_booking ON Reg_tb.ID = Hotel_booking.USER_ID and  Hotel_booking.status='pending'";
            DataGrid1.DataSource = db.getdata(cmd);
            DataGrid1.DataBind();
        }
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {

        if (e.CommandName == "Approve")
        {
            cmd.CommandText = "update Hotel_booking set status='Approve' where ID="+e.Item.Cells[0].Text+"";
            db.execute(cmd);
            cmd.CommandText = "SELECT Hotel_booking.ID, Reg_tb.NAME, Hotel_booking.CHECK_IN, Hotel_booking.CHECK_OUT, Hotel_booking.TYPE, Hotel_booking.ADULT, Hotel_booking.CHILDREN, Hotel_booking.PURPOSE FROM  Reg_tb INNER JOIN Hotel_booking ON Reg_tb.ID = Hotel_booking.USER_ID and  Hotel_booking.status='pending'";
            DataGrid1.DataSource = db.getdata(cmd);
            DataGrid1.DataBind();
        }
        else
        {
            cmd.CommandText = "update Hotel_booking set status='Reject' where ID=" + e.Item.Cells[0].Text + "";
            db.execute(cmd);
            cmd.CommandText = "SELECT Hotel_booking.ID, Reg_tb.NAME, Hotel_booking.CHECK_IN, Hotel_booking.CHECK_OUT, Hotel_booking.TYPE, Hotel_booking.ADULT, Hotel_booking.CHILDREN, Hotel_booking.PURPOSE FROM  Reg_tb INNER JOIN Hotel_booking ON Reg_tb.ID = Hotel_booking.USER_ID and  Hotel_booking.status='pending'";
            DataGrid1.DataSource = db.getdata(cmd);
            DataGrid1.DataBind();
        }
    }
}