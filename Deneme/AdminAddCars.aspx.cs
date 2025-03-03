using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Deneme.Classes;

namespace Deneme
{
    public partial class AdminAddCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("select * from TableCar where CarConfirmation=@pcon",SqlConnectionClass.connection);

            SqlConnectionClass.Checkconnection();

            commandList.Parameters.AddWithValue("@pcon",false);

            SqlDataReader dr = commandList.ExecuteReader();

            DataList1.DataSource = dr;

            DataList1.DataBind();

            dr.Close();
        }
    }
}