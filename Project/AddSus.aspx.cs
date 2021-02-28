using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Result : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-DCTU9ROE;Initial Catalog=Crime;Integrated Security=True");
    string image = "", path = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Addsus"] == "Yes")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('New suspect added to the case');", true);
            Session["Addsus"] = "";
        }

        TextBox1.Text = Session["CId"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            image = FileUpload1.FileName;
            path = Server.MapPath("~\\Image\\");
            FileUpload1.SaveAs(path + image);
            Image1.ImageUrl = "Image\\" + image;
        }
        catch (Exception ep)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Select your photo');", true);
        }
    }

    public string check()
    {
        if (TextBox2.Text == "")
        {
            return "Name";
        }
        if (TextBox3.Text == "")
        {
            return "Mobile No";
        }
        if (TextBox4.Text == "")
        {
            return "Address";
        }
        if (TextBox5.Text == "")
        {
            return "Relation";
        }
        if (TextBox6.Text == "")
        {
            return "Note";
        }
        return "OK";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string c = check();
        if (c == "OK")
        {
            SqlCommand cmd = new SqlCommand("insert Into suspect values ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+Image1.ImageUrl+"','"+DateTime.Now.ToShortDateString()+"','0','"+TextBox6.Text+"')",con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            
            cmd = new SqlCommand("insert Into CaseHistory values ('" + TextBox1.Text + "','New Suspect Added to the case : "+TextBox2.Text+"','" + DateTime.Now.ToShortDateString() + "','"+Session["OId"].ToString()+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            
            Session["Addsus"] = "Yes";
            Response.Redirect("AddSus.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Please Enter "+c+" !!!');", true);   
        }
    }
}