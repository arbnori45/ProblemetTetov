using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ProbTetov
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


      

        protected void BtnRegisterProb(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=localhost;Initial Catalog=Raporto-Fakultet;Integrated Security=True; database=Raporto-Fakultet");
            conn.Open();

           

            SqlCommand cmd = new SqlCommand("INSERT INTO Problems (Titulli,Permbajtja, Adresa, Longitude, Latitude) VALUES ('" + Titulli.Text + "','" + Permb.InnerText + "','" + adresa.Text + "','" + cityLatitude.Value + "','" + cityLat.Value + "');", conn);
            cmd.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            da.Fill(ds, "Problems");
           
            conn.Close();
        }
    }
}