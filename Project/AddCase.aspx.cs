using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class AddCase : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-DCTU9ROE;Initial Catalog=Crime;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["addcase"] == "Yes")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('New Case Added Successfully');", true);
            Session["addcase"] = "";
        }

        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("Select Id from officer",con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int row = ds.Tables[0].Rows.Count;
            for (int i = 0; i < row; i++)
            {
                DropDownList1.Items.Add(ds.Tables[0].Rows[i][0].ToString());
            }
        }
        string com = "select top 1 CaseID From NCase ORDER BY CaseID Desc;";
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
            TextBox1.Text = "10001";
        }
        con.Close();
    }

    public string check()
    {
        if (TextBox2.Text == "")
        {
            return "Please Enter Case Name";
        }
        if (TextBox3.Text == "")
        {
            return "Please Assign Officer to this Case";
        }
        if (TextBox4.Text == "")
        {
            return "Please Enter Case Note";
        }
        return "OK";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string c = check();

        if (c == "OK")
        {
            SqlCommand cmd = new SqlCommand("Insert into NCase values ('" + TextBox1.Text + "','" + DropDownList1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "','Case Opened')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Random r = new Random();
            int a = r.Next(1000, 9999);

            cmd = new SqlCommand("Insert into Login values ('" + TextBox1.Text + "','" + DropDownList1.Text + "','" + a + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress("voramish7018@gmail.com");
            mail.To.Add(Label7.Text);
            mail.Subject = "New Case Added to your Profile";
            mail.Body = "You Have been added to new Case : '" + TextBox2.Text + "' Case ID : '" + TextBox1.Text + "' and Your Password is : '" + a + "' ";
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("voramish7018@gmail.com", "allbesst");
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);

            Session["addcase"] = "Yes";
            Response.Redirect("AddCase.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('" + c + "');", true);
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text != "--Select--")
        {
            SqlCommand cmd = new SqlCommand("Select Name,Mail from Officer where ID = '"+DropDownList1.Text+"'",con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            TextBox3.Text = dr[0].ToString();
            Label7.Text = dr[1].ToString();
            con.Close();
        }
        else
        {
            Label7.Text = "";
            TextBox3.Text = "";
        }
    }
}