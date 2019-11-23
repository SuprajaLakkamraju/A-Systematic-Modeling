using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Attacker_AttackerAccessCS : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["SDN"].ConnectionString;
    SqlConnection con = null; string AttackVM; int ID; int AttackCount;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection(str);
        con.Open();

        loaddata();

       
    }

   

    public void loaddata()
    {
        SqlDataAdapter da = new SqlDataAdapter("select ID,Username,CloudServer,VM,Status from tbl_Request where Status='Accepted' ", con);

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
            Attack(); Add();
           
        }
    }

    public void aceeptuser()
    {
       string a = "Rejected";
        string sql = @"update tbl_Request  set  Status=@Status where ID=@ID";
         cmd = new SqlCommand(sql, con);
        //cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue("@Status", a.ToString());
        cmd.Parameters.AddWithValue("@ID", ID);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Rejected')</script>");
         
}

    private int autoid()
    {
        //con.Open();
        SqlCommand cmd = new SqlCommand("select Count(AttackCount) from tbl_Attack ", con);
        object result = cmd.ExecuteScalar();
        int ID;
        if (result.GetType() != typeof(DBNull))
        {
            ID = Convert.ToInt32(result);
        }
        else
        {

            ID = 0;

        }

        ID = ID + 1;
        Label4.Text = ID.ToString();
        //con.Close();
        return ID;
    }
    public void Attack()
    {

        
        string query = "SELECT Username,VM FROM tbl_Request where ID=@ID";
        cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@ID", ID);
        dr = cmd.ExecuteReader();
        while(dr.Read())
        {
            Label2.Text = dr["Username"].ToString();
            Label3.Text = dr["VM"].ToString();

        }

        dr.Close();
        autoid();
    }

    
    public void Add()
    {
    string query = "INSERT INTO tbl_Attack(Username,VM,AttackCount)VALUES(@Username,@VM,@AttackCount)";
       using (SqlCommand cmd = new SqlCommand(query))
            {
                cmd.Parameters.AddWithValue("@Username", Label2.Text);
                cmd.Parameters.AddWithValue("@VM", Label3.Text);
            cmd.Parameters.AddWithValue("@AttackCount", Label4.Text);
          cmd.Connection = con;
              cmd.ExecuteNonQuery();
         
        }
        
        
        //this.Attack();
    }
    protected void gvGetUsers_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        gvGetUsers.Visible = true;
        //loaddata();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        gvGetUsers.Visible = true;
       // loaddata();
    }



    protected void gvGetUsers_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
}