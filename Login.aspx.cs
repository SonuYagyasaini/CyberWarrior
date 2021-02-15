using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(database.ConnectionString);
        con.Open();
        cmd = new SqlCommand("select * from AgencyRegis where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            //Label1.Text = "Login Succesfully !!!";
            Session.Add("user", TextBox1.Text);
            Response.Redirect("Userprofile.aspx");
        }
        else
        {
            Label1.Text = "Username or Password is incorrect !!!!";
        }
    }
}