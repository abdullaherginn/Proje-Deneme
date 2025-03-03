using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Deneme.Classes;
using System.Data.SqlClient;

namespace Deneme
{
    public partial class ApproveCar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedID = Convert.ToInt32(Request.QueryString["carid"]);
        
            SqlCommand commandApprove = new SqlCommand("update TableCar set CarConfirmation=@pcon where CarID=@pid",SqlConnectionClass.connection);

            SqlConnectionClass.Checkconnection();

            commandApprove.Parameters.AddWithValue("@pcon", true);

            commandApprove.Parameters.AddWithValue("@pid", selectedID);

            commandApprove.ExecuteNonQuery();

            Response.Redirect("AdminAddCars.aspx");

        }
    }
}