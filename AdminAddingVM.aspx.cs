using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;

public partial class ADMIN_AdminAddingVM : System.Web.UI.Page
{
    String str = ConfigurationManager.ConnectionStrings["SDN"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

            
    }


    protected void ddlCloudServer_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void ddlVM_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }



    protected void Button1_Click(object sender, EventArgs e)
    {

        Label1.Visible = true;

        SqlConnection sqlConn = new SqlConnection(str);
       


        string sql = @"INSERT INTO tbl_VirtualMachine  
                             (CloudServer,VM,Storage,OS,Switch)  
                              VALUES  
                             (@CloudServer,@VM,@Storage,@OS,@Switch)";

        SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);

        sqlCmd.Parameters.AddWithValue("@CloudServer", ddlCloudServer.Text);
        sqlCmd.Parameters.AddWithValue("@VM", ddlVM.Text);
        sqlCmd.Parameters.AddWithValue("@Storage", TextBox1.Text);
       
        sqlCmd.Parameters.AddWithValue("@OS", TextBox2.Text);
        sqlCmd.Parameters.AddWithValue("@Switch", TextBox3.Text);
        
        sqlConn.Open();
        sqlCmd.CommandType = CommandType.Text;
        sqlCmd.ExecuteNonQuery();
        Label1.Visible = true;


        Label1.Text = "VM Data Inserted";
    }

}
   
