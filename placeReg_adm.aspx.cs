using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class placeReg_adm : System.Web.UI.Page
{
    Db_operations db = new Db_operations();
    SqlCommand cmd = new SqlCommand();
    static string path;
    static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cmd.CommandText = "select max (ID) from place_tb";
            id = db.max_id(cmd);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "insert into place_tb values('" + id + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + path + "','" + TextBox4.Text + "','" + DropDownList1.Text + "','admin')";
        db.execute(cmd);
        Response.Write("<script>alert('successfully registered')</script>");
        TextBox2.Text = "";
        TextBox3.Text = "";
        DropDownList1.ClearSelection();
        TextBox4.Text = "";
        Image1.ImageUrl = null;
        cmd.CommandText = "select max (ID) from place_tb";
        id = db.max_id(cmd);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        path = "~/img/" + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath(path));
        Image1.ImageUrl = path;
    }
}