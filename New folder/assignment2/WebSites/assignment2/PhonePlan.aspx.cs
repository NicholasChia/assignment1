using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using au.edu.qut.fastapps04;

public partial class _Default : System.Web.UI.Page
{
    sqlServerWebService service = new sqlServerWebService();

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void next1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("phoneDisplay.aspx");
    }

    protected void PhonePlanGrid_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Get the currently selected row using the SelectedRow property
        GridViewRow row = PhonePlanGrid.SelectedRow;
        Int32 PlanID;
        //
        PlanID = Convert.ToInt32(row.Cells[0].Text);
        String Message = service.CheckPlan(PlanID, true);
        LabelMessage.Text = Message;
    }
    protected void back1_Click(object sender, EventArgs e)
    {
        Response.Redirect("customerDetails.aspx");
    }
}
