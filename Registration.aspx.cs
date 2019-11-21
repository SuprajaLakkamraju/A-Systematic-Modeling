using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["SDN"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;

        SqlConnection sqlConn = new SqlConnection(str);
        string r = "Reject";


        string sql = @"INSERT INTO tbl_Registration  
                             (FirstName,LastName,Username,Password,MobileNumber,Address,_Status,EMAILID)  
                              VALUES  
                             (@FirstName,@LastName,@Username,@Password,@MobileNumber,@Address,@_Status,@EMAILID)";

        SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);

        sqlCmd.Parameters.AddWithValue("@FirstName", TextBox1.Text);
        sqlCmd.Parameters.AddWithValue("@LastName", TextBox2.Text);
        sqlCmd.Parameters.AddWithValue("@Username", TextBox3.Text);
        sqlCmd.Parameters.AddWithValue("@Password", TextBox4.Text);

        sqlCmd.Parameters.AddWithValue("@EMAILID", TextBox5.Text);
        sqlCmd.Parameters.AddWithValue("@MobileNumber", TextBox6.Text);
        sqlCmd.Parameters.AddWithValue("@Address", TextBox7.Text);
        sqlCmd.Parameters.AddWithValue("@_Status", r.ToString());
        sqlConn.Open();
        sqlCmd.CommandType = CommandType.Text;
        sqlCmd.ExecuteNonQuery();
        Label1.Visible = true;


        Label1.Text = "Registration Completed";
    }
}
