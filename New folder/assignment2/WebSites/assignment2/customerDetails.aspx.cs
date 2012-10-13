using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using au.edu.qut.fastapps04;
using System.Data;

public partial class customerDetails : System.Web.UI.Page
{
    sqlServerWebService service = new sqlServerWebService();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /*
    protected void next3_Click(object sender, EventArgs e)
    {
        Customer customerDetails = new Customer();
        customerDetails.Name = name.Text;
        customerDetails.Sex = sex.SelectedValue;
        customerDetails.DOB = DateTime.Today;
        customerDetails.Address = address.Text;
        customerDetails.Payment = paymentChoice.SelectedValue;

        customerDetails.Name = "Vincent Lin";
        customerDetails.Sex = "Male";
        customerDetails.DOB = DateTime.Today;
        customerDetails.Address = "231 ASDASD Rd";
        customerDetails.Payment = "Amercian Express";
        string result = service.InsertCustomerDetails(customerDetails);
        LabelMessage.Text = result;
        //Response.Redirect("Success.aspx");
    }*/
    protected void next_Click(object sender, EventArgs e)
    {
        Customer customerDetails = new Customer();
        customerDetails.Name = name.Text;
        customerDetails.Sex = sex.SelectedValue;
        customerDetails.DOB = DateTime.;
        customerDetails.Address = address.Text;
        customerDetails.Email = eAddress.Text;
        customerDetails.Payment = paymentChoice.SelectedValue;
        service.InsertCustomerDetails(customerDetails);
        //Response.Redirect("phonePlan.aspx");
    }
    protected void search_Click(object sender, EventArgs e)
    {
        String Message = "";
        String Name = name.Text;
        DataSet dt = new DataSet();
        DataRow dr;
        dt = service.ocGetCustomer(Name); 
        if (dt.Tables.Count != 0)
        {
            
            if (dt.Tables["ocGetCustomer"].Rows.Count > 0)
            {
                dr = dt.Tables["ocGetCustomer"].Rows[0];
                currentplan.Text = dr.ItemArray.GetValue(0).ToString();
                payout.Text = dr.ItemArray.GetValue(1).ToString();
                serviceprovider.Text = dr.ItemArray.GetValue(2).ToString();
            }
            else
            {

                Message = name.Text + " has no records with other companies";
                LabelMessage.Text = Message;
            }
        }
        else
        {
             Message = name.Text + " has no records with other companies";
             LabelMessage.Text = Message;
        }

    }
}