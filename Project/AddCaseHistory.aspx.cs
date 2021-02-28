using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddCaseHistory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-DCTU9ROE;Initial Catalog=Crime;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["CId"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Please Enter Note !!!');", true);
        }
        else
        {
            SqlCommand cmd = new SqlCommand("Insert into CaseHistory values ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+DateTime.Now.ToShortDateString()+"','"+Session["OId"].ToString()+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            TextBox2.Text = "";
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('History Added Successfully');", true);
        }
    }
}