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
    public partial class İletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsend_Click(object sender, EventArgs e)
        {
            SqlCommand commandAdd = new SqlCommand("insert into TableContact (ContactMessage, ContactMail, ContactName) values (@pmsg, @pmail, @pname)", SqlConnectionClass.connection);

            SqlConnectionClass.Checkconnection();

            commandAdd.Parameters.AddWithValue("@pmsg", tboxDesc.Text);
            commandAdd.Parameters.AddWithValue("@pmail", tboxMail.Text);
            commandAdd.Parameters.AddWithValue("@pname", tboxName.Text);
            commandAdd.ExecuteNonQuery();
        }
    }
}