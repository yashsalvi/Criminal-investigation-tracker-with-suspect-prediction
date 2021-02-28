using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AddEvid : System.Web.UI.Page
{

    string image = "", path = "";
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-DCTU9ROE;Initial Catalog=Crime;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox1.Text = Session["CId"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("Select Name from Suspect where CaseID='" + TextBox1.Text + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int row = ds.Tables[0].Rows.Count;
            for (int i = 0; i < row; i++)
            {
                DropDownList2.Items.Add(ds.Tables[0].Rows[i][0].ToString());
            }
        }
        if (Session["AddE"] == "Yes")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Evidence Added Successfully');", true);
            Session["AddE"] = "";
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "Physical")
        {
            Panel5.Visible = true;
        }
        else
        {
            Panel5.Visible = false;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
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
            return "Evidence";
        }
        if (TextBox3.Text == "")
        {
            return "Note";
        }
        if (TextBox4.Text == "")
        {
            return "Points";
        }
        return "OK";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string c = check();
        if (c == "OK")
        {
            SqlCommand cmd;
            if (DropDownList1.Text == "Physical")
            {
                cmd = new SqlCommand("Insert into Evidence values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + Image1.ImageUrl + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DateTime.Now.ToShortDateString() + "','" + Session["OId"].ToString() + "') ", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                cmd = new SqlCommand("Insert into Evidence values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','"+DropDownList2.Text+"','N/A','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DateTime.Now.ToShortDateString() + "','" + Session["OId"].ToString() + "') ", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            cmd = new SqlCommand("Select Rank from Suspect where Name = '" + DropDownList2.Text + "' And CaseID='" + TextBox1.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            int rank = Convert.ToInt32(dr[0].ToString());
            con.Close();

            int nrank = Convert.ToInt32(TextBox4.Text);
            nrank += rank;

            cmd = new SqlCommand("Update Suspect set rank = '" + nrank + "' where Name = '" + DropDownList2.Text + "' And CaseID='" + TextBox1.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            SqlCommand cmd1 = new SqlCommand("Insert into CaseHistory values ('" + TextBox1.Text + "','New Evidence Added : "+TextBox2.Text+"','" + DateTime.Now.ToShortDateString() + "','" + Session["OId"].ToString() + "') ", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();

            Session["AddE"] = "Yes";
            Response.Redirect("AddEvid.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter "+c+"');", true);
        }
    }
}