using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AddResult : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-DCTU9ROE;Initial Catalog=Crime;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["result"] == "Yes")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Result Added Successfully');", true);
            Session["result"] = "";
        }

        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("Select CaseId from NCase", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int row = ds.Tables[0].Rows.Count;
            for (int i = 0; i < row; i++)
            {
                DropDownList1.Items.Add(ds.Tables[0].Rows[i][0].ToString());
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text != "--Select--")
        {
            SqlCommand cmd = new SqlCommand("Select CaseName from NCase where CaseID = '" + DropDownList1.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            TextBox1.Text = dr[0].ToString();
            con.Close();

            SqlDataAdapter da = new SqlDataAdapter("Select Name from Suspect where CaseID = '" + DropDownList1.Text + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int row = ds.Tables[0].Rows.Count;
            for (int i = 0; i < row; i++)
            {
                DropDownList2.Items.Add(ds.Tables[0].Rows[i][0].ToString());
            }
        }
    }

    public string check()
    {
        if (TextBox2.Text == "")
        {
            return "Note";
        }
        if (TextBox1.Text == "")
        {
            return "Case Name";
        }
        return "OK";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string c = check();
        if (c == "OK")
        {
            SqlCommand cmd = new SqlCommand("Update NCase set Result = '" + DropDownList2.Text + "', Note = '" + TextBox2.Text + "' where CaseID = '" + DropDownList1.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Session["result"] = "Yes";
            Response.Redirect("AddResult.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Enter " + c + " ');", true);
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}