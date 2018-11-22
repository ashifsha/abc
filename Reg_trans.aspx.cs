using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Reg_trans : System.Web.UI.Page
{
    Db_operations db = new Db_operations();
    SqlCommand cmd = new SqlCommand();
    String type = "";
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
            cmd.CommandText = "select maxs(ID) from add_trans";
            id = db.max_id(cmd);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked == true)
        {
            type = type + "," + CheckBox1.Text;
        }
        if (CheckBox2.Checked == true)
        {
            type = type + "," + CheckBox2.Text;
        }
        if (CheckBox3.Checked == true)
        {
            type = type + "," + CheckBox3.Text;
        }
        if (CheckBox4.Checked == true)
        {
            type = type + "," + CheckBox4.Text;
        }
        if (CheckBox5.Checked == true)
        {
            type = type + "," + CheckBox5.Text;
        }
        type = type.TrimStart(',');
        cmd.CommandText = "insert into Add_trans values ('" + id + "','" + TextBox2.Text + "','" + DropDownList5.Text + "','" + TextBox6.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + type + "','pending')";
        db.execute(cmd);
        Response.Write("<script>alert('sucessfully added')</script>");
        cmd.CommandText = "select max(ID) from Add_trans";
        id= db.max_id(cmd);
        DropDownList5.ClearSelection();
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;
        CheckBox5.Checked = false;
         
    }
}