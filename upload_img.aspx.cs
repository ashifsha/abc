using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class upload_img : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    Db_operations db = new Db_operations();
    SqlCommand cmd = new SqlCommand();
    static string path;
    static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cmd.CommandText = "select max (ID) from image_tb";
            id = db.max_id(cmd);
        }
     
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "insert into image_tb values('" + id + "','" + Session["id"] + "','" + DropDownList1.SelectedValue + "','" + path + "','" + TextBox2.Text + "')";
        db.execute(cmd);
        Response.Write("<script>alert('saved')</script>");
        cmd.CommandText = "select max (ID) from image_tb";
     id = db.max_id(cmd);
        Image1.ImageUrl = null;
        TextBox2.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        path = "~/img/" + FileUpload1.FileName;
        FileUpload1.SaveAs(Server.MapPath(path));
        Image1.ImageUrl = path;
    }
}