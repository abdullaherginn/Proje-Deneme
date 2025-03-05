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
        protected void Page_PreInit(object sender, EventArgs e)
        {
            // Giriş yapılmış mı kontrol et
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                // Kullanıcı giriş yaptıysa LayoutOnline.master sayfasını kullan
                this.MasterPageFile = "~/LayoutOnline.Master";
            }
            else
            {
                // Kullanıcı giriş yapmadıysa Layout.Master sayfasını kullan
                this.MasterPageFile = "~/Layout.Master";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("Select * From TableCar inner join TableBrand on TableCar.CarBrandId = TableBrand.BrandID where CarConfirmation=@pcon", SqlConnectionClass.connection);

            SqlConnectionClass.Checkconnection();
            commandList.Parameters.AddWithValue("@pcon", true);
            SqlDataReader dr = commandList.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            dr.Close();
        }
    }
}