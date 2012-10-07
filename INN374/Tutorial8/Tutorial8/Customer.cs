using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Data;


namespace Tutorial8
{
    [DataContract]
    public class Customer
    {
        [DataMember]
        public String Name;
        [DataMember]
        public String Street;
        [DataMember]
        public Int32 Postcode;

        public Customer() { }

        public Customer(String Name, String Street, Int32 Postcode)
        {
            this.Name = Name;
            this.Street = Street;
            this.Postcode = Postcode;
        }
       
    }
}