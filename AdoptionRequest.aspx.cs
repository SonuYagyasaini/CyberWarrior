using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AdoptionRequest : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            Label2.Text = RadioButton1.Text;
        }
        else
        {
            Label2.Text = RadioButton2.Text;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(database.ConnectionString);
        con.Open();
        cmd = new SqlCommand("insert into AdoptionRequest values(@n,@g,@a,@c,@p,@ad,@mob,@email,@pro,@anu,@rea,@st,@rid)", con);
        cmd.Parameters.Add("@n", SqlDbType.VarChar, 50).Value = TextBox1.Text;
        cmd.Parameters.Add("@g", SqlDbType.VarChar, 10).Value = Label2.Text;
        cmd.Parameters.Add("@a", SqlDbType.VarChar, 50).Value = TextBox2.Text;
        cmd.Parameters.Add("@c", SqlDbType.VarChar, 50).Value = DropDownList1.SelectedItem.Text;
        cmd.Parameters.Add("@p", SqlDbType.VarChar, 6).Value = TextBox3.Text;
        cmd.Parameters.Add("@ad", SqlDbType.VarChar, 12).Value = TextBox4.Text;
        cmd.Parameters.Add("@mob", SqlDbType.VarChar, 10).Value = TextBox5.Text;
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = TextBox6.Text;
        cmd.Parameters.Add("@pro", SqlDbType.VarChar, 20).Value = DropDownList2.SelectedItem.Text;
        cmd.Parameters.Add("@anu", SqlDbType.VarChar, 50).Value = DropDownList3.SelectedItem.Text;
        cmd.Parameters.Add("@rea", SqlDbType.VarChar, 100).Value = TextBox7.Text;       
        cmd.Parameters.Add("@st", SqlDbType.VarChar, 20).Value = "Not Verified";
        string s1 = "RID1090" + System.DateTime.Now.Minute + "0" + System.DateTime.Now.Second + "" + System.DateTime.Now.Millisecond;
        cmd.Parameters.Add("@rid", SqlDbType.VarChar, 50).Value = s1;
        if (cmd.ExecuteNonQuery() > 0)
        {
            Label1.Text = "Your Request has been sent to Admin and Your Request Id:-" + s1;
        }
    }
}