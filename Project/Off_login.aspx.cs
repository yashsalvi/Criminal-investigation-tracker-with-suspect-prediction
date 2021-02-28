using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class judge_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-DCTU9ROE;Initial Catalog=Crime;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd;
        SqlDataReader dr;
        string s = "select pass from Login where CaseId='" + TextBox1.Text + "' And OfficerID = '"+TextBox2.Text+"'";
        con.Open();
        cmd = new SqlCommand(s, con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            if (TextBox3.Text == Convert.ToString(dr[0]))
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Login Successful !!!');", true);
                Session["fname"] = "Off";
                Session["OId"] = TextBox2.Text;
                Session["CId"] = TextBox1.Text;
                con.Close();
                Response.Redirect("ViewCaseHistory.aspx");
            }
            else
            {
                con.Close();
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Invalid Password !!!');", true);
            }
        }
        else
        {
            con.Close();
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Invalid ID!!!');", true);
        }
    }
}