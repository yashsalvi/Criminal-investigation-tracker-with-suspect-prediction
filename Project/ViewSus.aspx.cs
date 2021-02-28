using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ViewSus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-DCTU9ROE;Initial Catalog=Crime;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] == "Off")
        {
            CaseID.Visible = false;
            DropDownList1.Visible = false;

            SqlDataAdapter da = new SqlDataAdapter("Select * from Suspect where CaseID = '" + Session["CId"].ToString() + "'", con);
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

    public void one(bool a)
    {
        Image1.Visible = a;
        Label1.Visible = a;
        Label2.Visible = a;
        Label3.Visible = a;
        Label4.Visible = a;
        Label5.Visible = a;
        Label6.Visible = a;
        Label7.Visible = a;
        Label8.Visible = a;
        Label9.Visible = a;
        Label10.Visible = a;
    }

    public void two(bool a)
    {
        Image2.Visible = a;
        Label11.Visible = a;
        Label12.Visible = a;
        Label13.Visible = a;
        Label14.Visible = a;
        Label15.Visible = a;
        Label16.Visible = a;
        Label17.Visible = a;
        Label18.Visible = a;
        Label19.Visible = a;
        Label20.Visible = a;
    }

    public void three(bool a)
    {
        Image3.Visible = a;
        Label21.Visible = a;
        Label22.Visible = a;
        Label23.Visible = a;
        Label24.Visible = a;
        Label25.Visible = a;
        Label26.Visible = a;
        Label27.Visible = a;
        Label28.Visible = a;
        Label29.Visible = a;
        Label30.Visible = a;
    }

    public void four(bool a)
    {
        Image4.Visible = a;
        Label31.Visible = a;
        Label32.Visible = a;
        Label33.Visible = a;
        Label34.Visible = a;
        Label35.Visible = a;
        Label36.Visible = a;
        Label37.Visible = a;
        Label38.Visible = a;
        Label39.Visible = a;
        Label40.Visible = a;
    }

    public void five(bool a)
    {
        Image5.Visible = a;
        Label41.Visible = a;
        Label42.Visible = a;
        Label43.Visible = a;
        Label44.Visible = a;
        Label45.Visible = a;
        Label46.Visible = a;
        Label47.Visible = a;
        Label48.Visible = a;
        Label49.Visible = a;
        Label50.Visible = a;
    }

    public void six(bool a)
    {
        Image6.Visible = a;
        Label51.Visible = a;
        Label52.Visible = a;
        Label53.Visible = a;
        Label54.Visible = a;
        Label55.Visible = a;
        Label56.Visible = a;
        Label57.Visible = a;
        Label58.Visible = a;
        Label59.Visible = a;
        Label60.Visible = a;
    }

    public void seven(bool a)
    {
        Image7.Visible = a;
        Label61.Visible = a;
        Label62.Visible = a;
        Label63.Visible = a;
        Label64.Visible = a;
        Label65.Visible = a;
        Label66.Visible = a;
        Label67.Visible = a;
        Label68.Visible = a;
        Label69.Visible = a;
        Label70.Visible = a;
    }

    public void eight(bool a)
    {
        Image8.Visible = a;
        Label71.Visible = a;
        Label72.Visible = a;
        Label73.Visible = a;
        Label74.Visible = a;
        Label75.Visible = a;
        Label76.Visible = a;
        Label77.Visible = a;
        Label78.Visible = a;
        Label79.Visible = a;
        Label80.Visible = a;
    }

    public void nine(bool a)
    {
        Image9.Visible = a;
        Label81.Visible = a;
        Label82.Visible = a;
        Label83.Visible = a;
        Label84.Visible = a;
        Label85.Visible = a;
        Label86.Visible = a;
        Label87.Visible = a;
        Label88.Visible = a;
        Label89.Visible = a;
        Label90.Visible = a;
    }

    public void ten(bool a)
    {
        Image10.Visible = a;
        Label91.Visible = a;
        Label92.Visible = a;
        Label93.Visible = a;
        Label94.Visible = a;
        Label95.Visible = a;
        Label96.Visible = a;
        Label97.Visible = a;
        Label98.Visible = a;
        Label99.Visible = a;
        Label100.Visible = a;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("Select * from Suspect where CaseID = '" + DropDownList1.Text + "' Order by Rank Desc", con);
        DataSet ds1 = new DataSet();
        DataSet ds = new DataSet();
        da.Fill(ds1);
        GridView1.DataSource = ds1;
        GridView1.DataBind();

        Panel4.Visible = true;
        one(false);
        two(false);
        three(false);
        four(false);
        five(false);
        six(false);
        seven(false);
        eight(false);
        nine(false);
        ten(false);

        int row = ds1.Tables[0].Rows.Count;
        if (row >= 1)
        {
            one(true);
            
            Label2.Text = ds1.Tables[0].Rows[0][1].ToString();
            Label4.Text = ds1.Tables[0].Rows[0][2].ToString();
            Image1.ImageUrl = ds1.Tables[0].Rows[0][5].ToString();

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label2.Text + "' AND Type = 'Physical'", con);
            ds = new DataSet();
            da.Fill(ds);
            int count = ds.Tables[0].Rows.Count;
            int phy = 0;
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
            Label6.Text = phy+"/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label2.Text + "' AND Type = 'Logical'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int log = 0;
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
            Label8.Text = log + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label2.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int final = 0;
            for (int j = 0; j < count; j++)
            {
                final += Convert.ToInt32(ds.Tables[0].Rows[j][0].ToString());
            }
            try
            {
                count = count * 10;
                final = final * 100;
                final = final / count;
            }
            catch (Exception ep)
            { }
            Label10.Text = final + "%";
        }
        if (row >= 2)
        {
            two(true);

            Label12.Text = ds1.Tables[0].Rows[1][1].ToString();
            Label14.Text = ds1.Tables[0].Rows[1][2].ToString();
            Image2.ImageUrl = ds1.Tables[0].Rows[1][5].ToString();

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label12.Text + "' AND Type = 'Physical'", con);
            ds = new DataSet();
            da.Fill(ds);
            int count = ds.Tables[0].Rows.Count;
            int phy = 0;
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
            Label16.Text = phy+"/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label12.Text + "' AND Type = 'Logical'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int log = 0;
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
            Label18.Text = log+"/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label12.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int final = 0;
            for (int j = 0; j < count; j++)
            {
                final += Convert.ToInt32(ds.Tables[0].Rows[j][0].ToString());
            }
            try
            {
                count = count * 10;
                final = final * 100;
                final = final / count;
            }
            catch (Exception ep)
            { }
            Label20.Text = final + "%";
        }
        if (row >= 3)
        {
            three(true);

            Label22.Text = ds1.Tables[0].Rows[2][1].ToString();
            Label24.Text = ds1.Tables[0].Rows[2][2].ToString();
            Image3.ImageUrl = ds1.Tables[0].Rows[2][5].ToString();

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label22.Text + "' AND Type = 'Physical'", con);
            ds = new DataSet();
            da.Fill(ds);
            int count = ds.Tables[0].Rows.Count;
            int phy = 0;
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
            Label26.Text = phy + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label22.Text + "' AND Type = 'Logical'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int log = 0;
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
            Label28.Text = log + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label22.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int final = 0;
            for (int j = 0; j < count; j++)
            {
                final += Convert.ToInt32(ds.Tables[0].Rows[j][0].ToString());
            }
            try
            {
                count = count * 10;
                final = final * 100;
                final = final / count;
            }
            catch (Exception ep)
            { }
            Label30.Text = final + "%";
        }
        if (row >= 4)
        {
            four(true);
            Label32.Text = ds1.Tables[0].Rows[3][1].ToString();
            Label34.Text = ds1.Tables[0].Rows[3][2].ToString();
            Image4.ImageUrl = ds1.Tables[0].Rows[3][5].ToString();

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label32.Text + "' AND Type = 'Physical'", con);
            ds = new DataSet();
            da.Fill(ds);
            int count = ds.Tables[0].Rows.Count;
            int phy = 0;
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
            Label36.Text = phy + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label32.Text + "' AND Type = 'Logical'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int log = 0;
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
            Label38.Text = log + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label32.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int final = 0;
            for (int j = 0; j < count; j++)
            {
                final += Convert.ToInt32(ds.Tables[0].Rows[j][0].ToString());
            }
            try
            {
                count = count * 10;
                final = final * 100;
                final = final / count;
            }
            catch (Exception ep)
            { }
            Label40.Text = final + "%";
        }
        if (row >= 5)
        {
            five(true);

            Label42.Text = ds1.Tables[0].Rows[4][1].ToString();
            Label44.Text = ds1.Tables[0].Rows[4][2].ToString();
            Image5.ImageUrl = ds1.Tables[0].Rows[4][5].ToString();

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label42.Text + "' AND Type = 'Physical'", con);
            ds = new DataSet();
            da.Fill(ds);
            int count = ds.Tables[0].Rows.Count;
            int phy = 0;
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
            Label46.Text = phy + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label42.Text + "' AND Type = 'Logical'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int log = 0;
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
            Label48.Text = log + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label42.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int final = 0;
            for (int j = 0; j < count; j++)
            {
                final += Convert.ToInt32(ds.Tables[0].Rows[j][0].ToString());
            }
            try
            {
                count = count * 10;
                final = final * 100;
                final = final / count;
            }
            catch (Exception ep)
            { }
            Label50.Text = final + "%";
        }
        if (row >= 6)
        {
            six(true);

            Label52.Text = ds1.Tables[0].Rows[5][1].ToString();
            Label54.Text = ds1.Tables[0].Rows[5][2].ToString();
            Image6.ImageUrl = ds1.Tables[0].Rows[5][5].ToString();

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label52.Text + "' AND Type = 'Physical'", con);
            ds = new DataSet();
            da.Fill(ds);
            int count = ds.Tables[0].Rows.Count;
            int phy = 0;
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
            Label56.Text = phy + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label52.Text + "' AND Type = 'Logical'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int log = 0;
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
            Label58.Text = log + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label52.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int final = 0;
            for (int j = 0; j < count; j++)
            {
                final += Convert.ToInt32(ds.Tables[0].Rows[j][0].ToString());
            }
            try
            {
                count = count * 10;
                final = final * 100;
                final = final / count;
            }
            catch (Exception ep)
            { }
            Label60.Text = final + "%";
        }
        if (row >= 7)
        {
            seven(true);

            Label62.Text = ds1.Tables[0].Rows[6][1].ToString();
            Label64.Text = ds1.Tables[0].Rows[6][2].ToString();
            Image7.ImageUrl = ds1.Tables[0].Rows[6][5].ToString();

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label62.Text + "' AND Type = 'Physical'", con);
            ds = new DataSet();
            da.Fill(ds);
            int count = ds.Tables[0].Rows.Count;
            int phy = 0;
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
            Label66.Text = phy + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label62.Text + "' AND Type = 'Logical'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int log = 0;
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
            Label68.Text = log + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label62.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int final = 0;
            for (int j = 0; j < count; j++)
            {
                final += Convert.ToInt32(ds.Tables[0].Rows[j][0].ToString());
            }
            try
            {
                count = count * 10;
                final = final * 100;
                final = final / count;
            }
            catch (Exception ep)
            { }
            Label70.Text = final + "%";
        }
        if (row >= 8)
        {
            eight(true);

            Label72.Text = ds1.Tables[0].Rows[7][1].ToString();
            Label74.Text = ds1.Tables[0].Rows[7][2].ToString();
            Image8.ImageUrl = ds1.Tables[0].Rows[7][5].ToString();

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label72.Text + "' AND Type = 'Physical'", con);
            ds = new DataSet();
            da.Fill(ds);
            int count = ds.Tables[0].Rows.Count;
            int phy = 0;
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
            Label76.Text = phy + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label72.Text + "' AND Type = 'Logical'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int log = 0;
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
            Label78.Text = log + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label72.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int final = 0;
            for (int j = 0; j < count; j++)
            {
                final += Convert.ToInt32(ds.Tables[0].Rows[j][0].ToString());
            }
            try
            {
                count = count * 10;
                final = final * 100;
                final = final / count;
            }
            catch (Exception ep)
            { }
            Label80.Text = final + "%";
        }
        if (row >= 9)
        {
            nine(true);

            Label82.Text = ds1.Tables[0].Rows[8][1].ToString();
            Label84.Text = ds1.Tables[0].Rows[8][2].ToString();
            Image9.ImageUrl = ds1.Tables[0].Rows[8][5].ToString();

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label82.Text + "' AND Type = 'Physical'", con);
            ds = new DataSet();
            da.Fill(ds);
            int count = ds.Tables[0].Rows.Count;
            int phy = 0;
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
            Label86.Text = phy + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label82.Text + "' AND Type = 'Logical'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int log = 0;
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
            Label88.Text = log + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label82.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int final = 0;
            for (int j = 0; j < count; j++)
            {
                final += Convert.ToInt32(ds.Tables[0].Rows[j][0].ToString());
            }
            try
            {
                count = count * 10;
                final = final * 100;
                final = final / count;
            }
            catch (Exception ep)
            { }
            Label90.Text = final + "%";
        }
        if (row >= 10)
        {
            ten(true);

            Label92.Text = ds1.Tables[0].Rows[9][1].ToString();
            Label94.Text = ds1.Tables[0].Rows[9][2].ToString();
            Image10.ImageUrl = ds1.Tables[0].Rows[9][5].ToString();

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label92.Text + "' AND Type = 'Physical'", con);
            ds = new DataSet();
            da.Fill(ds);
            int count = ds.Tables[0].Rows.Count;
            int phy = 0;
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
            Label96.Text = phy + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label92.Text + "' AND Type = 'Logical'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int log = 0;
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
            Label98.Text = log + "/10";

            da = new SqlDataAdapter("Select Rank from Evidence where CaseID = '" + DropDownList1.Text + "' AND Suspect = '" + Label92.Text + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            int final = 0;
            for (int j = 0; j < count; j++)
            {
                final += Convert.ToInt32(ds.Tables[0].Rows[j][0].ToString());
            }
            try
            {
                count = count * 10;
                final = final * 100;
                final = final / count;
            }
            catch (Exception ep)
            { }
            Label100.Text = final + "%";
        }
    }
}