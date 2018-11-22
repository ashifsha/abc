using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class hotel : System.Web.UI.Page
{
    Db_operations db = new Db_operations();
    SqlCommand cmd = new SqlCommand();
    static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
        if (!IsPostBack)
        {
            cmd.CommandText = "select NAME from Reg_tb where ID=" + Session["id"] + "";
            DataTable dt = db.getdata(cmd);
            if (dt.Rows.Count > 0)
            {
                Label1.Text = dt.Rows[0][0].ToString();
            }
            cmd.CommandText = "select ID,LOCATION from Place_tb";
            DropDownList10.DataSource = db.getdata(cmd);
            DropDownList10.DataTextField = "LOCATION";
            DropDownList10.DataValueField = "ID";
            DropDownList10.DataBind();
            DropDownList10.Items.Insert(0, "--select--");
            cmd.CommandText = "select max (ID) from Hotel_booking";
            id = db.max_id(cmd);
            for (int i = 1; i <= 31; i++)
            {
                DropDownList1.Items.Add(i.ToString());

            }
            DropDownList1.Items.Insert(0, "DD");
            DropDownList2.Items.Insert(0, "MM");
            for (int i =2018; i <= 2100; i++)
            {
                DropDownList3.Items.Add(i.ToString());

            }
            DropDownList3.Items.Insert(0, "YYYY");
        }
         for (int i = 1; i <= 31; i++)
            {
                DropDownList4.Items.Add(i.ToString());

            }
            DropDownList4.Items.Insert(0, "DD");
            DropDownList5.Items.Insert(0, "MM");
            for (int i =2018; i <= 2100; i++)
            {
                DropDownList6.Items.Add(i.ToString());

            }
            DropDownList6.Items.Insert(0, "YYYY");
         for (int i =1; i <=10 ; i++)
            {
                DropDownList8.Items.Add(i.ToString());

            }
            DropDownList8.Items.Insert(0, "");
        
     for (int i =1; i <= 7; i++)
            {
                DropDownList9.Items.Add(i.ToString());

            }
            DropDownList9.Items.Insert(0, "");
        }
        

    protected void  Button1_Click(object sender, EventArgs e)
{
    MultiView1.SetActiveView(View1);
    string dt1 = DropDownList1.Text + "/" + DropDownList2.Text + "/" + DropDownList3.Text;
    string dt2 = DropDownList4.Text + "/" + DropDownList5.Text + "/" + DropDownList6.Text;
    DateTime d = Convert.ToDateTime(dt1);
    DateTime d1 = Convert.ToDateTime(dt2);
    DateTime s = Convert.ToDateTime(System.DateTime.Now.ToShortDateString());
    if (d < s || d1 < s)
    {
        Response.Write("<script>alert('check the date')</script>");
    }
    else
    {

        cmd.CommandText = "insert into Hotel_booking values('" + id + "','" + Session["id"] + "','" + DropDownList10.Text + "','" + DropDownList11.Text + "','" + dt1 + "','" + dt2 + "','" + DropDownList7.Text + "','" + DropDownList8.Text + "','" + DropDownList9.Text + "','" + TextBox4.Text + "')";
        db.execute(cmd);
        Response.Write("<script>alert('Submitted')</script>");
        cmd.CommandText = "select max (ID) from Hotel_booking";
        id = db.max_id(cmd);

        TextBox4.Text = "";

        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection();
        DropDownList3.ClearSelection();
        DropDownList4.ClearSelection();
        DropDownList5.ClearSelection();
        DropDownList6.ClearSelection();
        DropDownList7.ClearSelection();
        DropDownList8.ClearSelection();
        DropDownList9.ClearSelection();
        DropDownList10.ClearSelection();
        DropDownList11.ClearSelection();
    }
}
    protected void DropDownList10_SelectedIndexChanged(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View1);
        cmd.CommandText = "select  DISTINCT HOTEL_NAME from Hotel_tb where location='" + DropDownList10.SelectedValue + "'";
        DropDownList11.DataSource = db.getdata(cmd);
        DropDownList11.DataTextField = "HOTEL_NAME";
       // DropDownList11.DataValueField = "ID";
        DropDownList11.DataBind();
        DropDownList11.Items.Insert(0, "--select--");

    }


   
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList9_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.SetActiveView(View2);
        cmd.CommandText = "select ID,HOTEL_NAME,status from Hotel_booking where USER_ID=" + Session["id"] + " and status='Approve'";
        DataGrid1.DataSource = db.getdata(cmd);
        DataGrid1.DataBind();
    }
}

  