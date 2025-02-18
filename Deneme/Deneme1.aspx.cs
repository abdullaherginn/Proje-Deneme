using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Deneme.Classes;

namespace Deneme
{
    public partial class Deneme1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("Select * From TableCar where CarConfirmation=pcon", SqlConnectionClass.connection);    
        }
    }
}