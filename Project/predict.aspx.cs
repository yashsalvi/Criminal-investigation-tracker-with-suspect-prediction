using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class predict : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-DCTU9ROE;Initial Catalog=Crime;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("Select CaseId from NCase where Result = 'Case Opened' ", con);
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
        SqlCommand cmd = new SqlCommand("Select CaseName from NCase where CaseID = '"+DropDownList1.Text+"'",con);
        con.Open();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        dr.Read();
        TextBox1.Text = dr[0].ToString();
        con.Close();


        SqlDataAdapter da = new SqlDataAdapter("Select Name from Suspect where CaseID = '"+DropDownList1.Text+"'",con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int row = ds.Tables[0].Rows.Count;

        string[] name = new string[row];
        
        double[] sum = new double[row];
        int phy = 0;
        int log = 0;
        for (int i = 0; i < row; i++)
        { 
            name[i] = ds.Tables[0].Rows[i][0].ToString();
        }


        int count = 0;
        for (int i = 0; i < row; i++)
        {
            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + name[i] + "' AND Type = 'Physical'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            phy = 0;
            for (int j = 0; j < count; j++)
            {
                phy += Convert.ToInt32(ds.Tables[0].Rows[j][0].ToString());
            }
            try
            {
                phy = phy / count;
            }
            catch (Exception ep)
            { } 

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + name[i] + "' AND Type = 'Logical'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            log = 0;
            for (int j = 0; j < count; j++)
            {
                log += Convert.ToInt32(ds.Tables[0].Rows[j][0].ToString());
            }
            try
            {
                log = log / count;
            }
            catch (Exception ep)
            { }
            sum[i] = ((phy+log)/2);
        }
        
        double maxValue = sum.Max();
        int maxIndex = sum.ToList().IndexOf(maxValue);

        string sname = name[maxIndex];
        cmd = new SqlCommand("Select Image from Suspect where Name = '"+sname+"'",con);
        con.Open();
        dr = cmd.ExecuteReader();
        dr.Read();
        string img = dr[0].ToString();
        con.Close();
        TextBox3.Text = ""+maxValue;
        TextBox2.Text = sname;
        Image1.ImageUrl = img;
    }
}