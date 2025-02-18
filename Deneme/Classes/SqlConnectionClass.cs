using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Deneme.Classes
{
    public class SqlConnectionClass
    {
        public static SqlConnection connection = new SqlConnection("Data Source=ABDULLAH;Initial Catalog=Deneme;Integrated Security=True;Trust Server Certificate=True");
        public static void Checkconnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            else { }

        }
    }
}