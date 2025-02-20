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
    public partial class AddCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                SqlCommand commandListBrands = new SqlCommand("Select * from TableBrand", SqlConnectionClass.connection);
                SqlConnectionClass.Checkconnection();
                SqlDataReader dr = commandListBrands.ExecuteReader();
                combobox.DataTextField = "BrandName";
                combobox.DataValueField = "BrandID";
                combobox.DataSource = dr;
                combobox.DataBind();
                dr.Close();
            }


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnEkle_Click(object sender, EventArgs e)
        {

        }
    }
}