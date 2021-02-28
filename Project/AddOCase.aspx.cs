using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class AddOCase : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-DCTU9ROE;Initial Catalog=Crime;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["addOfficer"] == "Yes")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('New Officer Added Successfully');", true);
            Session["addOfficer"] = "";
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

            da = new SqlDataAdapter("Select Id from Officer ", con);
            ds = new DataSet();
            da.Fill(ds);
            row = ds.Tables[0].Rows.Count;
            for (int i = 0; i < row; i++)
            {
                DropDownList2.Items.Add(ds.Tables[0].Rows[i][0].ToString());
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text != "--Select--")
        {
            SqlCommand cmd = new SqlCommand("Select CaseName from NCase where CaseID = '"+DropDownList1.Text+"'",con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            TextBox1.Text = dr[0].ToString();
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text != "")
        {
            Random r = new Random();
            int a = r.Next(1000, 9999);

            SqlCommand cmd = new SqlCommand("Insert into Login values ('" + TextBox1.Text + "','" + DropDownList1.Text + "','" + a + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress("voramish7018@gmail.com");
            mail.To.Add(Label6.Text);
            mail.Subject = "New Case Added to your Profile";
            mail.Body = "You Have been added to new Case : '" + TextBox2.Text + "' Case ID : '" + TextBox1.Text + "' and Your Password is : '" + a + "' ";
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("voramish7018@gmail.com", "allbesst");
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);

            Session["addOfficer"] = "Yes";
            Response.Redirect("AddOCase.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Select an Officer');", true);
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text != "--Select--")
        {
            SqlCommand cmd = new SqlCommand("Select Name,Mail from Officer where ID = '" + DropDownList2.Text + "'", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            TextBox2.Text = dr[0].ToString();
            Label6.Text = dr[1].ToString();
            con.Close();
        }
        else
        {
            Label6.Text = "";
            TextBox2.Text = "";
        }
    }
}