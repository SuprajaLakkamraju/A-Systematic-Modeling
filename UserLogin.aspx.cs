using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string a = "Accepted";
        SqlConnection con = new SqlConnection(@"user Id=sa; password=123; Database=SystematicModeling; Data Source=USER");
        SqlCommand cmd = new SqlCommand("select * from tbl_Registration where Username=@Username and Password=@Password and _Status=@_Status", con);
        cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        cmd.Parameters.AddWithValue("@_Status", a.ToString());
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();

        if (dt.Rows.Count > 0)
        {
            Session["usernames"] = TextBox1.Text;
            Response.Redirect("USER/UserHomePage.aspx");
        }
        else
        {
            Label1.Text = "Your username and Password is incorrect";
            Label1.ForeColor = System.Drawing.Color.Red;

        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}