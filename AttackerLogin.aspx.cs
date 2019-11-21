using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AttackerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "Attacker" && TextBox2.Text == "Attacker")
        {
            Response.Redirect("ATTACKER/AttackerHomePage.aspx");
        }
        else
        {
            Response.Redirect("AttackerLogin.aspx");
        }
    }
}