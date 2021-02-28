using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Check;

public partial class admin_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-DCTU9ROE;Initial Catalog=Crime;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        #region System Generated . . .
        Class1 c = new Class1();
        bool c1 = c.checkLoad("S051", con);
        if (!c1)
        {
            Response.Redirect("Login.aspx");
        }
        #endregion
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd;
        SqlDataReader dr;
        string s = "select password from admin where admin_id='" + TextBox1.Text + "'";
        con.Open();
        cmd = new SqlCommand(s, con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            if (TextBox2.Text == Convert.ToString(dr[0]))
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Login Successful !!!');", true);
                Session["fname"] = "admin";
                Response.Redirect("AddCase.aspx");

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Invalid Password !!!');", true);
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Invalid ID!!!');", true);
        }
        con.Close();
    }
}