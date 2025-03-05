using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Deneme
{
    public partial class Hakkimizda : System.Web.UI.Page
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

        }
    }
}