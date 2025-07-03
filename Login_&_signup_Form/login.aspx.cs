using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Login___signup_Form
{
    public partial class login : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "SELECT * FROM login WHERE username = @user AND password = @pass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", UserTextBox.Text);
            cmd.Parameters.AddWithValue("@pass", PassTextBox.Text);
            con.Open();
            SqlDataReader dr= cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["user"] = UserTextBox.Text;
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Login Successful !!')</script>");
                Response.Redirect("index.aspx");
            }
            else
            {

                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Login Failed !!')</script>");

            }
            con.Close();

        }
    }
}