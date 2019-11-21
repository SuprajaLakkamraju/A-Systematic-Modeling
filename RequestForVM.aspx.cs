using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_RequestForVM : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["SDN"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        Label2.Text = Session["usernames"].ToString();
        Label3.Visible = false;
        SqlConnection sqlConn = new SqlConnection(str);
        string r = "Reject";

        string sql = @"INSERT INTO tbl_Request  
                             (Username,CloudServer,VM,Date,Status)  
                              VALUES  
                             (@Username,@CloudServer,@VM,@Date,@Status)";

        SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);

        sqlCmd.Parameters.AddWithValue("@Username", Label2.Text);
        sqlCmd.Parameters.AddWithValue("@CloudServer", ddlCloudServer.Text);
        sqlCmd.Parameters.AddWithValue("@VM", ddlVM.Text);
        sqlCmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString());

        sqlCmd.Parameters.AddWithValue("@Status", r.ToString());

        sqlConn.Open();
        sqlCmd.CommandType = CommandType.Text;
        sqlCmd.ExecuteNonQuery();
        Label1.Visible = true;
        Label1.Text = "Request Sent";
        
    }
}