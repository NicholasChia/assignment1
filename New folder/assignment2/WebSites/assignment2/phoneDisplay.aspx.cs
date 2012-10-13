using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class phoneDisplay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void back1_Click(object sender, EventArgs e)
    {
        Response.Redirect("PhonePlan.aspx");
    }
    protected void next2_Click(object sender, EventArgs e)
    {
        Response.Redirect("SubmitSuccess.aspx");
    }
}