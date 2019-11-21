using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_AdminHomePage : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["SDN"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;

        SqlConnection sqlConn = new SqlConnection(str);
        
        string sql = @"INSERT INTO tbl_Cloud  
                             (CloudServer)  
                              VALUES  
                             (@CloudServer)";

        SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);

        sqlCmd.Parameters.AddWithValue("@CloudServer", TextBox1.Text);
        sqlConn.Open();
        sqlCmd.CommandType = CommandType.Text;
        sqlCmd.ExecuteNonQuery();
        Label1.Visible = true;
        Label1.Text = "Successfully Inserted Data";
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Label2.Visible = true;

        SqlConnection sqlConn = new SqlConnection(str);

        string sql = @"INSERT INTO tbl_VM  
                             (VM)  
                              VALUES  
                             (@VM)";

        SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);

        sqlCmd.Parameters.AddWithValue("@VM", TextBox2.Text);
        sqlConn.Open();
        sqlCmd.CommandType = CommandType.Text;
        sqlCmd.ExecuteNonQuery();
        Label2.Visible = true;
        Label2.Text = "Successfully Inserted Data";
    }
}
