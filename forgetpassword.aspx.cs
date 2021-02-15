using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class forgetpassword : System.Web.UI.Page
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
        cmd = new SqlCommand("select * from AgencyRegis where Email='" + TextBox1.Text + "' and Question='" + DropDownList1.SelectedItem.Text + "' and Answer='" + TextBox2.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            //Label1.Text = "Your Password is:"+dr[1].ToString();         
            Session.Add("user", TextBox1.Text);
            Response.Redirect("changepassword.aspx");
        }
        else
        {
            Label1.Text = "Username or Question or Answer is incorrect !!!!";
        }
    }
}