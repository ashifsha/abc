using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class place_reg : System.Web.UI.Page
{
    Db_operations db=new Db_operations();
    SqlCommand cmd=new SqlCommand();
    static string path;
    static int id;
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
            cmd.CommandText = "select max (ID) from place_tb";
           id = db.max_id(cmd);
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "insert into place_tb values('" + id + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + path + "','" + TextBox7.Text + "','" + DropDownList1.Text + "','user')";
        db.execute(cmd);
        Response.Write("<script>alert('successfully registered')</script>");
        TextBox9.Text = "";
        TextBox10.Text = "";
        DropDownList1.ClearSelection();
        TextBox7.Text = "";
        Image1.ImageUrl = null;
        cmd.CommandText = "select max (ID) from place_tb";
        id = db.max_id(cmd);
    }
protected void  Button1_Click(object sender, EventArgs e)
{
    path="~/img/"+FileUpload1.FileName;
    FileUpload1.SaveAs(Server.MapPath(path));
    Image1.ImageUrl=path;
}
}