using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Donation : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            for(int i=2019;i<=2035;i++)
            {
                DropDownList5.Items.Add(i.ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        Label1.Text = "Your OTP Has been Sent Successfully !!!";
        Label2.Visible = true;
        TextBox8.Visible = true;
        Button1.Visible = false;
    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {
        if (TextBox8.Text == "222222")
        {
            Button2.Visible = true;
            Label1.Visible = false;
            Label2.Visible = false;
            TextBox8.Visible = false;
        }
        else
        {
            Label1.Text = "Incorrect OTP !!!";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(database.ConnectionString);
        con.Open();
        cmd = new SqlCommand("insert into Donation values(@n,@a,@c,@m,@e,@pm,@ct,@amt,@date,@tid,@st)", con);
        cmd.Parameters.Add("@n", SqlDbType.VarChar, 50).Value = TextBox1.Text;
        cmd.Parameters.Add("@a", SqlDbType.VarChar, 50).Value = TextBox2.Text;
        cmd.Parameters.Add("@c", SqlDbType.VarChar, 10).Value = DropDownList1.SelectedItem.Text;
        cmd.Parameters.Add("@m", SqlDbType.VarChar, 10).Value = TextBox3.Text;
        cmd.Parameters.Add("@e", SqlDbType.VarChar, 50).Value = TextBox4.Text;
        cmd.Parameters.Add("@pm", SqlDbType.VarChar, 50).Value = DropDownList2.SelectedItem.Text;
        cmd.Parameters.Add("@ct", SqlDbType.VarChar, 50).Value = DropDownList3.SelectedItem.Text;
        cmd.Parameters.Add("@amt", SqlDbType.VarChar, 50).Value = TextBox5.Text;
        cmd.Parameters.Add("@date", SqlDbType.Date).Value = System.DateTime.Now;
        string id="TID1120" + System.DateTime.Now.Minute + "0" + System.DateTime.Now.Second + "3" + System.DateTime.Now.Millisecond;
        cmd.Parameters.Add("@tid", SqlDbType.VarChar, 50).Value = id;
        cmd.Parameters.Add("@st", SqlDbType.VarChar, 50).Value = "Not Verified";
        if (cmd.ExecuteNonQuery() > 0)
        {
            Label3.Text = "Payment Done Successfully and Your Transaction Id:= " + id;
        }
    }
}