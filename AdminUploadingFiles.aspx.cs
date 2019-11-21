using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_AdminUploadingFiles : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SDN"].ConnectionString);
    string f, ml, ty, kk, nww, st, p1, mon, fullpath;
    protected void Page_Load(object sender, EventArgs e)
    {

        autoid();
    }
    private int autoid()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select max(FileId) from tbl_FileUpload ", con);
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
        Label2.Text = ID.ToString();
        con.Close();
        return ID;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Db upload

        FileUpload1.SaveAs(Server.MapPath("~/upload/") + FileUpload1.FileName);
        f = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
        st = Path.GetFileName(FileUpload1.FileName);
        ml = Server.MapPath("~/upload/");
        nww = FileUpload1.FileName;
        ty = Path.GetExtension(FileUpload1.FileName);
        kk = ml + f + ty;

        FileInfo fz = new FileInfo(kk);
        long s1 = fz.Length;
        string fsize = s1.ToString() + "Bytes";

        string dat = DateTime.Now.ToString();
        int f1 = 0;
        FileStream fs = new FileStream(kk, FileMode.Open, FileAccess.ReadWrite);
        byte[] buffer = new byte[fs.Length];
        fs.Read(buffer, 0, (int)fs.Length);
        fs.Close();

        con.Open();
        SqlCommand cmd = new SqlCommand("insert into tbl_FileUpload (FileName,FileSize,FileType,FileData) values(@FileName,@FileSize,@FileType,@FileData)", con);
        cmd.Parameters.AddWithValue("@FileId", Label2.Text);
        cmd.Parameters.AddWithValue("@FileName", nww);

        cmd.Parameters.AddWithValue("@FileData", buffer);
        cmd.Parameters.AddWithValue("@FileType", ty);
        cmd.Parameters.AddWithValue("@Filesize", fsize);


        cmd.ExecuteNonQuery();
        con.Close();


        autoid();

        Response.Write("<script>alert(' files uploaded')</script>");
    }
}