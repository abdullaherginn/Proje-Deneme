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
    public partial class Messages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("select * from TableContact ",SqlConnectionClass.connection);

            SqlConnectionClass.Checkconnection();

            SqlDataReader dr = commandList.ExecuteReader();

            DataList1.DataSource = dr;
            DataList1.DataBind();
            dr.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("MessageDelete.aspx");
        }

    }
}