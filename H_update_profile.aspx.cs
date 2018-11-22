using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class H_update_profile : System.Web.UI.Page
{
    Db_operations db=new Db_operations();
    SqlCommand cmd = new SqlCommand();
    static string path,path1;

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

            cmd.CommandText = "select ID,LOCATION from Place_tb";
            DropDownList1.DataSource = db.getdata(cmd);
            DropDownList1.DataTextField = "LOCATION";
            DropDownList1.DataValueField = "ID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--select--");
            cmd.CommandText = "select * from Hotel_tb where ID=" + Session["id"] + "";
            DataTable dt1 = db.getdata(cmd);
            if (dt.Rows.Count > 0)
            {
                
                DropDownList1.Text = dt1.Rows[0][1].ToString();
                TextBox13.Text = dt1.Rows[0][2].ToString();
                TextBox9.Text = dt1.Rows[0][3].ToString();
                TextBox10.Text = dt1.Rows[0][4].ToString();
                TextBox11.Text = dt1.Rows[0][5].ToString();
                string str = dt1.Rows[0][6].ToString();
                string[] a = str.Split(',');

                //for (int i = 0; i < CheckBoxList1.Items.Count; i++)
                //{
                //    foreach (string s in a)
                //    {
                //        if()
                //    }
                //}

                //    CheckBox1.Text = a[0];
                //CheckBox2.Text = a[1];
                //CheckBox3.Text = a[2];
                //CheckBox4.Text = a[3];
                //CheckBox5.Text = a[4];
                //TextBox12.Text = dt.Rows[0][7].ToString();
                //Image1.ImageUrl = dt.Rows[0][8].ToString();
                //Image2.ImageUrl = dt.Rows[0][9].ToString();

            }
        }
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        cmd.CommandText = "update Hotel_tb set LOCATION='"+ DropDownList1.SelectedValue + "',HOTEL_NAME='" + TextBox13.Text + "',ADDRESS='" + TextBox9.Text + "',PHONE='" + TextBox10.Text + "',EMAIL='" + TextBox11.Text + "',ROOM_AVAIL='" + TextBox12.Text + "',IMAGE1='" + path + "',IMAGE2='" + path1 + "' WHERE ID=" + Session["id"] + "";
        db.execute(cmd);
        Response.Write("<script>alert('updated successfully')</script>");
    }
protected void  Button1_Click(object sender, EventArgs e)
{
      path = "~/img/" + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath(path));
        Image1.ImageUrl = path;
}
protected void  Button2_Click(object sender, EventArgs e)
{
      path1 = "~/img/" + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath(path));
        Image1.ImageUrl = path;
}
}