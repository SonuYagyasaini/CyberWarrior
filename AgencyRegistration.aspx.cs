using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AgencyRegistration : System.Web.UI.Page
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
        cmd = new SqlCommand("insert into AgencyRegis values(@an,@pn,@a,@c,@p,@mob,@email,@pswd,@ac,@st,@ques,@ans)", con);
        cmd.Parameters.Add("@an", SqlDbType.VarChar, 50).Value = TextBox1.Text;
        cmd.Parameters.Add("@pn", SqlDbType.VarChar, 50).Value = TextBox2.Text;
        cmd.Parameters.Add("@a", SqlDbType.VarChar, 50).Value = TextBox3.Text;
        cmd.Parameters.Add("@c", SqlDbType.VarChar, 50).Value = DropDownList1.SelectedItem.Text;
        cmd.Parameters.Add("@p", SqlDbType.VarChar, 50).Value = TextBox4.Text;
        cmd.Parameters.Add("@mob", SqlDbType.VarChar, 10).Value = TextBox5.Text;
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 10).Value = TextBox6.Text;
        cmd.Parameters.Add("@pswd", SqlDbType.VarChar, 50).Value = TextBox8.Text;
        cmd.Parameters.Add("@ac", SqlDbType.VarChar, 10).Value = "N/A";
        cmd.Parameters.Add("@st", SqlDbType.VarChar, 10).Value = "Not Active";
        cmd.Parameters.Add("@ques", SqlDbType.VarChar, 50).Value = DropDownList2.SelectedItem.Text;
        cmd.Parameters.Add("@ans", SqlDbType.VarChar, 50).Value = TextBox7.Text;
        if(cmd.ExecuteNonQuery()>0)
        {
            Label1.Text = "Agency Register Successfully !!!!";
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}