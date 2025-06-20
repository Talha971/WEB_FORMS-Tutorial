using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace State_Management.Application_State
{
    public partial class app_state3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Application["user"] != null)
            {
                Response.Write("Welcome" + Application["user"].ToString());
            }
            else
            {
                Response.Redirect("app_state1.aspx");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Application["user"] != null)
            {
                Application["user"] = null; // Clear the session variable
                Response.Redirect("app_state1.aspx"); // Redirect to the first page
            }

        }
    }
}