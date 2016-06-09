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
    public partial class Registration_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=localhost;Initial Catalog=Raporto-Fakultet;Integrated Security=True; database=Raporto-Fakultet");
            conn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Users (Emri, Mbiemri, email, Adresa, Username, Password) VALUES ('" + FirstName.Text + "','" + Lastname.Text + "','" + Email.Text + "','" + Address.Text + "','" + Username.Text + "','" + Password.Text + "');", conn);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();
            da.Fill(ds, "Users");      
            conn.Close();

            FirstName.Text = "";
            Lastname.Text = "";
            Email.Text = "";
            Address.Text = "";
            Username.Text = "";
            Password.Text = "";
        }

    }
}
