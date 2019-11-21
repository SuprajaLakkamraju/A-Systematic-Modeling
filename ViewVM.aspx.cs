using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_ViewVM : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SDN"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Label2.Text = Session["usernames"].ToString();
        GridView1.Visible = true;
        con.Open();
        SqlCommand sda = new SqlCommand("select FileID,Filename,Filetype,Filesize from tbl_FileUpload ", con);
        SqlDataReader dr = sda.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        Label2.Text = Session["usernames"].ToString();
        string a = "Accepted";
        //SqlConnection con = new SqlConnection(@"user Id=sa; password=123; Database=SystematicModeling; Data Source=USER");
        SqlCommand cmd = new SqlCommand("select * from tbl_Request where Username=@Username and VM=@VM and Status=@Status", con);

        cmd.Parameters.AddWithValue("@Username", Label2.Text);
        cmd.Parameters.AddWithValue("@VM", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Status", a.ToString());
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();

        if (dt.Rows.Count > 0)
        {
            
            Panel1.Visible = true;
            
        }
        else
        {
            Label1.Text = "VM is incorrect";
            Label1.ForeColor = System.Drawing.Color.Red;

        }
    }

    
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        GridViewRow row = e.Row;
        List<TableCell> cells = new List<TableCell>();
        foreach (DataControlField column in GridView1.Columns)
        {
            // Retrieve first cell
            TableCell cell = row.Cells[0];
            // Remove cell
            row.Cells.Remove(cell);
            // Add cell to list
            cells.Add(cell);
        }
        // Add cells
        row.Cells.AddRange(cells.ToArray());
    }

   

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        
            Response.Clear();
            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("Content-Disposition", "filename=" + e.CommandArgument);
            Response.TransmitFile(Server.MapPath("~/upload/") + e.CommandArgument);
            Response.End();
        

    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    
}