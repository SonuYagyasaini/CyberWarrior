using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class changepassword : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Label1.Text = Session["user"].ToString();
        }
        else
        {
            Response.Redirect("Forgetpassword.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(database.ConnectionString);
        con.Open();
        cmd = new SqlCommand("update AgencyRegis set Password='" + TextBox1.Text + "' where Email='" + Label1.Text + "'", con);
        if (cmd.ExecuteNonQuery() > 0)
        {
            Label2.Text = "Ur Password has been changed !!!!";
        }
    }
}