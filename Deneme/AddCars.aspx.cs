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
            SqlCommand commandAdd = new SqlCommand("Insert into TableCar (CarModel, CarBrandID, CarFuelType,CarDescription,CarContact,CarSeller, CarPhoto, CarPrice) values (@pmodel, @pbrand, @pfuel, @pdes, @pcontact, @pseller,@pphoto,@pprice)", SqlConnectionClass.connection);

            commandAdd.Parameters.AddWithValue("@pmodel",TextModel.Text);
            commandAdd.Parameters.AddWithValue("@pbrand", Convert.ToInt32(combobox.SelectedValue));
            commandAdd.Parameters.AddWithValue("@pfuel",TextYakit.Text);
            commandAdd.Parameters.AddWithValue("@pdes",TextDescription.Text);
            commandAdd.Parameters.AddWithValue("@pcontact",Textİletisim.Text);
            commandAdd.Parameters.AddWithValue("@pseller", TextSatici.Text);
            commandAdd.Parameters.AddWithValue("@pphoto",TextFoto.Text);
            commandAdd.Parameters.AddWithValue("@pprice",TextFiyat.Text);

            commandAdd.ExecuteNonQuery();
        }
    }
}