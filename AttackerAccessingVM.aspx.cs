using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Attacker_AttackerAccessingVM : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["SDN"].ConnectionString;
    SqlConnection con = null; string AttackVM; int ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(str);
        con.Open();
        if (!IsPostBack)
        {
            SqlCommand com = new SqlCommand("SELECT ID, Username, CloudServer, VM, Date, Status FROM tbl_Request WHERE Status = 'Accepted'", con); // table name 
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds); 
            DropDownList1.DataTextField = ds.Tables[0].Columns["CloudServer"].ToString(); 
            DropDownList1.DataValueField = ds.Tables[0].Columns["CloudServer"].ToString();        
            DropDownList1.DataSource = ds.Tables[0];     
            DropDownList1.DataBind();
        }
    }


    public void attack()
    {
        string str = "select VM from tbl_Request where  VM='" + DropDownList1.Text + "'  and CloudServer='" + DropDownList1.SelectedItem.Text + "'";

        SqlCommand com = new SqlCommand(str, con);

        SqlDataReader reader = com.ExecuteReader();


        while (reader.Read())
        {
            Label2.Text = reader["Username"].ToString();

            Label3.Text = reader["VM"].ToString();
            Label4.Text = reader["Status"].ToString();



        }
        con.Close();
        if (AttackVM == DropDownList1.Text)
        {
            Label1.Text = "You Are Trying To Attack VitualMachines";
            Label1.ForeColor = System.Drawing.Color.Red;

        }
    }

  
         public void loaddata()
    {
        SqlDataAdapter da = new SqlDataAdapter("select ID,Username,CloudServer,VM,Status from tbl_Request where CloudServer='"+DropDownList1.SelectedItem.Text+"' ", con);

        DataSet ds = new DataSet();
        da.Fill(ds);
        gvGetUsers.DataSource = ds;
        gvGetUsers.DataBind();

    }




    protected void gvGetUsers_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string Status = string.Empty;
        ID = Convert.ToInt32(e.CommandArgument.ToString());
        if (e.CommandName == "Attack")
        {
            aceeptuser(); loaddata();
        }
    }
        public void aceeptuser()
    {
        SqlConnection sqlConn = new SqlConnection(str);
        string a = "Rejected";
        string sql = @"update tbl_Request  set  Status=@Status where ID=@ID";

        SqlCommand sqlCmd = new SqlCommand(sql, sqlConn);

        sqlCmd.Parameters.AddWithValue("@Status", a.ToString());


        sqlCmd.Parameters.AddWithValue("@ID", ID);
        sqlConn.Open();
        sqlCmd.CommandType = CommandType.Text;
        sqlCmd.ExecuteNonQuery();

        Response.Write("<script>alert('Rejected')</script>");


    }

    protected void gvGetUsers_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        gvGetUsers.Visible = true;
        loaddata();
    }
}
