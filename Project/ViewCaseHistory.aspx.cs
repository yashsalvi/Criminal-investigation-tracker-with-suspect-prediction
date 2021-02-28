using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ViewCaseHistory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-DCTU9ROE;Initial Catalog=Crime;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] == "Off")
        {
            Label10.Visible = false;
            DropDownList1.Visible = false;

            SqlDataAdapter da = new SqlDataAdapter("Select * from CaseHistory where CaseID = '"+Session["CId"].ToString()+"'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
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
        SqlDataAdapter da = new SqlDataAdapter("Select * from CaseHistory where CaseID = '" + DropDownList1.Text + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}