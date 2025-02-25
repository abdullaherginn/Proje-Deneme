using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Deneme.Classes;
using System.Data;

namespace Deneme
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GirisYap(object sender, EventArgs e)
        {
            SqlCommand commandLogin = new SqlCommand("select * from TUser where UserMail=@pmail and UserPssword=@ppass", SqlConnectionClass.connection);

            string shaPass = SHA256Converter.ComputeSha256Hash(tboxPassword.Text);

            SqlConnectionClass.Checkconnection();
            commandLogin.Parameters.AddWithValue("@pmail", tboxMail.Text);
            commandLogin.Parameters.AddWithValue("@ppass", shaPass);

            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(commandLogin);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("Giriş Yapıldı");
            }
            else {
                Response.Write("Şifre Yada Kullanıcı Adı Hatalı!");

            } 
        }
    }
}