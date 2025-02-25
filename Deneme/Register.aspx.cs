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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           SqlCommand RegisterCommand = new SqlCommand("Insert into TUser (UserMail, UserPssword) values (@pmail,@ppass)", SqlConnectionClass.connection);
            SqlConnectionClass.Checkconnection();
            string newPass = SHA256Converter.ComputeSha256Hash(tboxPassword.Text);
            RegisterCommand.Parameters.AddWithValue("@pmail", tboxMail.Text);
            RegisterCommand.Parameters.AddWithValue("@ppass", newPass);
            RegisterCommand.ExecuteNonQuery();
        }
    }
}