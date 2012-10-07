using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data.SqlClient;

namespace Tutorial8
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "CustomerService" in code, svc and config file together.
    public class CustomerService : ICustomerService
    {
        public Customer[] GetCustomers()
        {
            SqlConnection connection = new SqlConnection("Data Source=fastapps04.qut.edu.au;Initial Catalog=n7307853;User ID=n7307853;Password=foobar");

            connection.Open();

            SqlCommand command = new SqlCommand("SELECT * FROM Tutorial", connection);

            SqlDataReader reader = command.ExecuteReader();

            List<Customer> customers = new List<Customer>();

            
            Customer[] customer = null;
            while (reader.Read())
            {
                Customer p = new Customer();
                System.Console.WriteLine(reader.GetString(0));
                System.Console.WriteLine(reader.GetString(1));
                System.Console.WriteLine(reader.GetInt32(2));
                p.Name = reader.GetString(0);
                p.Street = reader.GetString(1);
                p.Postcode = reader.GetInt32(2);
                customers.Add(p);
            }
                customer = customers.ToArray();
            
            connection.Close();

            return customer;
        }
    }
}
