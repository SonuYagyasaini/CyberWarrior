using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class adminhome : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
            Label1.Text = Session["admin"].ToString();
        }
        else
        {
            Response.Redirect("adminlogin.aspx");
        }
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            MultiView1.SetActiveView(View1);
        }
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton2.Checked == true)
        {
            MultiView1.SetActiveView(View2);
        }
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton3.Checked == true)
        {
            MultiView1.SetActiveView(View3);
        }
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton4.Checked == true)
        {
            MultiView1.SetActiveView(View4);
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["admin"] = null;
        Response.Redirect("adminlogin.aspx");
    }
    protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton5.Checked == true)
        {
            MultiView1.SetActiveView(View5);
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton chk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)chk.Parent.Parent;
        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        SqlConnection con = new SqlConnection(database.ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("update AgencyRegis set Status='Active' where Sno=@s", con);
        cmd.Parameters.Add("@s", SqlDbType.Int).Value = GridView1.DataKeys[gr.RowIndex].Value.ToString();
        if (cmd.ExecuteNonQuery() > 0)
        {
           
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        LinkButton chk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)chk.Parent.Parent;
        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        SqlConnection con = new SqlConnection(database.ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("update Regis set Status='Verified' where Id=@s", con);
        cmd.Parameters.Add("@s", SqlDbType.Int).Value = GridView2.DataKeys[gr.RowIndex].Value.ToString();
        if (cmd.ExecuteNonQuery() > 0)
        {

        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        LinkButton chk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)chk.Parent.Parent;
        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        SqlConnection con = new SqlConnection(database.ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("update AdoptionRequest set Status='Verified' where Id=@s", con);
        cmd.Parameters.Add("@s", SqlDbType.Int).Value = GridView3.DataKeys[gr.RowIndex].Value.ToString();
        if (cmd.ExecuteNonQuery() > 0)
        {
           
        }
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        LinkButton chk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)chk.Parent.Parent;
        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        SqlConnection con = new SqlConnection(database.ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("update Workshop set Status='Active' where Sno=@s", con);
        cmd.Parameters.Add("@s", SqlDbType.Int).Value = GridView5.DataKeys[gr.RowIndex].Value.ToString();
        if (cmd.ExecuteNonQuery() > 0)
        {

        }
    }
    protected void LinkButton5_Click1(object sender, EventArgs e)
    {
        LinkButton chk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)chk.Parent.Parent;
        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        SqlConnection con = new SqlConnection(database.ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("update Donation set Status='Verified' where Sno=@s", con);
        cmd.Parameters.Add("@s", SqlDbType.Int).Value = GridView4.DataKeys[gr.RowIndex].Value.ToString();
        if (cmd.ExecuteNonQuery() > 0)
        {

        }
    }
}