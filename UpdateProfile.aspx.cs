using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_UpdateProfile : System.Web.UI.Page
{
    string connStr = ConfigurationManager.ConnectionStrings["SDN"].ConnectionString;

    SqlCommand com;

    string str;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            SqlConnection con = new SqlConnection(connStr);

            con.Open();

            str = "select * from tbl_Registration where  Username='" + Session["Usernames"] + "'";

            com = new SqlCommand(str, con);

            SqlDataReader reader = com.ExecuteReader();


            while (reader.Read())
            {

                TextBox1.Text = reader["FirstName"].ToString();

                TextBox2.Text = reader["LastName"].ToString();
                TextBox3.Text = reader["Username"].ToString();
                TextBox4.Text = reader["Password"].ToString();


                TextBox5.Text = reader["EMAILID"].ToString();

                TextBox6.Text = reader["MobileNumber"].ToString();
                TextBox7.Text = reader["Address"].ToString();

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(connStr);

        con.Open();

        SqlCommand cmd = new SqlCommand("update tbl_Registration Set  FirstName = @FirstName, LastName = @LastName,Username=@Username,Password=@Password, EMAILID = @EMAILID, MobileNumber = @MobileNumber,Address=@Address where  Username='" + Session["Usernames"].ToString() + "'", con);

        cmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
        cmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
        cmd.Parameters.AddWithValue("@Username", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
        cmd.Parameters.AddWithValue("@EMAILID", TextBox5.Text);
        cmd.Parameters.AddWithValue("@MobileNumber", TextBox6.Text);
        cmd.Parameters.AddWithValue("@Address", TextBox7.Text);
        cmd.ExecuteNonQuery();
        Label1.Visible = true;


        Label1.Text = "Updated Successfully";

    }

}
