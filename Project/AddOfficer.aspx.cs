using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddOfficer : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-DCTU9ROE;Initial Catalog=Crime;Integrated Security=True");

    string image = "", path = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AOfficer"] == "Yes")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Officer Added Successfully');", true);
            Session["AOfficer"] = "";
        }
        string com = "select top 1 ID From Officer ORDER BY ID Desc;";
        con.Open();
        SqlCommand cmd = new SqlCommand(com, con);
        object count = cmd.ExecuteScalar();
        if (count != null)
        {
            int i = Convert.ToInt32(count);
            i++;
            TextBox1.Text = i.ToString();
        }
        else
        {
            TextBox1.Text = "1001";
        }
        con.Close();
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
            return "Mail ID";
        }
        if (TextBox6.Text == "")
        {
            return "Area";
        }
        return "OK";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string c = check();
        if (c == "OK")
        {
            SqlCommand cmd = new SqlCommand("insert into Officer values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + Image1.ImageUrl + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Session["AOfficer"] = "Yes";
            Response.Redirect("AddOfficer.aspx");

        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter "+c+"');", true);
        }
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
}