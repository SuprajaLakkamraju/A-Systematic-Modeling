using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_AcceptingUserRequest : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["SDN"].ConnectionString;
    SqlConnection con; int ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        if (!IsPostBack)
        {
            loaddata();
        }
    }

    protected void gvGetUsers_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string Status = string.Empty;
        ID = Convert.ToInt32(e.CommandArgument.ToString());
        if (e.CommandName == "Accept")
        {
            aceeptuser(); loaddata();
        }
        else
        {
            rejectuser(); loaddata();
        }

    }
    public void loaddata()
    {
        SqlDataAdapter da = new SqlDataAdapter("select ID,Username,CloudServer,VM,Date,Status from tbl_Request where Status='Reject'", con);

        DataSet ds = new DataSet();
        da.Fill(ds);
        gvGetUsers.DataSource = ds;
        gvGetUsers.DataBind();

    }

    public void aceeptuser()
    {
        SqlConnection sqlConn = new SqlConnection(str);
        string a = "Accepted";
        string sql = @"update tbl_Request  set  Status=@Status where ID=@ID";

        SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);

        sqlCmd.Parameters.AddWithValue("@Status", a.ToString());


        sqlCmd.Parameters.AddWithValue("@ID", ID);
        sqlConn.Open();
        sqlCmd.CommandType = CommandType.Text;
        sqlCmd.ExecuteNonQuery();

        Response.Write("<script>alert('REQUEST ACCEPTED')</script>");


    }

    public void rejectuser()
    {
        SqlConnection sqlConn = new SqlConnection(str);
        string r = "Rejected";
        string sql = @"update tbl_Request  set  Status=@Status where ID=@ID";

        SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);

        sqlCmd.Parameters.AddWithValue("@Status", r.ToString());


        sqlCmd.Parameters.AddWithValue("@ID", ID);
        sqlConn.Open();
        sqlCmd.CommandType = CommandType.Text;
        sqlCmd.ExecuteNonQuery();
        loaddata();

        Response.Write("<script>alert('REQUEST REJECTED')</script>");
    }


    protected void gvGetUsers_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    
}